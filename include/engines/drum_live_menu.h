#pragma once

#include "global.h"
#include "engines.h"

#include "games/drum_live/graphics/drum_live_menu_graphics.h"

// Engine Macros/Enums:
enum DrumLiveMenuPostersEnum {
    POSTER_DRUM_GIRLS_LIVE,
    POSTER_DRUM_BOYS_LIVE,
    POSTER_DRUM_SAMURAI_BAND_LIVE
};


// Engine Types:
struct DrumLiveMenuEngineData {
    u8 pad[0x1c];
};

struct DrumLiveMenuCue {
    /* add fields here */
};


// Engine Definition Data:
extern struct CompressedData *drum_live_menu_buffered_textures[];
extern struct GraphicsTable drum_live_menu_gfx_table[];
extern const char *drum_live_menu_poster_desc[];


// Functions:
extern void drum_live_menu_init_gfx3(void); // Graphics Init. 3
extern void drum_live_menu_init_gfx2(void); // Graphics Init. 2
extern void drum_live_menu_init_gfx1(void); // Graphics Init. 1
extern void drum_live_menu_engine_start(u32 version); // Game Engine Start
extern void drum_live_menu_engine_event_stub(void); // Engine Event 01 (STUB)
// extern ? func_08036e10(?);
// extern ? func_08036e28(?);
// extern ? func_08036ec8(?);
// extern ? func_08036f18(?);
extern void func_08036f94(); // Engine Event 00 (?)
// extern ? func_08036fac(?);
// extern ? func_08036ff4(?);
extern void drum_live_menu_engine_update(void); // Game Engine Update
extern void drum_live_menu_engine_stop(void); // Game Engine Stop
extern void drum_live_menu_cue_spawn(struct Cue *cue, struct DrumLiveMenuCue *); // Cue - Spawn
extern u32  drum_live_menu_cue_update(struct Cue *cue, struct DrumLiveMenuCue *, u32 runningTime, u32 duration); // Cue - Update
extern void drum_live_menu_cue_despawn(struct Cue *cue, struct DrumLiveMenuCue *); // Cue - Despawn
extern void drum_live_menu_cue_hit(struct Cue *cue, struct DrumLiveMenuCue *, u32 pressed, u32 released); // Cue - Hit
extern void drum_live_menu_cue_barely(struct Cue *cue, struct DrumLiveMenuCue *, u32 pressed, u32 released); // Cue - Barely
extern void drum_live_menu_cue_miss(struct Cue *cue, struct DrumLiveMenuCue *); // Cue - Miss
extern void drum_live_menu_input_event(u32 pressed, u32 released); // Input Event
extern void drum_live_menu_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void drum_live_menu_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void drum_live_menu_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
