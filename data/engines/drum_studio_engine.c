#include "engines/drumming_lessons.h"
#include "beatscript_notation.h"


  /* DRUM LESSONS - GAME ENGINE DATA */


extern const struct CompressedGraphics D_08c4fc44;
extern const struct CompressedGraphics D_08c51344;
extern const struct CompressedGraphics D_08c4efe4;
extern const struct CompressedGraphics D_08c515bc;
extern const struct CompressedGraphics D_08c4f5ac;
extern const struct CompressedGraphics D_08c50f54;
extern const struct CompressedGraphics D_08c510d4;
extern const struct CompressedGraphics D_08c50e04;

extern const Palette drum_lessons_bg_screen_pal[];
extern const Palette drum_lessons_obj_pal[];
extern const Palette drum_lessons_bg_pal[];

extern void func_080286f4(void);
extern void func_0802871c(void);
extern void func_08028744(void);


  //  //  //  DRUM KIT DATA  //  //  //


#include "drum_studio_kits.inc.c"

// [D_089e2988] ?
const DrumPlayFunc D_089e2988[] = {
    /* 0x00 */ NULL,
    /* 0x01 */ NULL,
    /* 0x02 */ NULL,
    /* 0x03 */ NULL,
    /* 0x04 */ NULL,
    /* 0x05 */ NULL,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ NULL,
    /* 0x09 */ func_080286f4,
    /* 0x0A */ func_0802871c,
    /* 0x0B */ NULL,
    /* 0x0C */ NULL,
    /* 0x0D */ NULL,
    /* 0x0E */ NULL,
    /* 0x0F */ func_08028744,
};

// [D_089e29c8] Drum Kits
const struct DrumKit *const drum_studio_kits[] = {
    /* 0x00 */ &D_089e201c,
    /* 0x01 */ &D_089e1cac,
    /* 0x02 */ &D_089e1d88,
    /* 0x03 */ &D_089e1e64,
    /* 0x04 */ &D_089e1f40,
    /* 0x05 */ &D_089e2960,
    /* 0x06 */ &D_089e20f8,
    /* 0x07 */ &D_089e21d4,
    /* 0x08 */ &D_089e22b0,
    /* 0x09 */ &D_089e238c,
    /* 0x0A */ &D_089e2468,
    /* 0x0B */ &D_089e260c,
    /* 0x0C */ &D_089e26d4,
    /* 0x0D */ &D_089e27d0,
    /* 0x0E */ &D_089e2898
};


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e2a04] Buffered Textures List
const struct CompressedGraphics *const drum_studio_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e2a08] Graphics Table (Studio Drumming)
const struct GraphicsTable drum_studio_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c4fc44,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c51344,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c4efe4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_lessons_bg_screen_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_lessons_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e2a50] Graphics Table (Drum Lessons)
const struct GraphicsTable drum_lessons_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c4fc44,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c515bc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08c4f5ac,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c50f54,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c510d4,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c50e04,
        /* Dest. */ OBJ_TILESET_BASE(0x5000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c4efe4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_lessons_bg_screen_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_lessons_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* BG Palette */ {
        /* Src.  */ drum_lessons_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x80
    },
    END_OF_GRAPHICS_TABLE
};


  //  //  //  CUE DATA  //  //  //


// [D_089e2ad4] ?
const struct BeatScript D_089e2ad4[] = {
    BSC_MUSIC_FADE_OUT(0x18, TRUE),
    BSC_FADE_PALETTE_FROM_COLOUR(0x0, TRUE, 0x0C),
    BSC_REST(0x18),
    BSC_STOP
};

// [D_089e2b04] ?
const struct BeatScript D_089e2b04[] = {
    BSC4_GAME_ENGINE_EVENT(&D_089e2ea0, 0x01, 0),
    BSC4_GAME_ENGINE_EVENT(&D_089e2ea0, 0x05, 0),
    BSC3_SET_TEMPO(140),
    BSC_REST(0x0C),
    BSC_BRANCH(D_089e2ad4)
};

