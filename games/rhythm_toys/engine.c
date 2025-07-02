#include "engines/rhythm_toys.h"


  /* RHYTHM TOYS - GAME ENGINE DATA */
  

extern struct Vector2 D_08cda128;
extern struct Vector2 D_08cda12c;
extern struct Vector2 D_08cda130;
extern struct Vector2 D_08cda134;
extern struct Vector2 D_08cda138;
extern struct Vector2 D_08cda13c;
extern struct Vector2 D_08cda140;
extern struct Vector2 D_08cda144;
extern struct Vector2 D_08cda148;
extern struct Vector2 D_08cdbadc;
extern struct Vector2 D_08cdbae0;
extern struct Vector2 D_08cdbae4;
extern struct Vector2 D_08cdbae8;
extern struct Vector2 D_08cdbaec;
extern struct Vector2 D_08cdbaf0;
extern struct Vector2 D_08cdbaf4;
extern struct Vector2 D_08cdbaf8;
extern struct Vector2 D_08cdbafc;
extern struct Vector2 D_08cdd0e4;
extern struct Vector2 D_08cdd0e8;
extern struct Vector2 D_08cdd0ec;
extern struct Vector2 D_08cdd0f0;
extern struct Vector2 D_08cdd0f4;
extern struct Vector2 D_08cdd0f8;
extern struct Vector2 D_08cdd0fc;
extern struct Vector2 D_08cdd100;
extern struct Vector2 D_08cdd104;


  //  //  //  CAT MACHINE DATA  //  //  //


#include "cat_machine.inc.c"


  //  //  //  RAP MACHINE DATA  //  //  //


#include "rap_machine.inc.c"


  //  //  //  CONFESSION MACHINE DATA  //  //  //


#include "love_machine.inc.c"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e9bf8] A Button GFX
struct RhythmToysSpriteData rhythm_toys_sprite_button_a[] = {
    /* CAT_MACHINE_1 */ {
        /* Anim */ anim_cat_machine_button_a,
        /* Vec2 */ &D_08cda134
    },
    /* CAT_MACHINE_2 */ {
        /* Anim */ anim_cat_machine_button_a,
        /* Vec2 */ &D_08cda134
    },
    /* LOVE_MACHINE */ {
        /* Anim */ anim_love_machine_button_a,
        /* Vec2 */ &D_08cdd0f0
    },
    /* RAP_MACHINE */ {
        /* Anim */ anim_rap_machine_button_a,
        /* Vec2 */ &D_08cdbae0
    }
};

// [D_089e9c18] B Button GFX
struct RhythmToysSpriteData rhythm_toys_sprite_button_b[] = {
    /* CAT_MACHINE_1 */ {
        /* Anim */ anim_cat_machine_button_b,
        /* Vec2 */ &D_08cda138
    },
    /* CAT_MACHINE_2 */ {
        /* Anim */ anim_cat_machine_button_b,
        /* Vec2 */ &D_08cda138
    },
    /* LOVE_MACHINE */ {
        /* Anim */ anim_love_machine_button_b,
        /* Vec2 */ &D_08cdd0f4
    },
    /* RAP_MACHINE */ {
        /* Anim */ anim_rap_machine_button_b,
        /* Vec2 */ &D_08cdbae4
    }
};

// [D_089e9c38] D-Pad Up GFX
struct RhythmToysSpriteData rhythm_toys_sprite_button_u[] = {
    /* CAT_MACHINE_1 */ {
        /* Anim */ anim_cat_machine_button_up,
        /* Vec2 */ &D_08cda13c
    },
    /* CAT_MACHINE_2 */ {
        /* Anim */ anim_cat_machine_button_up,
        /* Vec2 */ &D_08cda13c
    },
    /* LOVE_MACHINE */ {
        /* Anim */ anim_love_machine_button_up,
        /* Vec2 */ &D_08cdd0f8
    },
    /* RAP_MACHINE */ {
        /* Anim */ anim_rap_machine_button_up,
        /* Vec2 */ &D_08cdbae8
    }
};

// [D_089e9c58] D-Pad Down GFX
struct RhythmToysSpriteData rhythm_toys_sprite_button_d[] = {
    /* CAT_MACHINE_1 */ {
        /* Anim */ anim_cat_machine_button_down,
        /* Vec2 */ &D_08cda140
    },
    /* CAT_MACHINE_2 */ {
        /* Anim */ anim_cat_machine_button_down,
        /* Vec2 */ &D_08cda140
    },
    /* LOVE_MACHINE */ {
        /* Anim */ anim_love_machine_button_down,
        /* Vec2 */ &D_08cdd0fc
    },
    /* RAP_MACHINE */ {
        /* Anim */ anim_rap_machine_button_down,
        /* Vec2 */ &D_08cdbaec
    }
};

