#pragma once


  //  //  //  GBA GRAPHICS SPECS  //  //  //


#define SCREEN_WIDTH 240
#define SCREEN_HEIGHT 160
#define SCREEN_CENTER_X (SCREEN_WIDTH / 2)
#define SCREEN_CENTER_Y (SCREEN_HEIGHT / 2)

#define BG_TILESET_BASE(offset)  (void *)(VRAMBase + (offset))
#define BG_MAP_BASE(offset)      (void *)(VRAMBase + (offset))
#define OBJ_TILESET_BASE(offset) (void *)(VRAMBase + 0x10000 + (offset))

#define GET_BG_TILESET_ADDR(tileset, ofs) ((u16 *)(VRAMBase + ((tileset) << 14) + (ofs)))
#define GET_BG_MAP_ADDR(map, x, y)        (((u16 *)VRAMBase) + ((map) << 10) + (x) + ((y) << 5))

enum BGLayersEnum {
    BG_LAYER_0,
    BG_LAYER_1,
    BG_LAYER_2,
    BG_LAYER_3
};


  //  //  //  OBJECT ANIMATION  //  //  //


struct OAM {
    // Attribute 0
    u16 yPos:8;
    u16 affineFlag:1;
    u16 objDisable:1;
    u16 objMode:2;
    u16 objMosaic:1;
    u16 paletteMode:1;
    u16 objShape:2;

    // Attribute 1
    u16 xPos:9;
    u16 unused:3;
    u16 hFlip:1;
    u16 vFlip:1;
    u16 objSize:2;

    // Attribute 2
    u16 tileNum:10;
    u16 priority:2;
    u16 palette:4;
};

struct AffineOAM {
    // Attribute 0
    u16 yPos:8;
    u16 affineFlag:1;
    u16 doubleSize:1;
    u16 objMode:2;
    u16 objMosaic:1;
    u16 paletteMode:1;
    u16 objShape:2;

    // Attribute 1
    u16 xPos:9;
    u16 affineParam:5;
    u16 objSize:2;

    // Attribute 2
    u16 tileNum:10;
    u16 priority:2;
    u16 palette:4;
};

typedef u16 AnimationCel;

struct Animation {
    AnimationCel *cel;
    u8 duration;
};

#define END_ANIMATION { NULL, 0 }


  //  //  //  PALETTE  //  //  //


/* Standard RGB555 colors. */
#define COLOR_BLACK 0x0000
#define COLOR_WHITE 0x7FFF

typedef u16 Palette[16];
typedef u16 FontPalette[4];

/* Convenience macro which converts RGB888 to RGB555. */
#define TO_RGB555(x)                        \
      (((((x) >> 16) & 0xFF) >> 3) << 0 )   \
    | (((((x) >> 8 ) & 0xFF) >> 3) << 5 )   \
    | (((((x) >> 0 ) & 0xFF) >> 3) << 10)


  //  //  //  GRAPHICS BUFFER  //  //  //


#define DISPCNT_DISPLAY_BG(x)       ((1 << 8) << (x))
#define DISPCNT_ENABLE_WINDOW(x)    ((1 << 13) << (x))
#define BGCNT_PRIORITY(x)           ((x) << 0)
#define BGCNT_TILEDATA_ADDR(x)      ((x) << 2)
#define BGCNT_TILEMAP_ADDR(x)       ((x) << 8)
#define BGCNT_TILEMAP_SIZE(x)       ((x) << 14)
#define MOSAIC_BG_XSIZE(x)          ((x) << 0)
#define MOSAIC_BG_YSIZE(y)          ((y) << 4)
#define MOSAIC_SPR_XSIZE(x)         ((x) << 8)
#define MOSAIC_SPR_YSIZE(y)         ((y) << 12)
#define BLDMOD_BLEND_MODE(x)        ((x) << 6)
#define COLEV_SRC_PIXEL(x)          ((x) << 0)
#define COLEV_TGT_PIXEL(x)          ((x) << 8)

struct AffineBG {
    u16 dx;
    u16 dmx;
    u16 dy;
    u16 dmy;
    u32 xRef;
    u32 yRef;
};

/*
** Global buffer for all read/writes to graphics-related IO registers.
*/
extern struct GraphicsBuffer {
    u16 DISPCNT;
    u16 unk2;
    u16 BG_CNT[4]; // (IORAMBase + 0x8)
    struct Vector2 BG_OFS[4];
    struct AffineBG affineBG[2];
    u16 WIN0H; // (IORAMBase + 0x40)
    u16 WIN1H;
    u16 WIN0V;
    u16 WIN1V;
    u16 WININ;
    u16 WINOUT;
    u16 MOSAIC;
    u16 unk4A;
    u16 BLDMOD;
    u16 COLEV;
    u16 COLEY;
    u16 unk52;
    u16 bgPalette[16][16]; // (0x03004b64; D_03004b10 + 0x54)
    u16 objPalette[16][16]; // (0x03004d64; D_03004b10 + 0x254)
    u32 oam[0x100]; // (0x03004f64; D_03004b10 + 0x454)
    u16 updateDisplay:1; // Buffer Settings (0x854)
    u16 unk854_1:1;
    u16 unk854_2:1;
    u16 unk854_3:1;
    u16 unk854_4:12;
    void (*modifyPalette)(Palette *);
} D_03004b10;

