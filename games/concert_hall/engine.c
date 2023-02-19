#include "engines/concert_hall.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e5c40] Buffered Textures List
struct CompressedGraphics *concert_hall_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e5c44] Graphics Table
struct GraphicsTable concert_hall_gfx_table[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c79bb0,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ concert_hall_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ concert_hall_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e5c74] Poster Descriptions
const char *concert_hall_poster_desc[] = {
    /* DRUM GIRLS */
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "Drum Girls LIVE!\n"
    "\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "♪　ナイトウォーク\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "♪　スペースダンス\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "♪　恋のハニースイ～トエンジェル\n"
    "\n",
    
    /* DRUM BOYS  */
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "Drum Boys LIVE!\n"
    "\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　♪　パチパチ三人衆\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　♪　タップダンズ\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　♪　WISH 君を待てなくて\n"
    "\n",

    /* DRUM BAND  */
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "Drum Samurai's\n"
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "\x01\x52" "Band LIVE! \n"
    "\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "\x01\x4c" "　　　　　　　　　　♪　コスモダンス\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　　　　　　　♪　バリバリ三人衆\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　　　　　　　♪　スーパータップ\n"
    "\n"
};


  //  //  //  CUE DATA  //  //  //


// [D_089e5c80] Cue 00 (Default)
struct CueDefinition concert_hall_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ concert_hall_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ concert_hall_cue_update,
    /* Func. Despawn   */ concert_hall_cue_despawn,
    /* Func. Hit       */ concert_hall_cue_hit,
    /* Func. Barely    */ concert_hall_cue_barely,
    /* Func. Miss      */ concert_hall_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5cc0] Cue Definition Index
struct CueDefinition *concert_hall_cue_index[] = {
    /* 0x00 */ &concert_hall_cue_default,
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


// [D_089e5cf4] Common Events
EngineEvent concert_hall_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) concert_hall_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) concert_hall_common_display_text,
    /* INIT_TUTORIAL  */ (EngineEvent) concert_hall_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e5d04] Engine Events
EngineEvent concert_hall_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08036f94,
    /* 0x01 */ (EngineEvent) concert_hall_engine_event_stub
};

// [D_089e5d0c] LIVE Menu Game Engine
struct GameEngine concert_hall_engine = {
    /* Size in Memory */ 0x1c,
    /* Start Engine   */ concert_hall_engine_start,
    /* Update Engine  */ concert_hall_engine_update,
    /* Stop Engine    */ concert_hall_engine_stop,
    /* Cue Index      */ concert_hall_cue_index,
    /* Common Events  */ concert_hall_common_events,
    /* Engine Events  */ concert_hall_engine_events,
    /* Input Event    */ concert_hall_input_event
};
