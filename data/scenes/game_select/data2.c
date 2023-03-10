#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/task_pool.h"
#include "src/scenes/game_select.h"
#include "graphics/game_select/game_select_graphics.h"
#include "text/game_select_text.h"


  /* GAME SELECT - SCENE DATA (continued) */


// [D_089cf90c] ? (related to Game Icons)
u8 D_089cf90c[] = {
    /* 0x00 */ 1,
    /* 0x01 */ 0,
    /* 0x02 */ 2,
    /* 0x03 */ 0,
    /* 0x04 */ 0,
    /* 0x05 */ 0,
    /* 0x06 */ 0,
    /* 0x07 */ 0,
    /* 0x08 */ 0,
    /* 0x09 */ 0,
    /* 0x0A */ 0,
    /* 0x0B */ 0,
    /* 0x0C */ 0,
    /* 0x0D */ 0,
    /* 0x0E */ 0,
    /* 0x0F */ 0,
    /* 0x10 */ 1,
    /* 0x11 */ 1,
    /* 0x12 */ 0,
    /* 0x13 */ 2,
    /* 0x14 */ 0,
    /* 0x15 */ 0,
    /* 0x16 */ 2,
    /* 0x17 */ 0,
    /* 0x18 */ 1,
    /* 0x19 */ 0,
    /* 0x1A */ 0,
    /* 0x1B */ 2,
    /* 0x1C */ 0,
    /* 0x1D */ 0,
    /* 0x1E */ 0,
    /* 0x1F */ 0,
    /* 0x20 */ 1,
    /* 0x21 */ 2,
    /* 0x22 */ 2,
    /* 0x23 */ 1,
    /* 0x24 */ 0,
    /* 0x25 */ 2,
    /* 0x26 */ 0,
    /* 0x27 */ 2,
    /* 0x28 */ 0,
    /* 0x29 */ 0,
    /* 0x2A */ 0,
    /* 0x2B */ 1,
    /* 0x2C */ 0,
    /* 0x2D */ 0,
    /* 0x2E */ 0,
    /* 0x2F */ 0,
    /* 0x30 */ 0,
    /* 0x31 */ 0,
    /* 0x32 */ 3,
    /* 0x33 */ 0,
    /* 0x34 */ 0,
    /* 0x35 */ 4
};

// [D_089cf944] Scene Objects
union SceneObject game_select_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};

// [D_089cf948] Graphics Table
struct GraphicsTable game_select_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cc9854,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc9d14,
        /* Dest. */ BG_MAP_BASE(0xB000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc9e14,
        /* Dest. */ BG_MAP_BASE(0xB800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cc9148,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ game_select_bg_icon_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x100
    },
    /* BG Palette */ {
        /* Src.  */ game_select_bg_overlay_pal,
        /* Dest. */ BG_PALETTE_BUFFER(8),
        /* Size  */ 0x100
    },
    /* OBJ Palette */ {
        /* Src.  */ game_select_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089cf9a8] Buffered Textures List
struct CompressedGraphics *game_select_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089cf9ac] Stage Title Text Animations (by Grid X Pos.)
struct Animation *game_select_column_title_anim[] = {
    /* 0x00 */ anim_game_select_stage0,
    /* 0x01 */ anim_game_select_stage0,
    /* 0x02 */ anim_game_select_stage1,
    /* 0x03 */ anim_game_select_stage2,
    /* 0x04 */ anim_game_select_stage3,
    /* 0x05 */ anim_game_select_stage4,
    /* 0x06 */ anim_game_select_stage5,
    /* 0x07 */ anim_game_select_stage6,
    /* 0x08 */ anim_game_select_stage7,
    /* 0x09 */ anim_game_select_stage8,
    /* 0x0A */ anim_game_select_stage0,
    /* 0x0B */ anim_game_select_stage0,
    /* 0x0C */ anim_game_select_stage0,
    /* 0x0D */ anim_game_select_stage0,
    /* 0x0E */ anim_game_select_stage0
};

// [D_089cf9e8] Rank Text (by Completion Level)
const char *game_select_rank_text[] = {
    /* 0x00 */ text_game_select_rank_none,
    /* 0x01 */ text_game_select_rank_none,
    /* 0x02 */ text_game_select_rank_none,
    /* 0x03 */ text_game_select_rank_none,
    /* 0x04 */ text_game_select_rank_ok,
    /* 0x05 */ text_game_select_rank_superb
};