#define BG_PALETTE_BUFFER(p)    ((u16 *)D_03004b10.bgPalette)  + ((u32)((p) * 16))
#define OBJ_PALETTE_BUFFER(p)   ((u16 *)D_03004b10.objPalette) + ((u32)((p) * 16))


  //  //  //  SPRITE HANDLER (LIBRARY)  //  //  //


extern struct SpriteHandler *gSpriteHandler; // gSpriteHandler


  //  //  //  SCENE GRAPHICS  //  //  //


/*
** Data compressed with an unknown algorithm that uses sliding windows.
**  Specifically must only be used as an additional layer of compression on top
**  of RLE encoding.
**  This is only ever used for textures/charsets, as the varied pixel data and
**  sheer size makes RLE largely ineffective on its own.
*/
struct CompressedGFX {
    const u16 *data;
    u16 size;
    u16 count;
    const u32 *window1;
    const u32 *window2;
};

/*
** Data compressed with a standard Run-Length Encoding (RLE).
**  The source data itself may either be stored as immediate 16-bit shorts, or
**  further compressed in the format above. The former is used for BG Map data,
**  while the latter is used for textures/charsets.
*/
struct CompressedData {
    const void *data;
    const u8 *rleData;
    u16 rleSize;
    u16 rleOffset;
    u8 doubleCompressed;
};

/*
** Textures can have their data decompressed and buffered to memory
** for background loading and faster texture swapping. This has to be done
** before Graphics Tables are loaded to avoid redundancy.
**  Scenes and Engines typically include a list of such textures, and code for
**  loading the buffered textures and graphics tables in sequence before
**  displaying anything to the screen. However, these lists are almost always
**  empty, since the use case does not occur frequently, and swapping BG Maps is
**  almost always a better, faster choice.
*/
#define END_OF_BUFFERED_TEXTURES_LIST NULL

/*
** Table entry denoting a source graphics asset, a target address in memory,
** and either its exact size or a source data format indicator.
**  A size greater than 0 indicates that the source data is.
**  A size of -1 indicates that the source is RLE-compressed.
**  A size of -2 indicates that the source is a function which generates data.
**  A size of 0 will be ignored entirely, but does not indicate the last entry.
**
** Since Graphics Tables are read as arrays, the order in which elements are
** written matters, which is notably important for palettes. Additionally,
** there must always be a null entry at the end of the array to avoid undefined
** behaviour.
**
** Due to the existence of the Graphics Buffer, the destination address for
** palettes is always within the buffer, not Palette RAM.
*/
struct GraphicsTable {
    const void *src;
    void *dest;
    s32 size;
};

#define COMPRESSED_GFX_SOURCE   -1
#define FUNCTION_GFX_SOURCE     -2

/* Asset-generating functions are assumed to be in this format only. */
typedef void (*GfxTableSrcFunc)(void *dest);

/* For convenience, some Graphics Table entry types have one-line macros: */
#define ADD_BG_TEXTURE(tex, tilesetNum)      { (tex),  BG_TILESET_BASE((tilesetNum) << 14),  COMPRESSED_GFX_SOURCE }
#define ADD_OBJ_TEXTURE(tex, tilesetNum)     { (tex),  OBJ_TILESET_BASE((tilesetNum) << 14), COMPRESSED_GFX_SOURCE }
#define ADD_BG_MAP(map, mapNum)              { (map),  BG_MAP_BASE((mapNum) << 11),          COMPRESSED_GFX_SOURCE }
#define ADD_BG_MAP_S(map, mapNum, size)      { (map),  BG_MAP_BASE((mapNum) << 11),          (size)                }
#define ADD_BG_PALETTE(pal, palNum, colors)  { (pal),  BG_PALETTE_BUFFER((palNum)),          ((colors) << 1)       }
#define ADD_OBJ_PALETTE(pal, palNum, colors) { (pal),  OBJ_PALETTE_BUFFER((palNum)),         ((colors) << 1)       }
#define ADD_CUSTOM_GFX_LOADER(func, dest)    { (func), (dest),                               FUNCTION_GFX_SOURCE   }
#define END_OF_GRAPHICS_TABLE                { NULL,   NULL,                                 0                     }