// [D_089e9c78] D-Pad Left GFX
struct RhythmToysSpriteData rhythm_toys_sprite_button_l[] = {
    /* CAT_MACHINE_1 */ {
        /* Anim */ anim_cat_machine_button_left,
        /* Vec2 */ &D_08cda144
    },
    /* CAT_MACHINE_2 */ {
        /* Anim */ anim_cat_machine_button_left,
        /* Vec2 */ &D_08cda144
    },
    /* LOVE_MACHINE */ {
        /* Anim */ anim_love_machine_button_left,
        /* Vec2 */ &D_08cdd100
    },
    /* RAP_MACHINE */ {
        /* Anim */ anim_rap_machine_button_left,
        /* Vec2 */ &D_08cdbaf0
    }
};

// [D_089e9c98] D-Pad Right GFX
struct RhythmToysSpriteData rhythm_toys_sprite_button_r[] = {
    /* CAT_MACHINE_1 */ {
        /* Anim */ anim_cat_machine_button_right,
        /* Vec2 */ &D_08cda148
    },
    /* CAT_MACHINE_2 */ {
        /* Anim */ anim_cat_machine_button_right,
        /* Vec2 */ &D_08cda148
    },
    /* LOVE_MACHINE */ {
        /* Anim */ anim_love_machine_button_right,
        /* Vec2 */ &D_08cdd104
    },
    /* RAP_MACHINE */ {
        /* Anim */ anim_rap_machine_button_right,
        /* Vec2 */ &D_08cdbaf4
    }
};

// [D_089e9cb8] Demo Icon GFX
struct RhythmToysSpriteData rhythm_toys_sprite_demo_icon[] = {
    /* CAT_MACHINE_1 */ {
        /* Anim */ anim_cat_machine_demo_icon,
        /* Vec2 */ &D_08cda128
    },
    /* CAT_MACHINE_2 */ {
        /* Anim */ anim_cat_machine_demo_icon,
        /* Vec2 */ &D_08cda128
    },
    /* LOVE_MACHINE */ {
        /* Anim */ anim_love_machine_demo_icon,
        /* Vec2 */ &D_08cdd0e4
    },
    /* RAP_MACHINE */ {
        /* Anim */ anim_rap_machine_demo_icon,
        /* Vec2 */ &D_08cdbadc
    }
};

// [D_089e9cd8] "Machine Respond to A/B Button" GFX
struct RhythmToysSpriteData rhythm_toys_sprite_machine_r[] = {
    /* CAT_MACHINE_1 */ {
        /* Anim */ anim_cat_machine_listen,
        /* Vec2 */ &D_08cda12c
    },
    /* CAT_MACHINE_2 */ {
        /* Anim */ anim_cat_machine_listen,
        /* Vec2 */ &D_08cda12c
    },
    /* LOVE_MACHINE */ {
        /* Anim */ anim_love_san_speak_short,
        /* Vec2 */ &D_08cdd0ec
    },
    /* RAP_MACHINE */ {
        /* Anim */ anim_rap_machine_rapper_yellow,
        /* Vec2 */ &D_08cdbafc
    },
};

// [D_089e9cf8] "Machine Respond to D-Pad" GFX
struct RhythmToysSpriteData rhythm_toys_sprite_machine_l[] = {
    /* CAT_MACHINE_1 */ {
        /* Anim */ anim_cat_machine_meow,
        /* Vec2 */ &D_08cda130
    },
    /* CAT_MACHINE_2 */ {
        /* Anim */ anim_cat_machine_meow,
        /* Vec2 */ &D_08cda130
    },
    /* LOVE_MACHINE */ {
        /* Anim */ anim_love_san_speak_long,
        /* Vec2 */ &D_08cdd0e8
    },
    /* RAP_MACHINE */ {
        /* Anim */ anim_rap_machine_rapper_red,
        /* Vec2 */ &D_08cdbaf8
    }
};

// [D_089e9d18] Rhythm Toys Sprite Data Table
struct RhythmToysSpriteData *rhythm_toys_sprite_table[] = {
    /* A_BUTTON   */ rhythm_toys_sprite_button_a,
    /* B_BUTTON   */ rhythm_toys_sprite_button_b,
    /* DPAD_UP    */ rhythm_toys_sprite_button_u,
    /* DPAD_DOWN  */ rhythm_toys_sprite_button_d,
    /* DPAD_LEFT  */ rhythm_toys_sprite_button_l,
    /* DPAD_RIGHT */ rhythm_toys_sprite_button_r,
    /* DEMO_ICON  */ rhythm_toys_sprite_demo_icon,
    /* MACHINE_R  */ rhythm_toys_sprite_machine_r,
    /* MACHINE_L  */ rhythm_toys_sprite_machine_l
};

// [D_089e9d3c] Rhythm Toy Demo Scripts
struct RhythmToysDemo *rhythm_toys_demo_table[] = {
    /* CAT1 */ cat_machine_demo_seq,
    /* CAT2 */ cat_machine_demo_seq,
    /* LOVE */ NULL,
    /* RAP  */ rap_machine_demo_seq
};

