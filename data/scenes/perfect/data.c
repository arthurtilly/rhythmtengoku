#include "global.h"
#include "graphics.h"
#include "src/scenes/perfect.h"
#include "graphics/perfect/perfect_certificate_graphics.h"


  /* PERFECT CERTIFICATE - SCENE DATA */


// [D_089cfc38] Graphics Table
struct GraphicsTable perfect_certificate_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08ccc138,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08ccc39c,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ perfect_certificate_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ perfect_certificate_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089cfc74] Buffered Textures List
struct CompressedGraphics *perfect_certificate_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089cfc78] Gift Directive Text (by Type)
        // You can listen to it in the studio.
        // You can play it in the studio.
        // You can read it in your e-mail.
        //
const char *perfect_gift_directive_text[] = {
    /* Song     */ "（スタジオで　きけるヨ） \n",
    /* Drum Kit */ "（スタジオで　たたけるヨ）\n",
    /* E-Mail   */ "（リズム資料室で　見れるヨ）\n",
    /* Other    */ "",
};


// [D_089cfc88] ? (something to do with song gifts?)
s8 D_089cfc88[] = {
    11, 14, 15, 16, 17, 18, 19, 20, 23, 24, 26, 27,
    28, 29, 30, 31, 38, 39, 40, 41, 42, 43, 44, -1
};


//
const char D_08054acc[] = "\x02\x31" "\x01\x31" "\x01\x43" "\x03\x30" "\x01\x73" "\x05\x34" "\x01\x38" "「";


//
const char D_08054ae0[] = "」";


//
const char D_08054ae4[] = "の曲";


// You've earned a gift!
const char D_08054aec[] = "\x02\x30" "\x01\x30" "をプレゼント！\n";


//
const char D_08054b00[] = "プレゼントは　あと　" "\x02\x31" "\x01\x31";


// gifts
// left to get. Keep going!
const char D_08054b1c[] = "コ" "\x02\x30" "\x01\x30" "　あるから、\n"
    "他のキャンペーンにもチャレンジしてみてネ！";


// 0 gifts left.
// You finally got them all!
const char D_08054b5c[] = "プレゼントは　これで" "\x02\x31" "\x01\x31" "オシマイ" "\x02\x30" "\x01\x30" "です。\n";


// Congratulations!
const char D_08054b88[] = "パーフェクトキャンペーン、コンプリートです！";
