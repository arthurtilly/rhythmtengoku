#pragma once

#include "global.h"
#include "engines.h"

#include "games/staff_credit/graphics/staff_credit_graphics.h"

// Engine Types:
struct StaffCreditEngineData {
    u8 pad[0x80];
};

struct StaffCreditCue {
};

struct CreditsTextStartPos {
    u8 anchor;
    u16 xPos;
};


// Engine Definition Data:
extern struct CompressedGraphics *staff_credit_buffered_textures[];
extern struct GraphicsTable staff_credit_gfx_table[];
extern struct CreditsTextStartPos D_089df628[];


// Functions:
extern void staff_credit_init_gfx3(void); // Graphics Init. 3
extern void staff_credit_init_gfx2(void); // Graphics Init. 2
extern void staff_credit_init_gfx1(void); // Graphics Init. 1
extern void staff_credit_engine_start(u32 version); // Game Engine Start
extern void staff_credit_engine_event_stub(); // Engine Event 0x04 (STUB)
// extern ? func_08023694(?);
// extern ? func_080236e4(?);
extern void func_0802372c(); // Engine Event 0x00 (?)
extern void func_080237ec(); // Engine Event 0x01 (?)
extern void func_080237f8(); // Engine Event 0x02 (?)
// extern ? func_08023808(?);
extern void func_08023898(); // Engine Event 0x03 (?)
// extern ? func_080238ac(?);
// extern ? func_080238c0(?);
extern void staff_credit_engine_update(void); // Game Engine Update
extern void staff_credit_engine_stop(void); // Game Engine Stop
extern void staff_credit_cue_spawn(struct Cue *, struct StaffCreditCue *, u32 arg); // Cue - Spawn
extern u32  staff_credit_cue_update(struct Cue *, struct StaffCreditCue *, u32 runningTime, u32 released); // Cue - Update
extern void staff_credit_cue_despawn(struct Cue *, struct StaffCreditCue *); // Cue - Despawn
extern void staff_credit_cue_hit(struct Cue *, struct StaffCreditCue *, u32 pressed, u32 released); // Cue - Hit
extern void staff_credit_cue_barely(struct Cue *, struct StaffCreditCue *, u32 pressed, u32 released); // Cue - Barely
extern void staff_credit_cue_miss(struct Cue *, struct StaffCreditCue *); // Cue - Miss
extern void staff_credit_input_event(u32 pressed, u32 released); // Input Event
extern void staff_credit_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void staff_credit_common_display_text(void); // Common Event 1 (Display Text)
extern void staff_credit_common_init_tutorial(void); // Common Event 2 (Init. Tutorial)