// [D_089e2b58] ?
const struct Vector2 D_089e2b58[] = {
    /* 0x00 */ { 1, 2 },
    /* 0x01 */ { 0, 1 },
    /* 0x02 */ { 0, 0 },
    /* 0x03 */ { 0, 0 },
    /* 0x04 */ { 0, 0 },
    /* 0x05 */ { 0, 0 },
    /* 0x06 */ { 0, 0 },
    /* 0x07 */ { 0, 0 }
};

// [D_089e2b78] ?
const struct Vector2 D_089e2b78[] = {
    /* 0x00 */ { 0, 2 },
    /* 0x01 */ { 0, 1 },
    /* 0x02 */ { 0, 0 },
    /* 0x03 */ { 0, 0 },
    /* 0x04 */ { 0, 0 },
    /* 0x05 */ { 0, 0 },
    /* 0x06 */ { 0, 0 },
    /* 0x07 */ { 0, 0 }
};

// [D_089e2b98] ?
const struct SpritePlaybackData D_089e2b98[] = {
    /* 0x00 */ {
        /* anim */ anim_drum_student_head,
        /* unk4 */ 0x7f,
        /* unk5 */ 1,
        /* unk6 */ 0x7f,
    },
    /* 0x01 */ {
        /* anim */ anim_drum_student_happy,
        /* unk4 */ 0,
        /* unk5 */ 1,
        /* unk6 */ 0x7f,
    }
};

// [D_089e2ba8] Button Inputs for Cues
const u16 D_089e2ba8[] = {
    /* 0x00 */ DPAD_DOWN,
    /* 0x01 */ B_BUTTON,
    /* 0x02 */ DPAD_LEFT,
    /* 0x03 */ A_BUTTON,
    /* 0x04 */ DPAD_UP,
    /* 0x05 */ DPAD_RIGHT,
    /* 0x06 */ LEFT_SHOULDER_BUTTON,
    /* 0x07 */ RIGHT_SHOULDER_BUTTON,
    /* 0x08 */ DPAD_UP
};

// [D_089e2bbc] Cue 00 (Bass Drum - Left Pedal)
const struct CueDefinition drum_studio_cue_kick_l = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(B_BUTTON | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct DrumLessonsCue),
    /* Func. Spawn     */ drum_studio_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ drum_studio_cue_update,
    /* Func. Despawn   */ drum_studio_cue_despawn,
    /* Func. Hit       */ drum_studio_cue_hit,
    /* Func. Barely    */ drum_studio_cue_barely,
    /* Func. Miss      */ drum_studio_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e2bfc] Cue 01 (Bass Drum - Right Pedal)
const struct CueDefinition drum_studio_cue_kick_r = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(B_BUTTON | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct DrumLessonsCue),
    /* Func. Spawn     */ drum_studio_cue_spawn,
    /* Spawn Parameter */ 1,
    /* Func. Update    */ drum_studio_cue_update,
    /* Func. Despawn   */ drum_studio_cue_despawn,
    /* Func. Hit       */ drum_studio_cue_hit,
    /* Func. Barely    */ drum_studio_cue_barely,
    /* Func. Miss      */ drum_studio_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e2c3c] Cue 02 (Snare Drum - Left Hand)
const struct CueDefinition drum_studio_cue_snare_l = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | DPAD_LEFT),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct DrumLessonsCue),
    /* Func. Spawn     */ drum_studio_cue_spawn,
    /* Spawn Parameter */ 2,
    /* Func. Update    */ drum_studio_cue_update,
    /* Func. Despawn   */ drum_studio_cue_despawn,
    /* Func. Hit       */ drum_studio_cue_hit,
    /* Func. Barely    */ drum_studio_cue_barely,
    /* Func. Miss      */ drum_studio_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e2c7c] Cue 03 (Snare Drum - Right Hand)
