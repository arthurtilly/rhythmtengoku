#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

CPP := $(CC) -E
CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -I . -iquote include -nostdinc -undef

include $(DEVKITARM)/base_rules

#include $(DEVKITARM)/gba_rules
CROSS := arm-none-eabi-
OBJCOPY := $(CROSS)objcopy
LD := $(CROSS)gcc
AS := $(CROSS)as
CC1 := tools/agbcc/bin/agbcc
CFLAGS := -mthumb-interwork -Wparentheses -O2 -fhex-asm

# Verbose toggle
V := @
ifeq (VERBOSE, 1)
	V=
endif

#---------------------------------------------------------------------------------
# TARGET is the name of the output
# BUILD is the directory where object files & intermediate files will be placed
# SOURCES is a list of directories containing source code
# INCLUDES is a list of directories containing extra header files
# DATA is a list of directories containing binary data
# GRAPHICS is a list of directories containing files to be processed by grit
#
# All directories are specified relative to the project directory where
# the makefile is found
#
#---------------------------------------------------------------------------------
TARGET		   := rhythmtengoku
BUILD		   := build
SOURCES		   := src
ENGINES        := $(SOURCES)/engines
ASM            := asm
INCLUDES	   := include
DATA		   := data
BIN		       := bin
AUDIO		   := audio
MUSIC		   := $(AUDIO)/sequences
SFX            := $(AUDIO)/samples
GRAPHICS       := $(shell find graphics -type d)
BUILD_DIRS     := $(BUILD) $(BUILD)/$(DATA) $(BUILD)/$(ASM) $(BUILD)/$(SOURCES) $(BUILD)/$(ENGINES) $(BUILD)/$(BIN) $(BUILD)/$(MUSIC) $(BUILD)/$(SFX) $(foreach dir,$(GRAPHICS),$(BUILD)/$(dir))
LD_SCRIPT      := rt.ld
UNDEFINED_SYMS := undefined_syms.ld

#---------------------------------------------------------------------------------
# options for code generation
#---------------------------------------------------------------------------------
#ARCH	:=	-mthumb -mthumb-interwork
#
#CFLAGS	:=	-g -Wall -O2\
#		-mcpu=arm7tdmi -mtune=arm7tdmi\
#		$(ARCH)
#
#CFLAGS	+=	$(INCLUDE)
#
#CXXFLAGS	:=	$(CFLAGS) -fno-rtti -fno-exceptions
#
#ASFLAGS	:=	-g $(ARCH)
#LDFLAGS	=	-g $(ARCH) -Wl,-Map,$(notdir $*.map)

#---------------------------------------------------------------------------------
# any extra libraries we wish to link with the project
#---------------------------------------------------------------------------------
#LIBS	:= -lmm -lgba


#---------------------------------------------------------------------------------
# list of directories containing libraries, this must be the top level containing
# include and lib
#---------------------------------------------------------------------------------
# LIBDIRS	:=	$(LIBGBA)

#---------------------------------------------------------------------------------
# no real need to edit anything past this point unless you need to add additional
# rules for different file extensions
#---------------------------------------------------------------------------------


#ifneq ($(BUILD),$(notdir $(CURDIR)))
#---------------------------------------------------------------------------------

export OUTPUT	:=	$(BUILD)/$(TARGET)

