#include "engines/drum_intro.h"
#include "src/scenes/gameplay.h"


  //  //  //  DRUM SEQUENCE DATA  //  //  //


#include "drum_intro_bgm.inc.c"

// [D_089dfe54] BGM DrumTech Sequences
struct DrumTechNote *tanuki_and_monkey_bgm_seq_table[] = {
    /* 0x00 */ D_089df6ec,
    /* 0x01 */ D_089df81c,
    /* 0x02 */ D_089df8dc,
    /* 0x03 */ D_089df994,
    /* 0x04 */ D_089dfa5c,
    /* 0x05 */ D_089dfac4,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ NULL,
    /* 0x09 */ NULL,
    /* 0x0A */ D_089dfb0c,
    /* 0x0B */ D_089dfb44,
    /* 0x0C */ D_089dfc1c,
    /* 0x0D */ D_089dfcfc,
    /* 0x0E */ D_089dfd9c,
    /* 0x0F */ D_089dfe3c
};


  //  //  //  DRUM DATA  //  //  //


// [D_089dfe94] Input Buttons
u16 D_089dfe94[] = {
    /* 0x00 */ (A_BUTTON | DPAD_RIGHT),
    /* 0x01 */ (A_BUTTON | DPAD_RIGHT),
    /* 0x02 */ DPAD_DOWN,
    /* 0x03 */ 0,
};

// [D_089dfe9c] Cue 05 (Auto-Input)
struct CueDefinition drum_intro_cue_auto = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(0),
    /* Total Duration  */ 0x60,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ drum_intro_cue_spawn_auto,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ drum_intro_cue_update_auto,
    /* Func. Despawn   */ drum_intro_cue_despawn_auto,
    /* Func. Hit       */ drum_intro_cue_hit_auto,
    /* Func. Barely    */ drum_intro_cue_barely_auto,
    /* Func. Miss      */ drum_intro_cue_miss_auto,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

#include "drum_intro_kits.inc.c"

