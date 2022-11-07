#include "global.h"
#include "graphics.h"
#include "data_0805a5d0.h"


/* Samurai Slice */


// Blank Text
const char D_0805a5d0[] = "";

// ?
extern const struct Animation D_088ebbb4[];
extern const struct Animation D_088eba24[];
extern const struct Animation D_088eba7c[];
extern const struct Animation D_088eba24[];
extern const struct Animation D_088ebacc[];
extern const struct Animation D_088ebb3c[];
extern const struct Animation D_088ebb84[];
extern const struct Animation D_088ebb94[];
extern const struct Animation D_088eba34[];
extern const struct Animation D_088eba8c[];
extern const struct Animation D_088ebadc[];
extern const struct Animation D_088ebb4c[];
extern const struct Animation D_088ebba4[];

const struct SamuraiSlice_0805a5d4 D_0805a5d4[] = {
    { D_088ebbb4, 0x80, -0x200 },
    { D_088eba24, 0x80, -0x300 },
    { D_088eba7c, 0x80, -0x300 },
    { D_088eba24, 0x80, -0x300 },
    { D_088ebacc, 0x80, -0x500 },
    { D_088ebb3c, 0x80, -0x300 },
    { D_088ebb84, 0x80, -0x400 },
    { D_088ebb94, 0x80, -0x400 },
    { D_088eba34, 0x80, 0x100 },
    { D_088eba8c, 0x80, 0x100 },
    { D_088ebadc, 0x80, 0x100 },
    { D_088ebb4c, 0x80, 0x100 },
    { D_088ebba4, 0x80, 0x100 },
};


/* Marching Orders */


const char D_0805a670[] = "";


/* Mr. Upbeat */


const char D_0805a674[] =
    "しんきろく！";

const char D_0805a684[] =
    "おつかれさま";


/* Metronome */


const char D_0805a694[] =
    "音にあわせて、　Ａボタンを押しましょう。";

const char D_0805a6c0[] =
    "計測中";

const char D_0805a6c8[] =
    "計測おわり！ さて、 結果は…";


/* LIVE Menu */


//
const char D_0805a6e8[] =
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "Drum Samurai's\n"
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "\x01\x52" "Band LIVE! \n"
    "\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "\x01\x4c" "　　　　　　　　　　♪　コスモダンス\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　　　　　　　♪　バリバリ三人衆\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　　　　　　　♪　スーパータップ\n"
    "\n";

const char D_0805a7a8[] =
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "Drum Boys LIVE!\n"
    "\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　♪　パチパチ三人衆\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　♪　タップダンズ\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　♪　WISH 君を待てなくて\n"
    "\n";

const char D_0805a830[] =
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "Drum Girls LIVE!\n"
    "\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "♪　ナイトウォーク\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "♪　スペースダンス\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "♪　恋のハニースイ～トエンジェル\n"
    "\n";


/* Bunny Hop */


const char D_0805a8ac[] =
    "";


/* Rap Men */


const char D_0805a8b0[] =
    "";


/* Rat Race */


const char D_0805a8b4[] =
    "";


/* Space Dance */


const char D_0805a8b8[] =
    "";


/* Tap Trial */


const char D_0805a8bc[] =
    "";

const char D_0805a8c0[] =
    "ホレたー！！";

const char D_0805a8d0[] =
    "イカスッす！！";

const char D_0805a8e0[] =
    "テクニシャン！";

const char D_0805a8f0[] =
    "カッコイイ！！";

const char D_0805a900[] =
    "うまいっス！！";


/* Tram & Pauline */


const char D_0805a910[] = "";

const u32 D_0805a914[] = { 0x18, 0x18 };

const u32 D_0805a91c[] = { 0x48, 0x48 };


/* Horse Machine */


extern const struct CompressedGraphics D_08d11ef4;
extern const struct CompressedGraphics D_08d17708;
extern const struct CompressedGraphics D_08d10b60;
extern const struct CompressedGraphics D_08d1737c;
extern const struct CompressedGraphics D_08d0ef74;
extern const struct CompressedGraphics D_08d17048;
extern const struct CompressedGraphics D_08d0c580;
extern const struct CompressedGraphics D_08d16c34;
extern const struct CompressedGraphics D_08d0bfc8;
extern const struct CompressedGraphics D_08d16998;
extern const struct CompressedGraphics D_08d0af74;
extern const struct CompressedGraphics D_08d16648;

// [D_0805a924] Horse Machine BG - Graphics Table 0
const struct GraphicsTable D_0805a924[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d11ef4,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d17708,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a948] Horse Machine BG - Graphics Table 1
const struct GraphicsTable D_0805a948[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d10b60,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d1737c,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a96c] Horse Machine BG - Graphics Table 2
const struct GraphicsTable D_0805a96c[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d0ef74,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d17048,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a990] Horse Machine BG - Graphics Table 3
const struct GraphicsTable D_0805a990[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d0c580,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d16c34,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a9b4] Horse Machine BG - Graphics Table 4
const struct GraphicsTable D_0805a9b4[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d0bfc8,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d16998,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a9d8] Horse Machine BG - Graphics Table 5
const struct GraphicsTable D_0805a9d8[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d0af74,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d16648,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

const char D_0805a9fc[] = "";

