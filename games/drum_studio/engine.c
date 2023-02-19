#include "engines/drum_studio.h"


  //  //  //  DRUM SAMURAI DATA  //  //  //


// [D_089e0ce0] Drum Samurai Expressions
struct DrumTeacherExpression drum_teacher_expressions_anim[] = {
    /* 0x00 */ {
        /* Head   */ NULL,
        /* R. Arm */ NULL,
        /* L. Arm */ NULL
    },
    /* 0x01 */ {
        /* Head   */ anim_drum_teacher_watching,
        /* R. Arm */ NULL,
        /* L. Arm */ NULL
    },
    /* 0x02 */ {
        /* Head   */ anim_drum_teacher_finish_pattern_face,
        /* R. Arm */ NULL,
        /* L. Arm */ anim_drum_teacher_finish_pattern_arm
    },
    /* 0x03 */ {
        /* Head   */ anim_drum_teacher_fail_pattern_face,
        /* R. Arm */ anim_drum_teacher_fail_pattern_arm_r,
        /* L. Arm */ anim_drum_teacher_fail_pattern_arm_l
    },
    /* 0x04 */ {
        /* Head   */ anim_drum_teacher_finish_lesson_face,
        /* R. Arm */ anim_drum_teacher_finish_lesson_arm,
        /* L. Arm */ NULL
    }
};


  //  //  //  DRUM SAMURAI KIT DATA  //  //  //


#include "drum_lessons_kits.inc.c"

// [D_089e16b0] ?
DrumPlayFunc D_089e16b0[] = {
    /* 0x00 */ NULL,
    /* 0x01 */ NULL,
    /* 0x02 */ NULL,
    /* 0x03 */ NULL,
    /* 0x04 */ NULL,
    /* 0x05 */ NULL,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ NULL,
    /* 0x09 */ func_080275a8,
    /* 0x0A */ func_080275d0,
    /* 0x0B */ NULL,
    /* 0x0C */ NULL,
    /* 0x0D */ NULL,
    /* 0x0E */ NULL,
    /* 0x0F */ func_080275f8
};

// [D_089e16f0] Samurai Drummer's Kits
struct DrumTechKit *drum_teacher_kits[] = {
    /* 0x00 */ &D_089e1160,
    /* 0x01 */ &D_089e0df0,
    /* 0x02 */ &D_089e0ecc,
    /* 0x03 */ &D_089e0fa8,
    /* 0x04 */ &D_089e1084,
    /* 0x05 */ &D_089e1160,
    /* 0x06 */ &D_089e123c,
    /* 0x07 */ &D_089e1318,
    /* 0x08 */ &D_089e13f4,
    /* 0x09 */ &D_089e14d0,
    /* 0x0A */ &D_089e15ac,
    /* 0x0B */ &D_089e1160,
    /* 0x0C */ &D_089e1160,
    /* 0x0D */ &D_089e1160,
    /* 0x0E */ &D_089e1160
};


  //  //  //  ACCURACY METER DATA  //  //  //


// [D_089e172c] Accuracy Meter Lights
struct Animation *drum_lessons_accuracy_light_anim[] = {
    /* 0x00 */ anim_drum_lessons_accuracy_light1,
    /* 0x01 */ anim_drum_lessons_accuracy_light2,
    /* 0x02 */ anim_drum_lessons_accuracy_light3,
    /* 0x03 */ anim_drum_lessons_accuracy_light4,
    /* 0x04 */ anim_drum_lessons_accuracy_light5,
    /* 0x05 */ anim_drum_lessons_accuracy_light6,
    /* 0x06 */ anim_drum_lessons_accuracy_light7
};

// [D_089e1748] Accuracy Meter Light Positions
struct Vector2 drum_lessons_accuracy_light_positions[] = {
    /* 0x00 */ {  89, 19 },
    /* 0x01 */ { 100, 19 },
    /* 0x02 */ { 111, 18 },
    /* 0x03 */ { 122, 18 },
    /* 0x04 */ { 133, 18 },
    /* 0x05 */ { 144, 17 },
    /* 0x06 */ { 155, 17 },
};


  //  //  //  RESULTS DATA  //  //  //


// [D_089e1764] Rank Animations
struct Animation *drum_lessons_rank_anim[] = {
    /* RANK_0 */ anim_drum_lessons_rank_c,
    /* RANK_C */ anim_drum_lessons_rank_c,
    /* RANK_B */ anim_drum_lessons_rank_b,
    /* RANK_A */ anim_drum_lessons_rank_a,
    /* RANK_S */ anim_drum_lessons_rank_s
};