// [D_089e0014] Drum Intro Kits
struct DrumTechKit *drum_intro_kits[] = {
    /* 0x00 */ &drum_intro_kit1,
    /* 0x01 */ &drum_intro_kit1,
    /* 0x02 */ &drum_intro_kit2,
    /* 0x03 */ &drum_intro_kit2,
};


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e0024] Buffered Textures List
struct CompressedData *drum_intro_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e0028] Graphics Table (Unused Intro - Teacher Drumming)
struct GraphicsTable gfx_table_drum_intro_talk[] = {
    /* BG Tileset */ {
        /* Src.  */ &drum_intro_talk_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &drum_intro_talk_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &drum_intro_talk_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_intro_talk_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_intro_talk_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e0070] Graphics Table (Unused Intro - Player Drumming)
struct GraphicsTable gfx_table_drum_intro_play[] = {
    /* BG Tileset */ {
        /* Src.  */ &drum_intro_play_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &drum_intro_play_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &drum_intro_play_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_intro_play_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_intro_play_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e00b8] Graphics Table (Tanuki & Monkey)
struct GraphicsTable gfx_table_tanuki_and_monkey[] = {
    /* BG Tileset */ {
        /* Src.  */ &tanuki_and_monkey_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &tanuki_and_monkey_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &tanuki_and_monkey_bg_map_blank,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &drum_intro_play_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &tanuki_and_monkey_obj,
        /* Dest. */ OBJ_TILESET_BASE(0x5000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ tanuki_and_monkey_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_intro_play_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ tanuki_and_monkey_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(8),
        /* Size  */ 0xC0
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e0124] Graphics Table (Drum Samurai Cutscene)
struct GraphicsTable gfx_table_drum_samurai_cutscene[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &drum_intro_talk_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_intro_talk_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_intro_talk_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e0154] Graphics Table Index
struct GraphicsTable *drum_intro_gfx_tables[] = {
    /* 0x00 */ gfx_table_drum_intro_talk,
    /* 0x01 */ gfx_table_drum_intro_play,
    /* 0x02 */ gfx_table_tanuki_and_monkey,
    /* 0x03 */ gfx_table_drum_samurai_cutscene
};

// [D_089e0164] Sprite Offsets?
struct Vector2 D_089e0164[] = {
    /* 0x00 */ { 0, -2 },
    /* 0x01 */ { 0, -1 },
    /* 0x02 */ { 0, -1 },
};

// [D_089e0170] Drummer Face Animations
struct Animation *D_089e0170[][4] = {
    /* 0x00 */ {
        /* 0x00 */ anim_drum_samurai_head,
        /* 0x01 */ anim_drum_player_head,
        /* 0x02 */ anim_drum_player_head,
        /* 0x03 */ anim_drum_samurai_head
    },
    /* 0x01 */ {
        /* 0x00 */ anim_drum_samurai_face_blink,
        /* 0x01 */ anim_drum_player_face_blink,
        /* 0x02 */ anim_drum_player_face_blink,
        /* 0x03 */ anim_drum_samurai_face_blink
    },
    /* 0x02 */ {
        /* 0x00 */ anim_drum_samurai_face_talk,
        /* 0x01 */ anim_drum_player_face_talk,
        /* 0x02 */ anim_drum_player_face_talk,
        /* 0x03 */ anim_drum_samurai_face_talk
    },
    /* 0x03 */ {
        /* 0x00 */ anim_drum_samurai_face_talk,
        /* 0x01 */ anim_drum_player_face_talk,
        /* 0x02 */ anim_drum_player_face_talk,
        /* 0x03 */ anim_drum_samurai_face_talk
    }
};

// [D_089e01b0] ? Sprite Z Levels
u16 D_089e01b0[] = {
    /* 0x00 */ 0x4805,
    /* 0x01 */ 0x47e2,
    /* 0x02 */ 0x47e2,
    /* 0x03 */ 0x47e2,
};

// [D_089e01b8] ? Animation Playback Data
s8 D_089e01b8[][3] = {
    /* 0x00 */ {
        /* unk0 */ 0x7f,
        /* unk1 */ 1,
        /* unk2 */ 0x7f
    },
    /* 0x01 */ {
        /* unk0 */ 0,
        /* unk1 */ 1,
        /* unk2 */ 0
    },
    /* 0x02 */ {
        /* unk0 */ 0,
        /* unk1 */ 1,
        /* unk2 */ 0
    },
    /* 0x03 */ {
        /* unk0 */ 0,
        /* unk1 */ 0,
        /* unk2 */ 0
    },
};

// [D_089e01c4] ?
u8 D_089e01c4[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 1,
    /* 0x02 */ 1,
    /* 0x03 */ 0,
};


  //  //  //  CUE DATA  //  //  //


// [D_089e01c8] Cue 00 (Bass Drum)
struct CueDefinition drum_intro_cue_bass = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(B_BUTTON | DPAD_LEFT),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x04, 0x04,
    /* Tempo-Dependent */ TRUE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ drum_intro_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ drum_intro_cue_update,
    /* Func. Despawn   */ drum_intro_cue_despawn,
    /* Func. Hit       */ drum_intro_cue_hit,
    /* Func. Barely    */ drum_intro_cue_barely,
    /* Func. Miss      */ drum_intro_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0208] Cue 01 (Snare Drum)
struct CueDefinition drum_intro_cue_snare = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | DPAD_RIGHT),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x04, 0x04,
    /* Tempo-Dependent */ TRUE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ drum_intro_cue_spawn,
    /* Spawn Parameter */ 1,
    /* Func. Update    */ drum_intro_cue_update,
    /* Func. Despawn   */ drum_intro_cue_despawn,
    /* Func. Hit       */ drum_intro_cue_hit,
    /* Func. Barely    */ drum_intro_cue_barely,
    /* Func. Miss      */ drum_intro_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0248] Cue 02 (Cymbals)
struct CueDefinition drum_intro_cue_cymbal = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(RIGHT_SHOULDER_BUTTON | LEFT_SHOULDER_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x04, 0x04,
    /* Barely Window   */ -0x06, 0x06,
    /* Tempo-Dependent */ TRUE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ drum_intro_cue_spawn,
    /* Spawn Parameter */ 2,
    /* Func. Update    */ drum_intro_cue_update,
    /* Func. Despawn   */ drum_intro_cue_despawn,
    /* Func. Hit       */ drum_intro_cue_hit,
    /* Func. Barely    */ drum_intro_cue_barely,
    /* Func. Miss      */ drum_intro_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0288] Cue 03 (Tom Drum)
struct CueDefinition drum_intro_cue_tom = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x04, 0x04,
    /* Tempo-Dependent */ TRUE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ drum_intro_cue_spawn,
    /* Spawn Parameter */ 3,
    /* Func. Update    */ drum_intro_cue_update,
    /* Func. Despawn   */ drum_intro_cue_despawn,
    /* Func. Hit       */ drum_intro_cue_hit,
    /* Func. Barely    */ drum_intro_cue_barely,
    /* Func. Miss      */ drum_intro_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e02c8] Cue 04 (Hi-Hat / Roll)