const struct CueDefinition drum_studio_cue_snare_r = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | DPAD_LEFT),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct DrumLessonsCue),
    /* Func. Spawn     */ drum_studio_cue_spawn,
    /* Spawn Parameter */ 3,
    /* Func. Update    */ drum_studio_cue_update,
    /* Func. Despawn   */ drum_studio_cue_despawn,
    /* Func. Hit       */ drum_studio_cue_hit,
    /* Func. Barely    */ drum_studio_cue_barely,
    /* Func. Miss      */ drum_studio_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e2cbc] Cue 04 (Hi-Hat / Roll)
const struct CueDefinition drum_studio_cue_04 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_UP),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct DrumLessonsCue),
    /* Func. Spawn     */ drum_studio_cue_spawn,
    /* Spawn Parameter */ 4,
    /* Func. Update    */ drum_studio_cue_update,
    /* Func. Despawn   */ drum_studio_cue_despawn,
    /* Func. Hit       */ drum_studio_cue_hit,
    /* Func. Barely    */ drum_studio_cue_barely,
    /* Func. Miss      */ drum_studio_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e2cfc] Cue 05 (Tom Drum)
const struct CueDefinition drum_studio_cue_tom = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_RIGHT),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct DrumLessonsCue),
    /* Func. Spawn     */ drum_studio_cue_spawn,
    /* Spawn Parameter */ 5,
    /* Func. Update    */ drum_studio_cue_update,
    /* Func. Despawn   */ drum_studio_cue_despawn,
    /* Func. Hit       */ drum_studio_cue_hit,
    /* Func. Barely    */ drum_studio_cue_barely,
    /* Func. Miss      */ drum_studio_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e2d3c] Cue 06 (Splash Cymbal)
const struct CueDefinition drum_studio_cue_splash = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(RIGHT_SHOULDER_BUTTON | LEFT_SHOULDER_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x05, 0x05,
    /* Barely Window   */ -0x08, 0x08,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct DrumLessonsCue),
    /* Func. Spawn     */ drum_studio_cue_spawn,
    /* Spawn Parameter */ 6,
    /* Func. Update    */ drum_studio_cue_update,
    /* Func. Despawn   */ drum_studio_cue_despawn,
    /* Func. Hit       */ drum_studio_cue_hit,
    /* Func. Barely    */ drum_studio_cue_barely,
    /* Func. Miss      */ drum_studio_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e2d7c] Cue 07 (Crash Cymbal)
const struct CueDefinition drum_studio_cue_crash = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(RIGHT_SHOULDER_BUTTON | LEFT_SHOULDER_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x05, 0x05,
    /* Barely Window   */ -0x08, 0x08,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct DrumLessonsCue),
    /* Func. Spawn     */ drum_studio_cue_spawn,
    /* Spawn Parameter */ 7,
    /* Func. Update    */ drum_studio_cue_update,
    /* Func. Despawn   */ drum_studio_cue_despawn,
    /* Func. Hit       */ drum_studio_cue_hit,
    /* Func. Barely    */ drum_studio_cue_barely,
    /* Func. Miss      */ drum_studio_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e2dbc] Cue 08 (Hi-Hat / Roll)
const struct CueDefinition drum_studio_cue_08 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_UP),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x05, 0x05,
    /* Barely Window   */ -0x08, 0x08,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct DrumLessonsCue),
    /* Func. Spawn     */ drum_studio_cue_spawn,
    /* Spawn Parameter */ 8,
    /* Func. Update    */ drum_studio_cue_update,
    /* Func. Despawn   */ drum_studio_cue_despawn,
    /* Func. Hit       */ drum_studio_cue_hit,
    /* Func. Barely    */ drum_studio_cue_barely,
    /* Func. Miss      */ drum_studio_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e2dfc] Cue Definition Index