const char D_08059f94[] = "";

const char D_08059f98[] = "";

const char D_08059f9c[] = "\nスタートだけに集中！";

const char D_08059fb4[] = "\nちゃんと　アタマを狙おう。";

const char D_08059fd0[] = "\nボーッと　しないで！";

const char D_08059fe8[] = "\nＡボタンもしっかり押そう。";

const char D_0805a004[] = "\nＲボタンもしっかり押そう。";

const char D_0805a020[] = "\n同時に押してないです。";

const char D_0805a038[] = "\n前のめりです。";

const char D_0805a048[] = "\n遅れてます。";

const char D_0805a058[] = "\nベリー　グッド！！";

const char D_0805a06c[] = "\nグー！";

// [D_089e1778] Rank Text
const char *drum_lessons_rank_text[] = {
    /* RANK_0 */ "\n",
    /* RANK_C */ "\nまずまずだネ！",
    /* RANK_B */ "\nなかなかいいヨ！",
    /* RANK_A */ "\nバッチグー！！",
    /* RANK_S */ "\nカンペキッス！！",
};

const char D_0805a0c0[] = "\n評価 ";

const char D_0805a0c8[] = ".";

const char D_0805a0cc[] = " 点";

// [D_089e178c] Rank SFX
struct SequenceData *drum_lessons_rank_sfx[] = {
    /* RANK_0 */ NULL,
    /* RANK_C */ &s_f_lesson_c_seqData,
    /* RANK_B */ &s_f_lesson_b_seqData,
    /* RANK_A */ &s_f_lesson_a_seqData,
    /* RANK_S */ &s_f_lesson_s_seqData
};


  //  //  //  STUDIO BG MONITOR DATA  //  //  //


#include "drum_studio_monitor_gfx.inc.c"


  //  //  //  PLAYER DRUM KIT DATA  //  //  //


#include "drum_studio_kits.inc.c"