// [D_089e9d4c] Buffered Textures List
struct CompressedData *rhythm_toys_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e9d50] Graphics Table (Cat Machine)
struct GraphicsTable gfx_table_cat_machine[] = {
    /* BG Tileset */ {
        /* Src.  */ &cat_machine_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &cat_machine_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &cat_machine_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ cat_machine_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ cat_machine_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e9d98] Graphics Table (Confession Machine)
struct GraphicsTable gfx_table_love_machine[] = {
    /* BG Tileset */ {
        /* Src.  */ &love_machine_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &love_machine_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &love_machine_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ love_machine_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ love_machine_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e9de0] Graphics Table (Rap Machine)
struct GraphicsTable gfx_table_rap_machine[] = {
    /* BG Tileset */ {
        /* Src.  */ &rap_machine_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &rap_machine_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &rap_machine_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ rap_machine_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ rap_machine_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e9e28] Graphics Table Index
struct GraphicsTable *rhythm_toys_gfx_tables[] = {
    /* CAT1 */ gfx_table_cat_machine,
    /* CAT2 */ gfx_table_cat_machine,
    /* LOVE */ gfx_table_love_machine,
    /* RAP  */ gfx_table_rap_machine
};


  //  //  //  MACHINE DATA  //  //  //


// [D_089e9e38] Button Sprite Data IDs per Button Press
u8 rhythm_toys_button_anim_ids[] = {
    /* A */ RHYTHM_TOYS_SPRITE_A_BUTTON,
    /* B */ RHYTHM_TOYS_SPRITE_B_BUTTON,
    /* U */ RHYTHM_TOYS_SPRITE_DPAD_UP,
    /* D */ RHYTHM_TOYS_SPRITE_DPAD_DOWN,
    /* L */ RHYTHM_TOYS_SPRITE_DPAD_LEFT,
    /* R */ RHYTHM_TOYS_SPRITE_DPAD_RIGHT
};

// [D_089e9e40] Demo BPM Table
u16 *rhythm_toys_demo_bpm_table[] = {
    /* CAT1 */ &cat_machine_demo_bpm,
    /* CAT2 */ &cat_machine_demo_bpm,
    /* LOVE */ &love_machine_demo_bpm,
    /* RAP  */ &rap_machine_demo_bpm
};

// [D_089e9e50] Machine Sprite Data IDs per Button Press
u8 rhythm_toys_machine_anim_ids[] = {
    /* A */ RHYTHM_TOYS_SPRITE_MACHINE_R,
    /* B */ RHYTHM_TOYS_SPRITE_MACHINE_R,
    /* U */ RHYTHM_TOYS_SPRITE_MACHINE_L,
    /* D */ RHYTHM_TOYS_SPRITE_MACHINE_L,
    /* L */ RHYTHM_TOYS_SPRITE_MACHINE_L,
    /* R */ RHYTHM_TOYS_SPRITE_MACHINE_L
};

// [D_089e9e58] Rhythm Toys Play Functions
RhythmToysPlayFunc rhythm_toys_play_func_table[] = {
    /* CAT1 */ rhythm_toys_cat_machine_play,
    /* CAT2 */ rhythm_toys_cat_machine_play,
    /* LOVE */ rhythm_toys_love_machine_play,
    /* RAP  */ rhythm_toys_rap_machine_play
};


  //  //  //  CUE DATA  //  //  //


// [D_089e9e68] Cue 00 (Default)
struct CueDefinition rhythm_toys_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ rhythm_toys_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ rhythm_toys_cue_update,
    /* Func. Despawn   */ rhythm_toys_cue_despawn,
    /* Func. Hit       */ rhythm_toys_cue_hit,
    /* Func. Barely    */ rhythm_toys_cue_barely,
    /* Func. Miss      */ rhythm_toys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e9ea8] Cue Definition Index
struct CueDefinition *rhythm_toys_cue_index[] = {
    /* 0x00 */ &rhythm_toys_cue_default,
    /* 0x01 */ NULL,
    /* 0x02 */ NULL,
    /* 0x03 */ NULL,
    /* 0x04 */ NULL,
    /* 0x05 */ NULL,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ NULL,
    /* 0x09 */ NULL,
    /* 0x0A */ NULL,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e9edc] Common Events
EngineEvent rhythm_toys_common_events[] = {
    /* BEAT_ANIMATION */ rhythm_toys_common_beat_animation,
    /* DISPLAY_TEXT   */ rhythm_toys_common_display_text,
    /* INIT_TUTORIAL  */ rhythm_toys_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e9eec] Engine Events
EngineEvent rhythm_toys_engine_events[] = {
    /* 0x00 */ rhythm_toys_engine_event_stub
};

// [D_089e9ef0] Rhythm Toys Game Engine
struct GameEngine rhythm_toys_engine = {
    /* Size in Memory */ sizeof(struct RhythmToysEngineData),
    /* Start Engine   */ rhythm_toys_engine_start,
    /* Update Engine  */ rhythm_toys_engine_update,
    /* Stop Engine    */ rhythm_toys_engine_stop,
    /* Cue Index      */ rhythm_toys_cue_index,
    /* Common Events  */ rhythm_toys_common_events,
    /* Engine Events  */ rhythm_toys_engine_events,
    /* Input Event    */ rhythm_toys_input_event
};