const struct CueDefinition *const drum_studio_cue_index[] = {
    /* 0x00 */ &drum_studio_cue_kick_l,
    /* 0x01 */ &drum_studio_cue_kick_r,
    /* 0x02 */ &drum_studio_cue_snare_l,
    /* 0x03 */ &drum_studio_cue_snare_r,
    /* 0x04 */ &drum_studio_cue_04,
    /* 0x05 */ &drum_studio_cue_tom,
    /* 0x06 */ &drum_studio_cue_splash,
    /* 0x07 */ &drum_studio_cue_crash,
    /* 0x08 */ &drum_studio_cue_08,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e2e24] Common Events
const EngineEvent drum_studio_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) drum_studio_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) drum_studio_common_display_text,
    /* INIT_TUTORIAL  */ (EngineEvent) drum_studio_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

extern void func_08029178();
extern void func_08029b8c();
extern void func_08027728();
extern void func_08027744();
extern void func_08027760();
extern void func_0802777c();
extern void func_080277a0();
extern void func_080277b8();
extern void func_08027ba0();
extern void func_08027888();
extern void func_080278d0();
extern void func_08027bbc();
extern void func_08027f70();
extern void func_080271f0();
extern void func_08029cec();
extern void func_08028004();
extern void func_08027bd8();
extern void func_08027c54();
extern void func_08027c90();
extern void func_080281e8();
extern void func_080281fc();

// [D_089e2e34] Engine Events
const EngineEvent drum_studio_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080293b0,
    /* 0x01 */ (EngineEvent) func_080295d4,
    /* 0x02 */ (EngineEvent) func_08029178,
    /* 0x03 */ (EngineEvent) drum_studio_event_start_monitor,
    /* 0x04 */ (EngineEvent) drum_studio_event_stop_monitor,
    /* 0x05 */ (EngineEvent) func_0802992c,
    /* 0x06 */ (EngineEvent) func_08029b8c,
    /* 0x07 */ (EngineEvent) func_08027728,
    /* 0x08 */ (EngineEvent) func_08027744,
    /* 0x09 */ (EngineEvent) func_08027760,
    /* 0x0A */ (EngineEvent) func_0802777c,
    /* 0x0B */ (EngineEvent) func_080277a0,
    /* 0x0C */ (EngineEvent) func_080277b8,
    /* 0x0D */ (EngineEvent) func_08027ba0,
    /* 0x0E */ (EngineEvent) func_08027888,
    /* 0x0F */ (EngineEvent) func_080278d0,
    /* 0x10 */ (EngineEvent) func_08027bbc,
    /* 0x11 */ (EngineEvent) func_08027f70,
    /* 0x12 */ (EngineEvent) func_080271f0,
    /* 0x13 */ (EngineEvent) func_08029cec,
    /* 0x14 */ (EngineEvent) func_08028004,
    /* 0x15 */ (EngineEvent) func_08027bd8,
    /* 0x16 */ (EngineEvent) func_08027c54,
    /* 0x17 */ (EngineEvent) func_08027c90,
    /* 0x18 */ (EngineEvent) func_080281e8,
    /* 0x19 */ (EngineEvent) func_080281fc,
    /* 0x1A */ (EngineEvent) drum_studio_engine_event_stub
};

// [D_089e2ea0] Drum Lessons Game Engine
const struct GameEngine D_089e2ea0 = {
    /* Size in Memory */ 0x580,
    /* Start Engine   */ drum_studio_engine_start,
    /* Update Engine  */ drum_studio_engine_update,
    /* Stop Engine    */ drum_studio_engine_stop,
    /* Cue Index      */ drum_studio_cue_index,
    /* Common Events  */ drum_studio_common_events,
    /* Engine Events  */ drum_studio_engine_events,
    /* Input Event    */ drum_studio_input_event
};


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e2ec0] ?
const s32 D_089e2ec0[] = {
    /* 0x00 */ -0x80,
    /* 0x01 */ -0x80,
    /* 0x02 */ -0x100,
    /* 0x03 */ -0x200,
    /* 0x04 */ -0x400,
};
