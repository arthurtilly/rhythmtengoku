#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/scenes/main_menu.h"
#include "graphics/main_menu/main_menu_graphics.h"


  /* MAIN MENU - SCENE DATA */


// [D_089cdc40] SceneObjects
union SceneObject main_menu_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};

// [D_089cdc44] Graphics Table
struct GraphicsTable main_menu_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08ccb374,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08ccb840,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08ccb298,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ main_menu_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ main_menu_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089cdc8c] Buffered Textures List
struct CompressedGraphics *main_menu_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089cdc90] Buttons (Selected)
struct Animation *main_menu_button_on_anim[] = {
    /* Game Select  */ anim_main_menu_button_on_game_select,
    /* Rhythm Test  */ anim_main_menu_button_on_rhythm_test,
    /* R. Data Room */ anim_main_menu_button_on_data_room,
    /* Studio Menu  */ anim_main_menu_button_on_studio,
    /* Options Menu */ anim_main_menu_button_on_options
};

// [D_089cdca4] Buttons (Unselected)
struct Animation *main_menu_button_off_anim[] = {
    /* Game Select  */ anim_main_menu_button_off_game_select,
    /* Rhythm Test  */ anim_main_menu_button_off_rhythm_test,
    /* R. Data Room */ anim_main_menu_button_off_data_room,
    /* Studio Menu  */ anim_main_menu_button_off_studio,
    /* Options Menu */ anim_main_menu_button_off_options
};
