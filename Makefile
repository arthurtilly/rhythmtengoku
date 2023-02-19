#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITARM)),)
    $(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

ifeq (,$(wildcard baserom.gba))
    $(error No ROM provided. Please place an unmodified ROM named "baserom.gba" in the root folder)
endif

ifneq ($(shell sha1sum -t baserom.gba), 67f8adacff79c15d028fffd90de3a77d9ad0602d  baserom.gba)
    $(error Provided ROM is not correct)
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

# Colors
NO_COL  := \033[0m
GREEN   := \033[0;32m
BLUE    := \033[0;34m
YELLOW  := \033[0;33m

# Generic print function for make rules
define print
  $(V)echo "$(GREEN)$(1) $(YELLOW)$(2)$(GREEN) -> $(BLUE)$(3)$(NO_COL)"
endef

#---------------------------------------------------------------------------------

TARGET		   := rhythmtengoku
BUILD		   := build
SOURCES		   := src
ASM            := asm
INCLUDES	   := include
TEXT           := text
DATA		   := data
SCENE_DATA     := $(shell find $(DATA)/scenes -type d)
PROLOGUE_DATA  := $(shell find $(DATA)/prologues -type d)
GAME_DATA	   := $(shell find games -type d)
LEVEL_DATA     := $(DATA)/levels
BIN		       := bin
AUDIO		   := audio
MUSIC		   := $(AUDIO)/sequences
SFX            := $(AUDIO)/samples
GRAPHICS       := $(shell find graphics -type d)

C_DIRS		   := $(SOURCES) $(SOURCES)/scenes $(SOURCES)/engines $(SOURCES)/prologues \
                  $(AUDIO) $(GRAPHICS) $(TEXT) \
				  $(DATA) $(SCENE_DATA) $(PROLOGUE_DATA) $(LEVEL_DATA) $(GAME_DATA)

ASM_DIRS       := $(ASM) $(DATA) $(SCENE_DATA) $(PROLOGUE_DATA) $(LEVEL_DATA) $(TEXT)
BS_DIRS        := $(GAME_DATA)

ALL_DIRS       := $(BIN) $(ASM_DIRS) $(C_DIRS) $(MUSIC) $(SFX)
ALL_DIRS       := $(sort $(ALL_DIRS)) # remove duplicates
BUILD_DIRS     := $(BUILD) $(addprefix $(BUILD)/,$(ALL_DIRS))

LD_SCRIPT      := rt.ld
UNDEFINED_SYMS := undefined_syms.ld

#---------------------------------------------------------------------------------

export OUTPUT	:=	$(BUILD)/$(TARGET)

CFILES		:=	$(foreach dir,$(C_DIRS),$(wildcard $(dir)/*.c))
SFILES		:=	$(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s)) $(foreach dir,$(BS_DIRS),$(wildcard $(dir)/*.bs))
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
	$(V)echo "$(GREEN)Creating build directory: $(YELLOW)$@$(NO_COL)"
	$(V)mkdir -p $@

$(OUTPUT).gba	:	$(OUTPUT).elf
	$(V)$(OBJCOPY) --pad-to=0x1000000 --gap-fill=0x00 -O binary $< $@
	$(V)echo "ROM Assembled!"

$(OUTPUT).elf	:	$(OFILES)
	$(V)echo "Building ROM..."
	$(V)$(LD) $(OFILES) tools/agbcc/lib/libgcc.a tools/agbcc/lib/libc.a -T $(LD_SCRIPT) -T $(UNDEFINED_SYMS) -Wl,--no-warn-rwx-segments,-Map $(@:.elf=.map) -nostartfiles -o $@


# Binary data
$(BUILD)/%.bin.o	$(BUILD)/%.bin.h :	%.bin | $(BUILD_DIRS)
	$(call print,Copying binary file:,$<,$@)
	$(V)bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o

# MIDI files
$(BUILD)/%.mid.o	$(BUILD)/%.mid.h :	%.mid | $(BUILD_DIRS)
	$(call print,Copying MIDI file:,$<,$@)
	$(V)bin2s -a 4 -H $(BUILD)/$<.h $< | $(AS) -o $(BUILD)/$<.o

# WAV files
$(BUILD)/%.pcm.o	$(BUILD)/%.pcm.h : %.wav | $(BUILD_DIRS)
	$(call print,Converting WAV file to raw PCM audio:,$<,$@)
	$(V)ffmpeg -y -loglevel quiet -i $< -f s8 $(basename $@)
	$(V)bin2s -a 4 -H $(basename $@).h $(basename $@) | $(AS) -o $@
    
define build_c_file
	$(call print,Compiling:,$<,$@)
	$(V)$(CPP) -MMD -MF $(BUILD)/$*.d -MT $@ $(CPPFLAGS) $< -o $(BUILD)/$*.i
	$(V)$(CC1) $(CFLAGS) $(BUILD)/$*.i -o $(BUILD)/$*.s
	$(V)printf ".text\n\t.align\t2, 0\n" >> $(BUILD)/$*.s
	$(V)$(AS) -march=armv4t -o $@ $(BUILD)/$*.s
endef

# Autogenerated C files
$(BUILD)/%.json.c : %.json $(WAVFILES) | $(BUILD_DIRS)
	$(call print,Generating data table from JSON:,$<,$@)
	$(V)python3 tools/sample_parser.py $< $@

$(OFILES_JSON): $(BUILD)/%.c.o : $(BUILD)/%.c | $(BUILD_DIRS)
	$(call build_c_file)
	
# C files
$(BUILD)/%.c.o : %.c | $(BUILD_DIRS)
	$(call build_c_file)

# ASM files
$(BUILD)/%.s.o : %.s | $(BUILD_DIRS)
	$(call print,Assembling:,$<,$@)
	$(V)$(AS) -MD $(BUILD)/$*.d -march=armv4t -o $@ $<

# Beatscript
$(BUILD)/%.bs.o : %.bs | $(BUILD_DIRS)
	$(call print,Assembling Beatscript:,$<,$@)
	$(V)$(AS) -MD $(BUILD)/$*.d -march=armv4t -o $@ $<

-include $(addprefix $(BUILD)/,$(CFILES:.c=.d))

#---------------------------------------------------------------------------------------

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