// [D_089cfa00] Rank Text Palette (by Completion Level)
u8 game_select_rank_palette[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 0,
    /* 0x02 */ 0,
    /* 0x03 */ 0,
    /* 0x04 */ 9,
    /* 0x05 */ 10,
    /* 0x06 */ 0,
    /* 0x07 */ 0
};

extern const u8 D_089055c0[];
extern const u8 D_08903ac0[];
extern const u8 D_08903640[];
extern const u8 D_08904180[];
extern const u8 D_089039a0[];
extern const u8 D_08903be0[];
extern const u8 D_089031c0[];

// [D_089cfa08] Overlay Data
struct GameSelectOverlay D_089cfa08 = {
    /* unk0    */ 3,
    /* unk1    */ 3,
    /* Texture */ D_089055c0,
    /* unk8    */ D_080548e8
};

// [D_089cfa14] Overlay Data
struct GameSelectOverlay D_089cfa14 = {
    /* unk0    */ 3,
    /* unk1    */ 3,
    /* Texture */ D_08903ac0,
    /* unk8    */ D_080548e8
};

// [D_089cfa20] Overlay Data
struct GameSelectOverlay D_089cfa20 = {
    /* unk0    */ 3,
    /* unk1    */ 3,
    /* Texture */ D_08903640,
    /* unk8    */ D_080548e8
};

// [D_089cfa2c] Overlay Data
struct GameSelectOverlay D_089cfa2c = {
    /* unk0    */ 3,
    /* unk1    */ 3,
    /* Texture */ D_08903640,
    /* unk8    */ D_080548eb
};

// [D_089cfa38] Overlay Data
struct GameSelectOverlay D_089cfa38 = {
    /* unk0    */ 3,
    /* unk1    */ 3,
    /* Texture */ D_08904180,
    /* unk8    */ D_080548f0
};

// [D_089cfa44] Overlay Data
struct GameSelectOverlay D_089cfa44 = {
    /* unk0    */ 3,
    /* unk1    */ 3,
    /* Texture */ D_08904180,
    /* unk8    */ D_08054915
};

// [D_089cfa50] Overlay Data
struct GameSelectOverlay D_089cfa50 = {
    /* unk0    */ 3,
    /* unk1    */ 3,
    /* Texture */ D_089039a0,
    /* unk8    */ D_080548e8
};

// [D_089cfa5c] Overlay Data
struct GameSelectOverlay D_089cfa5c = {
    /* unk0    */ 3,
    /* unk1    */ 3,
    /* Texture */ D_08903be0,
    /* unk8    */ D_0805493a
};

// [D_089cfa68] Overlay Data
struct GameSelectOverlay D_089cfa68 = {
    /* unk0    */ 3,
    /* unk1    */ 3,
    /* Texture */ D_089031c0,
    /* unk8    */ D_08054945
};

// [D_089cfa74] Overlay Data Table
struct GameSelectOverlay *D_089cfa74[] = {
    /* 0x00 */ &D_089cfa14,
    /* 0x01 */ &D_089cfa20,
    /* 0x02 */ &D_089cfa38,
    /* 0x03 */ &D_089cfa50,
    /* 0x04 */ &D_089cfa5c,
    /* 0x05 */ &D_089cfa2c,
    /* 0x06 */ &D_089cfa44,
    /* 0x07 */ &D_089cfa68,
    /* 0x08 */ NULL
};

// [D_089cfa98] ?
u8 D_089cfa98[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 0,
    /* 0x02 */ 1,
    /* 0x03 */ 2,
    /* 0x04 */ 3,
    /* 0x05 */ 4
};

// [D_089cfa9e] ?
u8 D_089cfa9e[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 0,
    /* 0x02 */ 5,
    /* 0x03 */ 6,
    /* 0x04 */ 3,
    /* 0x05 */ 4
};

// [D_089cfaa4] ?
u8 D_089cfaa4[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 0,
    /* 0x02 */ 1,
    /* 0x03 */ 2,
    /* 0x04 */ 7,
    /* 0x05 */ 4
};

// [D_089cfaac] ?
u8 *D_089cfaac[] = {
    /* 0x00 */ D_089cfa98,
    /* 0x01 */ D_089cfa9e,
    /* 0x02 */ D_089cfaa4
};

// [D_089cfab8] Task
struct TaskMethods D_089cfab8 = {
    (TaskStartFunc)func_08015940,
    NULL,
    (TaskUpdateFunc)func_08015988,
    NULL,
};
