#include "global.h"
#include "text.h"
#include "graphics.h"

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


/* Horse Machine */


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

// Empty String
const char D_0805a9fc[] = "";

// ?
const s32 D_0805aa00[] = {
    3, 3, 2, 3
};

// ?
const s32 D_0805aa10[] = {
    3, 3, 2, 3
};

// ?
const s32 D_0805aa20[] = {
    0x60,  0x80,  0xc0,  0x100,
    0x200, 0x400, 0x600, 0x800
};

// ?
const s32 D_0805aa40[] = {
    -0x200, -0x280, -0x300, -0x300,
    -0x400, -0x380, -0x500, -0x400
};

// ? (duration values)
const u32 D_0805aa60[][4] = {
    { 0x10, 0x20, 0x10, 0x20 },
    { 0x18, 0x18, 0x18, 0x18 },
    { 0x18, 0x0C, 0x0C, 0x00 },
    { 0x18, 0x0C, 0x0C, 0x0C }
};

const s32 D_0805aaa0[] = {
    0xd800, 0x14000, 0x1e000, 0x28000
};

const s32 D_0805aab0[][4] = {
    { 0x4c, 0x6c, 0x84, 0xa4 },
    { 0x48, 0x68, 0x88, 0xa8 },
    { 0x60, 0x78, 0x90, -0x40 },
    { 0x5a, 0x6e, 0x82, 0x98 },
};
