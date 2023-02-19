#pragma once

#include "global.h"
#include "engines.h"

#include "games/concert_hall/graphics/concert_hall_graphics.h"

// Engine Types:
struct ConcertHallInfo {
    /* add fields here */
};

struct ConcertHallCue {
    /* add fields here */
};


// Engine Macros/Enums:
enum ConcertHallPostersEnum {
    POSTER_DRUM_GIRLS_LIVE,
    POSTER_DRUM_BOYS_LIVE,
    POSTER_DRUM_SAMURAI_BAND_LIVE
};


// Engine Definition Data:
extern struct CompressedGraphics *concert_hall_buffered_textures[];
extern struct GraphicsTable concert_hall_gfx_table[];
extern const char *concert_hall_poster_desc[];


// Functions:
extern void concert_hall_init_gfx3(void); // Graphics Init. 3
extern void concert_hall_init_gfx2(void); // Graphics Init. 2
extern void concert_hall_init_gfx1(void); // Graphics Init. 1
extern void concert_hall_engine_start(u32 version); // Game Engine Start
extern void concert_hall_engine_event_stub(void); // Engine Event 01 (STUB)
// extern ? func_08036e10(?);
// extern ? func_08036e28(?);
// extern ? func_08036ec8(?);
// extern ? func_08036f18(?);
extern void func_08036f94(); // Engine Event 00 (?)
// extern ? func_08036fac(?);
// extern ? func_08036ff4(?);
extern void concert_hall_engine_update(void); // Game Engine Update
extern void concert_hall_engine_stop(void); // Game Engine Stop
extern void concert_hall_cue_spawn(struct Cue *cue, struct ConcertHallCue *); // Cue - Spawn
extern u32  concert_hall_cue_update(struct Cue *cue, struct ConcertHallCue *, u32 runningTime, u32 duration); // Cue - Update
extern void concert_hall_cue_despawn(struct Cue *cue, struct ConcertHallCue *); // Cue - Despawn
extern void concert_hall_cue_hit(struct Cue *cue, struct ConcertHallCue *, u32 pressed, u32 released); // Cue - Hit
extern void concert_hall_cue_barely(struct Cue *cue, struct ConcertHallCue *, u32 pressed, u32 released); // Cue - Barely
extern void concert_hall_cue_miss(struct Cue *cue, struct ConcertHallCue *); // Cue - Miss
extern void concert_hall_input_event(u32 pressed, u32 released); // Input Event
extern void concert_hall_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void concert_hall_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void concert_hall_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