struct CueDefinition drum_intro_cue_hihat = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_UP),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x04, 0x04,
    /* Tempo-Dependent */ TRUE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ drum_intro_cue_spawn,
    /* Spawn Parameter */ 4,
    /* Func. Update    */ drum_intro_cue_update,
    /* Func. Despawn   */ drum_intro_cue_despawn,
    /* Func. Hit       */ drum_intro_cue_hit,
    /* Func. Barely    */ drum_intro_cue_barely,
    /* Func. Miss      */ drum_intro_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0308] Cue Definition Index
struct CueDefinition *drum_intro_cue_index[] = {
    /* 0x00 */ &drum_intro_cue_bass,
    /* 0x01 */ &drum_intro_cue_snare,
    /* 0x02 */ &drum_intro_cue_cymbal,
    /* 0x03 */ &drum_intro_cue_tom,
    /* 0x04 */ &drum_intro_cue_hihat,
    /* 0x05 */ &drum_intro_cue_auto,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e0324] Common Events
EngineEvent drum_intro_common_events[] = {
    /* BEAT_ANIMATION */ drum_intro_common_beat_animation,
    /* DISPLAY_TEXT   */ drum_intro_common_display_text,
    /* INIT_TUTORIAL  */ gameplay_set_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e0334] Engine Events
EngineEvent drum_intro_engine_events[] = {
    /* 0x00 */ func_0802497c,
    /* 0x01 */ func_080249c0,
    /* 0x02 */ func_08024a4c,
    /* 0x03 */ func_08024ae4,
    /* 0x04 */ func_08024ba0,
    /* 0x05 */ func_08024ef4,
    /* 0x06 */ func_08024f64,
    /* 0x07 */ func_08024be8,
    /* 0x08 */ func_080239a0,
    /* 0x09 */ func_080239bc,
    /* 0x0A */ func_08023c58,
    /* 0x0B */ func_08023bb8,
    /* 0x0C */ func_08023bcc,
    /* 0x0D */ func_08023bf4,
    /* 0x0E */ func_08023c0c,
    /* 0x0F */ func_08023c44,
    /* 0x10 */ drum_intro_engine_event_stub
};

// [D_089e0378] Drum Intro Game Engine
struct GameEngine drum_intro_engine = {
    /* Size in Memory */ sizeof(struct DrumIntroEngineData),
    /* Start Engine   */ drum_intro_engine_start,
    /* Update Engine  */ drum_intro_engine_update,
    /* Stop Engine    */ drum_intro_engine_stop,
    /* Cue Index      */ drum_intro_cue_index,
    /* Common Events  */ drum_intro_common_events,
    /* Engine Events  */ drum_intro_engine_events,
    /* Input Event    */ drum_intro_input_event
};


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e0398] ?
struct DrumKitCueData *D_089e0398[] = {
    NULL,
    &D_089e03a4,
    &D_089e03c0
};

// [D_089e03a4] ?
struct DrumKitCueData D_089e03a4 = {
    /* Func. 00 */ func_08024fb4,
    /* Func. 04 */ func_08024fbc,
    /* Func. 08 */ func_08024fc4,
    /* Func. 0C */ func_08024ff4,
    /* Func. 10 */ func_08025020,
    /* Func. 14 */ func_08025038,
    /* unk18    */ 4
};

// [D_089e03c0] ?
struct DrumKitCueData D_089e03c0 = {
    /* Func. 00 */ func_080251d0,
    /* Func. 04 */ func_080251d8,
    /* Func. 08 */ func_080251e8,
    /* Func. 0C */ func_080251ec,
    /* Func. 10 */ func_080251f0,
    /* Func. 14 */ func_080251fc,
    /* unk18    */ 4
};

// [D_089e03dc] ?
struct DrumKitCueData D_089e03dc = {
    /* Func. 00 */ func_08025204,
    /* Func. 04 */ func_0802520c,
    /* Func. 08 */ func_08025214,
    /* Func. 0C */ func_08025218,
    /* Func. 10 */ func_0802521c,
    /* Func. 14 */ func_08025220,
    /* unk18    */ 4
};
