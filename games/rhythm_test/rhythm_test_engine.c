#include "engines/rhythm_test.h"
#include "engines/night_walk.h"


  /* RHYTHM TEST - GAME ENGINE DATA */


extern const struct CompressedGraphics D_08c6a638;
extern const struct CompressedGraphics D_08c6a830;
extern const struct CompressedGraphics D_08c6a9c4;
extern const struct CompressedGraphics D_08c6ab24;
extern const struct CompressedGraphics D_08c6a350;
extern const Palette rhythm_test_pal[];


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e4c18] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick00[] = {
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0xa0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4c90] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick01[] = {
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 14,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x10
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x20
    },
    {
        /* Drum ID */ 14,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4cb8] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick02[] = {
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 14,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x10
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4ce8] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick03[] = {
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 14,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x10
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 14,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4d18] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick04[] = {
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 14,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x10
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4d48] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick05[] = {
    {
        /* Drum ID */ 2,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x10
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    {
        /* Drum ID */ 14,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4d78] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick06[] = {
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0xa0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4de8] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick07[] = {
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x80,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x50,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4e58] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick08[] = {
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x70,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4ec8] DrumTech Sequence
const struct DrumTechNote drum_seq_rhythm_test_trick09[] = {
    {
        /* Drum ID */ 34,
        /* Volume  */ 0x80,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0xa0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 8,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 20,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 36,
        /* Volume  */ 0,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e4f48] DrumTech Sequences
const struct DrumTechNote *const rhythm_test_trick_drum_seq[] = {
    /* 0x00 */ drum_seq_rhythm_test_trick00,
    /* 0x01 */ drum_seq_rhythm_test_trick01,
    /* 0x02 */ drum_seq_rhythm_test_trick02,
    /* 0x03 */ drum_seq_rhythm_test_trick03,
    /* 0x04 */ drum_seq_rhythm_test_trick04,
    /* 0x05 */ drum_seq_rhythm_test_trick05,
    /* 0x06 */ drum_seq_rhythm_test_trick06,
    /* 0x07 */ drum_seq_rhythm_test_trick07,
    /* 0x08 */ drum_seq_rhythm_test_trick08,
    /* 0x09 */ drum_seq_rhythm_test_trick09
};


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e4f70] Buffered Textures List
const struct CompressedGraphics *const rhythm_test_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e4f74] Graphics Table
const struct GraphicsTable rhythm_test_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c6a638,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c6a830,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c6a9c4,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c6ab24,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c6a350,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ rhythm_test_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ rhythm_test_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};


  //  //  //  CUE DATA  //  //  //


// [D_089e4fd4] Cue 00 (?)
const struct CueDefinition rhythm_test_cue_00 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x0A, 0x0A,
    /* Tempo-Dependent */ TRUE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ rhythm_test_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ rhythm_test_cue_update,
    /* Func. Despawn   */ rhythm_test_cue_despawn,
    /* Func. Hit       */ rhythm_test_cue_hit,
    /* Func. Barely    */ rhythm_test_cue_barely,
    /* Func. Miss      */ rhythm_test_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};


// [D_089e5014] Cue 01 (?)
const struct CueDefinition rhythm_test_cue_01 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x14, 0x14,
    /* Tempo-Dependent */ TRUE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ rhythm_test_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ rhythm_test_cue_update,
    /* Func. Despawn   */ rhythm_test_cue_despawn,
    /* Func. Hit       */ rhythm_test_cue_hit,
    /* Func. Barely    */ rhythm_test_cue_barely,
    /* Func. Miss      */ rhythm_test_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5054] Cue Definition Index
const struct CueDefinition *const rhythm_test_cue_index[] = {
    /* 0x00 */ &rhythm_test_cue_00,
    /* 0x01 */ &rhythm_test_cue_01,
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


// [D_089e5088] Common Events
const EngineEvent rhythm_test_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) rhythm_test_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) rhythm_test_common_display_text,
    /* INIT_TUTORIAL  */ (EngineEvent) rhythm_test_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e5098] Engine Events
const EngineEvent rhythm_test_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08033e00,
    /* 0x01 */ (EngineEvent) func_08033b24,
    /* 0x02 */ (EngineEvent) func_08033b34,
    /* 0x03 */ (EngineEvent) func_08033b9c,
    /* 0x04 */ (EngineEvent) func_08033f28,
    /* 0x05 */ (EngineEvent) func_08033960,
    /* 0x06 */ (EngineEvent) func_08033f80,
    /* 0x07 */ (EngineEvent) rhythm_test_engine_event_stub
};

// [D_089e50b8] Rhythm Test Game Engine
const struct GameEngine D_089e50b8 = {
    /* Size in Memory */ 0x3e8,
    /* Start Engine   */ rhythm_test_engine_start,
    /* Update Engine  */ rhythm_test_engine_update,
    /* Stop Engine    */ rhythm_test_engine_stop,
    /* Cue Index      */ rhythm_test_cue_index,
    /* Common Events  */ rhythm_test_common_events,
    /* Engine Events  */ rhythm_test_engine_events,
    /* Input Event    */ rhythm_test_input_event
};
