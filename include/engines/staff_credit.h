#pragma once

#include "global.h"
#include "engines.h"

#include "games/staff_credit/graphics/staff_credit_graphics.h"

#define STAFF_CREDIT_TEXT_AMOUNT 14

// Engine Types:
struct StaffCreditEngineData {
    u8 version;
    u8 currentText;
    u8 textAlignment;
    struct CreditsText {
        s16 sprite;
        s16 x;
        s16 y;
    } creditsText[STAFF_CREDIT_TEXT_AMOUNT];
    u8 scrollText;
    u8 scrollTimer;
    s16 bgBrightness;
    s16 brightnessMod;
    u32 gfxTable;
};

struct StaffCreditCue {
};

struct CreditsTextStartPos {
    u8 anchor;
    u16 xPos;
};


// Engine Definition Data:
extern struct CompressedData *staff_credit_buffered_textures[];
extern struct GraphicsTable staff_credit_gfx_table[];
extern struct CreditsTextStartPos staff_credit_text_positions[];


// Functions:
extern void staff_credit_init_gfx3(void); // Graphics Init. 3
extern void staff_credit_init_gfx2(void); // Graphics Init. 2
extern void staff_credit_init_gfx1(void); // Graphics Init. 1
extern void staff_credit_engine_start(u8 version); // Game Engine Start
extern void staff_credit_engine_event_stub(); // Engine Event 0x04 (STUB)
extern void staff_credit_initialize_text(void); // Init. Text Structs
extern void staff_credit_clear_text(u32 index); // Clear Text Sprite
extern void staff_credit_print_text(const char *string); // Engine Event 0x00 (Print Scrolling Text)
extern void staff_credit_set_text_alignment(u8 alignment); // Engine Event 0x01 (Set Text Alignment)
extern void staff_credit_set_text_scroll(u8 enabled); // Engine Event 0x02 (Set Text Scrolling)
extern void staff_credit_update_text_scroll(void); // Update Text Scroll
extern void staff_credit_set_bg(); // Engine Event 0x03 (Set Background)
extern void staff_credit_bg_fade_in(void); // Background Fade In
extern void staff_credit_update_bg_brightness(void); // Update Background Brightness
extern void staff_credit_engine_update(void); // Game Engine Update
extern void staff_credit_engine_stop(void); // Game Engine Stop
extern void staff_credit_cue_spawn(struct Cue *, struct StaffCreditCue *, u32 arg); // Cue - Spawn
extern u32  staff_credit_cue_update(struct Cue *, struct StaffCreditCue *, u32 runningTime, u32 released); // Cue - Update
extern void staff_credit_cue_despawn(struct Cue *, struct StaffCreditCue *); // Cue - Despawn
extern void staff_credit_cue_hit(struct Cue *, struct StaffCreditCue *, u32 pressed, u32 released); // Cue - Hit
extern void staff_credit_cue_barely(struct Cue *, struct StaffCreditCue *, u32 pressed, u32 released); // Cue - Barely
extern void staff_credit_cue_miss(struct Cue *, struct StaffCreditCue *); // Cue - Miss
extern void staff_credit_input_event(u32 pressed, u32 released); // Input Event
extern void staff_credit_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void staff_credit_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void staff_credit_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