CFILES		:=	$(foreach dir,$(GRAPHICS),$(wildcard $(dir)/*.c)) $(foreach dir,$(SOURCES),$(wildcard $(dir)/*.c)) $(foreach dir,$(ENGINES),$(wildcard $(dir)/*.c)) $(foreach dir,$(AUDIO),$(wildcard $(dir)/*.c)) $(foreach dir,$(DATA),$(wildcard $(dir)/*.c))
CPPFILES	:=	$(foreach dir,$(SOURCES),$(wildcard $(dir)/*.cpp)) $(foreach dir,$(ENGINES),$(wildcard $(dir)/*.cpp))
SFILES		:=	$(foreach dir,$(ASM),$(wildcard $(dir)/*.s)) $(foreach dir,$(DATA),$(wildcard $(dir)/*.s))
BINFILES	:=	$(foreach dir,$(BIN),$(wildcard $(dir)/*.bin)) $(foreach dir,$(MUSIC),$(wildcard $(dir)/*.mid)) $(foreach dir,$(GRAPHICS),$(wildcard $(dir)/*.bin))
WAVFILES    :=  $(foreach dir,$(SFX),$(wildcard $(dir)/*.wav))
JSONFILES   :=  $(foreach dir,$(AUDIO),$(wildcard $(dir)/*.json))

CFILES := $(filter-out %.inc.c, $(CFILES))

export OFILES_JSON := $(addprefix $(BUILD)/,$(JSONFILES:.json=.json.c.o))

export OFILES_BIN := $(addprefix $(BUILD)/,$(addsuffix .o,$(BINFILES))) $(addprefix $(BUILD)/,$(WAVFILES:.wav=.pcm.o))

export OFILES_SOURCES := $(addprefix $(BUILD)/,$(addsuffix .o,$(SFILES))) $(addprefix $(BUILD)/,$(addsuffix .o,$(CFILES)))

export OFILES := $(OFILES_BIN) $(OFILES_SOURCES) $(OFILES_JSON)

export INCLUDE	:=	-I $(foreach dir,$(INCLUDES),$(wildcard $(dir)/*.h)) \
					-I $(foreach dir,$(LIBDIRS),-I $(dir)/include) \
					-I $(CURDIR)/$(BUILD)

#export LIBPATHS	:=	$(foreach dir,$(LIBDIRS),-L$(dir)/lib)

ifeq (,$(wildcard baserom.gba))
    $(error No ROM provided. Please place an unmodified ROM named "baserom.gba" in the root folder)
endif

ifneq ($(shell sha1sum -t baserom.gba), 67f8adacff79c15d028fffd90de3a77d9ad0602d  baserom.gba)
    $(error Provided ROM is not correct)
endif

.PHONY: default clean rebuild
.SECONDARY:

#---------------------------------------------------------------------------------
default: $(OUTPUT).gba
	$(V)diff baserom.gba $(OUTPUT).gba && (echo "$(TARGET).gba: OK") || (echo "The build succeeded, but did not match the official ROM.")

#---------------------------------------------------------------------------------
clean:
	$(V)echo clean ...
	$(V)rm -fr $(filter-out build/audio, $(wildcard build/*))
	$(V)rm -fr $(filter-out build/audio/samples build/audio/sequences, $(wildcard build/audio/*))
    
fullclean:
	$(V)echo full clean ...
	$(V)rm -fr $(BUILD)

#---------------------------------------------------------------------------------
rebuild: clean default

#---------------------------------------------------------------------------------


#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------

$(BUILD_DIRS):
	$(V)echo "Creating /$@"
	$(V)mkdir -p $@

$(OUTPUT).gba	:	$(OUTPUT).elf
	$(V)$(OBJCOPY) --pad-to=0x1000000 --gap-fill=0x00 -O binary $< $@
	$(V)echo "ROM Assembled!"

$(OUTPUT).elf	:	$(OFILES)
	$(V)echo "Building ROM..."
	$(V)$(LD) $(OFILES) tools/agbcc/lib/libgcc.a tools/agbcc/lib/libc.a -T $(LD_SCRIPT) -T $(UNDEFINED_SYMS) -Wl,-Map $(@:.elf=.map) -nostartfiles -o $@


# Binary data
$(BUILD)/%.bin.o	$(BUILD)/%.bin.h :	%.bin | $(BUILD_DIRS)
	$(V)echo "Copying $< to $<.o"
	$(V)bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o

# MIDI files
$(BUILD)/%.mid.o	$(BUILD)/%.mid.h :	%.mid | $(BUILD_DIRS)
	$(V)echo "Copying $<"
	$(V)bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o

# WAV files
$(BUILD)/%.pcm.o	$(BUILD)/%.pcm.h :	$(BUILD)/%.pcm | $(BUILD_DIRS)
	$(V)bin2s -a 4 -H $<.h $< | $(AS) -o $<.o

$(BUILD)/%.pcm : %.wav | $(BUILD_DIRS)
	$(V)echo "Converting $< to raw PCM audio"
	$(V)ffmpeg -y -loglevel quiet -i $< -f s8 $@
    
define build_c_file
	$(V)echo "Compiling $< to $@"
	$(V)$(CPP) -MMD -MF $(BUILD)/$*.d -MT $@ $(CPPFLAGS) $< -o $(BUILD)/$*.i
	$(V)$(CC1) $(CFLAGS) $(BUILD)/$*.i -o $(BUILD)/$*.s
	$(V)printf ".text\n\t.align\t2, 0\n" >> $(BUILD)/$*.s
	$(V)$(AS) -march=armv4t -o $@ $(BUILD)/$*.s
endef

# Autogenerated C files
$(BUILD)/%.json.c : %.json $(WAVFILES) | $(BUILD_DIRS)
	$(V)echo "Generating data table $@ from JSON data $<"
	$(V)python3 tools/sample_parser.py $< $@

$(OFILES_JSON): $(BUILD)/%.c.o : $(BUILD)/%.c | $(BUILD_DIRS)
	$(call build_c_file)
	
# C files
$(BUILD)/%.c.o : %.c | $(BUILD_DIRS)
	$(call build_c_file)

# ASM files
$(BUILD)/%.s.o : %.s | $(BUILD_DIRS)
	$(V)echo "Assembling $< to $(basename $<).o"
	$(V)$(AS) -MD $(BUILD)/$*.d -march=armv4t -o $@ $<

-include $(addprefix $(BUILD)/,$(CFILES:.c=.d))
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
