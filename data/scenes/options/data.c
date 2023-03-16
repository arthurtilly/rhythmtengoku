#include "global.h"
#include "graphics.h"
#include "src/scenes/options.h"
#include "graphics/options/options_graphics.h"


  /* OPTIONS MENU - SCENE DATA */


// [D_089cfac8] Graphics Table
struct GraphicsTable options_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c76d80,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c77244,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c76ca4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ options_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ options_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089cfb10] Buffered Textures List
struct CompressedGraphics *options_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_08054950] Data Clear Confirmation Options
        // Erase ALL data?
        //　　　　　　　Erase
        //　　　　　　　Cancel
const char options_data_clear_confirm_text[] =
        "\x02\x33" "\x01\x33" "\x01\x43" "ホントに消すの？\n"
        "\x02\x31" "\x01\x31" "\x01\x4c" "　　　　　　　はい\n"
        "　　　　　　　いいえ";


// [D_089cfb14] Option Descriptions
    /* -------------------------------- */
        // Sound Mode
        // <Stereo>  For headphones, Nintendo DS, etc.
        // <Mono>  For GBAs without headphones.
    /* -------------------------------- */
        // Clear Save Data
        // Erase progress, gifts, drum lessons,
        // <everything>! Think about it!
    /* -------------------------------- */

const char *options_desc_text[] = {
    /* SOUND MODE ------------------------------------- */
        "\x02\x33" "\x01\x33" "\x01\x43" "サウンドモード\n"
        "\x02\x31" "\x01\x31" "\x01\x4c" "ステレオ　　ヘッドホンならこっち！オススメ！\n"
        "モノラル　　本体のスピーカーならこっち。",
    /* DATA CLEAR ------------------------------------- */
        "\x02\x33" "\x01\x33" "\x01\x43" "データのクリア\n"
        "\x02\x31" "\x01\x31" "\x01\x4c" "いままでの記録を全部けして、はじめから\n"
        "やりなおします。よく考えてネ！"
    /* ------------------------------------------------ */
};


// [D_089cfb1c] Audio Options
struct Animation *options_sound_mode_anim[][2] = {
    /* Stereo */ {
        /* Selected   */ anim_options_select_stereo,
        /* Unselected */ anim_options_off_stereo
    },
    /* Monaural */ {
        /* Selected   */ anim_options_select_mono,
        /* Unselected */ anim_options_off_mono
    }
};