// [D_089e2988] ?
DrumPlayFunc D_089e2988[] = {
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
struct DrumTechKit *drum_studio_kits[] = {
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
struct CompressedGraphics *drum_studio_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e2a08] Graphics Table (Studio Drumming)
struct GraphicsTable drum_studio_gfx_table[] = {
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
struct GraphicsTable drum_lessons_gfx_table[] = {
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


  //  //  //  SCRIPT DATA  //  //  //


asm(".include \"games/drum_studio/ending_scripts.inc\"");


  //  //  //  CUE DATA  //  //  //


// [D_089e2b58] ?
struct Vector2 D_089e2b58[] = {
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
struct Vector2 D_089e2b78[] = {
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
struct SpritePlaybackData D_089e2b98[] = {
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
u16 D_089e2ba8[] = {
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
struct CueDefinition drum_studio_cue_kick_l = {
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
struct CueDefinition drum_studio_cue_kick_r = {
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
struct CueDefinition drum_studio_cue_snare_l = {
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
struct CueDefinition drum_studio_cue_snare_r = {
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
struct CueDefinition drum_studio_cue_04 = {
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
struct CueDefinition drum_studio_cue_tom = {
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
struct CueDefinition drum_studio_cue_splash = {
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
struct CueDefinition drum_studio_cue_crash = {
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
struct CueDefinition drum_studio_cue_08 = {
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
struct CueDefinition *drum_studio_cue_index[] = {
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
EngineEvent drum_studio_common_events[] = {
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
extern void drum_lessons_set_dialogue();
extern void func_08027888();
extern void func_080278d0();
extern void drum_lessons_show_dialogue();
extern void func_08029cec();
extern void func_08027bd8();
extern void func_08027c54();
extern void func_08027c90();
extern void func_080281e8();
extern void func_080281fc();

// [D_089e2e34] Engine Events
EngineEvent drum_studio_engine_events[] = {
    /* 0x00 */ (EngineEvent) drum_studio_init_script,
    /* 0x01 */ (EngineEvent) func_080295d4,
    /* 0x02 */ (EngineEvent) func_08029178,
    /* 0x03 */ (EngineEvent) drum_studio_event_start_monitor,
    /* 0x04 */ (EngineEvent) drum_studio_event_stop_monitor,
    /* 0x05 */ (EngineEvent) drum_studio_show_save_options,
    /* 0x06 */ (EngineEvent) func_08029b8c,
    /* 0x07 */ (EngineEvent) func_08027728,
    /* 0x08 */ (EngineEvent) func_08027744,
    /* 0x09 */ (EngineEvent) func_08027760,
    /* 0x0A */ (EngineEvent) func_0802777c,
    /* 0x0B */ (EngineEvent) func_080277a0,
    /* 0x0C */ (EngineEvent) func_080277b8,
    /* 0x0D */ (EngineEvent) drum_lessons_set_dialogue,
    /* 0x0E */ (EngineEvent) func_08027888,
    /* 0x0F */ (EngineEvent) func_080278d0,
    /* 0x10 */ (EngineEvent) drum_lessons_show_dialogue,
    /* 0x11 */ (EngineEvent) func_08027f70,
    /* 0x12 */ (EngineEvent) drum_lessons_set_teacher_expression,
    /* 0x13 */ (EngineEvent) func_08029cec,
    /* 0x14 */ (EngineEvent) drum_lessons_get_score,
    /* 0x15 */ (EngineEvent) func_08027bd8,
    /* 0x16 */ (EngineEvent) func_08027c54,
    /* 0x17 */ (EngineEvent) func_08027c90,
    /* 0x18 */ (EngineEvent) func_080281e8,
    /* 0x19 */ (EngineEvent) func_080281fc,
    /* 0x1A */ (EngineEvent) drum_studio_engine_event_stub
};

// [D_089e2ea0] Drum Lessons Game Engine
struct GameEngine drum_studio_engine = {
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
s32 D_089e2ec0[] = {
    /* 0x00 */ -0x80,
    /* 0x01 */ -0x80,
    /* 0x02 */ -0x100,
    /* 0x03 */ -0x200,
    /* 0x04 */ -0x400,
};


/* Studio Drumming Monitor Graphics Tables */


// [D_0805a0d0] Studio Drumming BG Monitor - Graphics Table 0
const struct GraphicsTable D_0805a0d0[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c71ed4,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c762e8,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c76300,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a100] Studio Drumming BG Monitor - Graphics Table 1
const struct GraphicsTable D_0805a100[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c71340,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c745e0,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c74754,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a130] Studio Drumming BG Monitor - Graphics Table 2
const struct GraphicsTable D_0805a130[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c7069c,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c737a4,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c73978,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a160] Studio Drumming BG Monitor - Graphics Table 3
const struct GraphicsTable D_0805a160[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c71908,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c74ef8,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c75100,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a190] Studio Drumming BG Monitor - Graphics Table 4
const struct GraphicsTable D_0805a190[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c71c8c,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c756bc,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c758bc,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a1c0] Studio Drumming BG Monitor - Graphics Table 5
const struct GraphicsTable D_0805a1c0[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c70b4c,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c73ea4,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c7408c,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a1f0] Studio Drumming BG Monitor - Graphics Table 6
const struct GraphicsTable D_0805a1f0[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c71b6c,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c7534c,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c75478,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a220] Studio Drumming BG Monitor - Graphics Table 7
const struct GraphicsTable D_0805a220[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c71658,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c749d4,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c74bb0,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a250] Studio Drumming BG Monitor - Graphics Table 8
const struct GraphicsTable D_0805a250[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c710e8,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c74210,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c74404,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a280] Studio Drumming BG Monitor - Graphics Table 9
const struct GraphicsTable D_0805a280[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c71e64,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c759cc,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c75ad0,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a2b0] Studio Drumming BG Monitor - Graphics Table 10
const struct GraphicsTable D_0805a2b0[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c709a8,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c73b6c,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c73cf8,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a2e0] Studio Drumming BG Monitor - Graphics Table 11
const struct GraphicsTable D_0805a2e0[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c70580,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c73544,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c73618,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a310] Studio Drumming BG Monitor - Graphics Table 12
const struct GraphicsTable D_0805a310[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c70490,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c72518,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c72634,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a340] Studio Drumming BG Monitor - Graphics Table 13
const struct GraphicsTable D_0805a340[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c704e8,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c72e4c,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c7346c,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a370] Studio Drumming BG Monitor - Graphics Table 14
const struct GraphicsTable D_0805a370[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c703a8,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c720a0,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c72400,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};


/* Drumming */


const char D_0805a3a0[] =
    "今の演奏データですが、\n"
    "セーブしときますか？";
