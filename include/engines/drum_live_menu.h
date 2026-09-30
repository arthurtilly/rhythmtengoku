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
    u8 version;
    struct TextPrinter *printer;
    u8 currentSelection;
    u8 sceneFrozen;
    u16 inputTimer;
    s32 bgOffset;
    u32 bgOffsetGoal;
    u16 otherSpritesOffset;
    s16 arrowUpSprite;
    s16 arrowDownSprite; 
    s16 startSprite;
};

struct DrumLiveMenuCue {
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
extern void drum_live_menu_set_description_text(u32 arg0); // Set Description Text
extern void drum_live_menu_handle_navigation(void); // Handle Menu Navigation
extern void drum_live_update_poster_position(void); // Update Poster Position
extern void drum_live_menu_update_input_timer(void); // Update Input Timer
extern void func_08036f94(void); // Engine Event 00 (Freeze Beatscript Scene)
extern void drum_live_menu_handle_selection(void); // Handle Menu Selection
extern void drum_live_menu_handle_exit(void); // Handle Menu Exit
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
