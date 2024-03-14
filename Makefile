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

SHELL := /bin/bash

CPP := $(CC) -E
CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -I . -iquote include -nostdinc -undef

include $(DEVKITARM)/base_rules

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
  $(V)echo -e "$(GREEN)$(1) $(YELLOW)$(2)$(GREEN) -> $(BLUE)$(3)$(NO_COL)"
endef

# Whether to build a byte-for-byte matching ROM
NONMATCHING ?= 0

#---------------------------------------------------------------------------------

TARGET		   := rhythmtengoku
BUILD		   := build
SOURCES		   := src $(shell find src -type d)
ASM            := asm
INCLUDES	   := include
BIN		       := bin
DATA		   := data
SCENE_DATA     := $(shell find $(DATA)/scenes -type d)
LEVEL_DATA     := $(DATA)/levels
GAMES          := games
GAME_DATA	   := $(shell find $(GAMES) -type d)
GRAPHICS       := $(shell find graphics -type d) $(shell find $(GAMES) -type d -name "graphics")
AUDIO		   := audio
MUSIC		   := $(AUDIO)/sequences
SFX            := $(AUDIO)/samples

C_DIRS		   := $(SOURCES) $(AUDIO) $(GRAPHICS) $(DATA) $(SCENE_DATA) $(LEVEL_DATA) $(GAME_DATA)
C_DIRS         := $(sort $(C_DIRS)) # remove duplicates

ASM_DIRS       := $(ASM) $(DATA) $(SCENE_DATA) $(LEVEL_DATA)
BS_DIRS        := $(GAME_DATA) $(SCENE_DATA)

ALL_DIRS       := $(BIN) $(ASM_DIRS) $(C_DIRS) $(MUSIC) $(SFX)
ALL_DIRS       := $(sort $(ALL_DIRS)) # remove duplicates
BUILD_DIRS     := $(BUILD) $(addprefix $(BUILD)/,$(ALL_DIRS))

ifeq ($(NONMATCHING), 0)
	LD_SCRIPT := rt.ld
else
	LD_SCRIPT := rt_modern.ld
endif
UNDEFINED_SYMS := undefined_syms.ld

#---------------------------------------------------------------------------------

export OUTPUT	:=	$(BUILD)/$(TARGET)

CFILES		:=	$(foreach dir,$(C_DIRS),$(wildcard $(dir)/*.c))
SFILES		:=	$(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s)) $(foreach dir,$(BS_DIRS),$(wildcard $(dir)/*.bs))
BINFILES	:=	$(foreach dir,$(BIN),$(wildcard $(dir)/*.bin)) $(foreach dir,$(MUSIC),$(wildcard $(dir)/*.mid)) $(foreach dir,$(GRAPHICS),$(wildcard $(dir)/*.bin))
WAVFILES    :=  $(foreach dir,$(SFX),$(wildcard $(dir)/*.wav))
JSONFILES   :=  $(foreach dir,$(AUDIO),$(wildcard $(dir)/*.json))

CFILES := $(filter-out %.inc.c, $(CFILES))

PCMFILES    := $(addprefix $(BUILD)/,$(WAVFILES:.wav=.pcm))
OFILES_JSON := $(addprefix $(BUILD)/,$(JSONFILES:.json=.json.c.o))
OFILES_BIN  := $(addprefix $(BUILD)/,$(addsuffix .o,$(BINFILES)))
OFILES_SOURCES := $(addprefix $(BUILD)/,$(addsuffix .o,$(SFILES))) $(addprefix $(BUILD)/,$(addsuffix .o,$(CFILES)))

OFILES := $(OFILES_BIN) $(OFILES_SOURCES) $(OFILES_JSON)

INCLUDE	:=	-I $(foreach dir,$(INCLUDES),$(wildcard $(dir)/*.h)) \
			-I $(foreach dir,$(LIBDIRS),-I $(dir)/include) \
			-I $(CURDIR)/$(BUILD)

#---------------------------------------------------------------------------------
.PHONY: default clean distclean rebuild
.SECONDARY:
#---------------------------------------------------------------------------------

# If matching is 0, print a generic message
# otherwise check if the ROM matches the official ROM
default: $(OUTPUT).gba
	$(V)if [ "$(NONMATCHING)" = "1" ]; then \
		echo "Build succeeded!"; \
	else \
		diff baserom.gba $(OUTPUT).gba && (echo "$(TARGET).gba: OK") || (echo "The build succeeded, but did not match the official ROM."); \
	fi \

#---------------------------------------------------------------------------------

clean:
	$(V)echo clean ...
	$(V)rm -fr $(filter-out build/audio, $(wildcard build/*))
	$(V)rm -fr $(filter-out build/audio/samples build/audio/sequences, $(wildcard build/audio/*))

distclean:
	$(V)echo full clean ...
	$(V)rm -fr $(BUILD)

#---------------------------------------------------------------------------------

rebuild: clean default

#---------------------------------------------------------------------------------


#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------

$(BUILD_DIRS):
	$(V)echo -e "$(GREEN)Creating build directory: $(YELLOW)$@$(NO_COL)"
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
$(BUILD)/%.pcm : %.wav | $(BUILD_DIRS)
	$(call print,Converting WAV file to raw PCM audio:,$<,$@)
	$(V)ffmpeg -y -loglevel quiet -i $< -f s8 $@
    
define build_c_file
	$(call print,Compiling:,$<,$@)
	$(V)$(CPP) -MMD -MF $(BUILD)/$*.d -MT $@ $(CPPFLAGS) $< -o $(BUILD)/$*.i
	$(V)$(CC1) $(CFLAGS) $(BUILD)/$*.i -o $(BUILD)/$*.s
	$(V)printf ".text\n\t.align\t2, 0\n" >> $(BUILD)/$*.s
	$(V)$(AS) -march=armv4t -o $@ $(BUILD)/$*.s
endef

# Autogenerated C files
$(BUILD)/%.json.c : %.json $(PCMFILES) | $(BUILD_DIRS)
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
