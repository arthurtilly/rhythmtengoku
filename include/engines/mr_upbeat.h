#pragma once

#include "global.h"
#include "engines.h"

// shared?
#include "games/metronome/graphics/metronome_graphics.h"

// Engine Types:
struct MrUpbeatEngineData {
    u8 version;
    struct MrUpbeat {
        s16 sprite;
        s16 shadow;
        u8 nextSide;
        u8 side;
        u16 unused;
        u8 tripAnim;
    } mrUpbeat;
    struct Metronome {
        struct AffineSprite *sprite;
        u32 unused;
        u32 rotationStart;
        u32 rotationGoal;
        u32 rotation;
        u32 rotationFrames;
        u32 rotationMaxFrames;
        u32 beepFrames;
        u8 direction;
        u8 stopped;
    } metronome;
    s16 sprite; // 34
    u32 gameOverScript; // 38
    s32 fadeOutTask; // 3c
    s16 scoreCounterSprite;
    s16 scoreNumberSprites[3];
    s16 highscoreNumberSprites[3];
    u16 score; // 4c
    u16 highscore; // 4e
    u8 isHighscore;
};
struct MrUpbeatCue {
    /* add fields here */
};


// Engine Data:
extern const char D_0805a674[];
extern const char D_0805a684[];


// Engine Definition Data:
extern struct Animation *mr_upbeat_trip_anim[];
extern struct Animation *mr_upbeat_game_over_anim[][4];
extern struct CompressedData *mr_upbeat_buffered_textures[];
extern struct GraphicsTable mr_upbeat_gfx_table[];


// Functions:
extern void mr_upbeat_init_score_counter(void); // Init. Score Counter
extern void mr_upbeat_update_score_counter(void); // Update Score Counter Sprites
extern void func_08034d6c(); // Engine Event 0x03 (Increment Score)
extern void func_08034db0(); // Engine Event 0x04 (Save Highscore)
extern void mr_upbeat_init_metronome(void); // Init. Metronome
extern void mr_upbeat_fade_light(void); // Fade Mr Upbeat's Light
extern void func_08034e84(u32 unk); // Engine Event 0x02 (Mr. Upbeat Beep)
extern void mr_upbeat_update_metronome(void); // Update Metronome
extern void func_08034f18(u32 ticks); // Engine Event 0x00 (Swap Metronome Direction)
extern void mr_upbeat_init_mr_upbeat(void); // Init. Mr Upbeat
extern void mr_upbeat_step(void); // Mr. Upbeat Step
extern void mr_upbeat_trip(u32 arg0); // Mr. Upbeat Trip 
extern void mr_upbeat_update_stub(void); // Stub Update Function
extern void func_0803516c(); // Engine Event 0x05 (Play Game Over Jingle)
extern void mr_upbeat_init_gfx3(void); // Graphics Init. 3
extern void mr_upbeat_init_gfx2(void); // Graphics Init. 2
extern void mr_upbeat_init_gfx1(void); // Graphics Init. 1
extern void mr_upbeat_engine_start(u32 version); // Game Engine Start
extern void mr_upbeat_engine_event_stub(void); // Engine Event 0x06 (STUB)
extern void func_08035314(u32 arg0); // Engine Event 0x01 (Set Game Over Script)
extern void mr_upbeat_engine_update(void); // Game Engine Update
extern void mr_upbeat_engine_stop(void); // Game Engine Stop
extern void mr_upbeat_cue_spawn(void); // Cue - Spawn
extern u32  mr_upbeat_cue_update(struct Cue *, struct MrUpbeatCue *, u32 runningTime); // Cue - Update
extern void mr_upbeat_cue_despawn(void); // Cue - Despawn
extern u32  is_mr_upbeat_tripped(void); // Check if Mr. Upbeat is tripped
extern void mr_upbeat_cue_hit(struct Cue *, struct MrUpbeatCue *, u32 pressed, u32 released); // Cue - Hit
extern void mr_upbeat_cue_barely(struct Cue *, struct MrUpbeatCue *, u32 pressed, u32 released); // Cue - Barely
extern void mr_upbeat_cue_miss(void); // Cue - Miss
extern void mr_upbeat_input_event(void); // Input Event
extern void mr_upbeat_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void mr_upbeat_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void mr_upbeat_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
