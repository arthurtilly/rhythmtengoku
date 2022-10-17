#pragma once


  //  //  //  GBA GRAPHICS SPECS  //  //  //


#define SCREEN_WIDTH 240
#define SCREEN_HEIGHT 160
#define SCREEN_CENTER_X (SCREEN_WIDTH/2)
#define SCREEN_CENTER_Y (SCREEN_HEIGHT/2)

enum BGLayersEnum {
    BG_LAYER_0,
    BG_LAYER_1,
    BG_LAYER_2,
    BG_LAYER_3
};


  //  //  //  OBJECT ANIMATION  //  //  //


typedef u16 AnimationCel;

struct Animation {
    const AnimationCel *cel;
    u8 duration;
};

#define END_ANIMATION { NULL, 0 }


  //  //  //  PALETTE  //  //  //


typedef u16 Palette[16];

#define TO_RGB555(x)                        \
      (((((x) >> 16) & 0xff) >> 3) << 0 )   \
    | (((((x) >> 8 ) & 0xff) >> 3) << 5 )   \
    | (((((x) >> 0 ) & 0xff) >> 3) << 10)


  //  //  //  FONT  //  //  //


// Read-Only Definition for a Font
struct FontDefinition {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 *font1Tiles;
    u8 *font1Map;
    u8 *font2Tiles;
    u8 *font2Map;
    u8 *font3Tiles;
    u8 *font3Map;
};

typedef void (*FontFunc)(u8 *, u8 *);

struct TextObject1 {
    u16 id; // mem_id
    const struct FontDefinition *data;
    u16 unk8;
    u8 length;
    u16 *unkC; // text..?
    u8 *unk10; // mapping..?
    FontFunc unk14; // function
    void *unk18; // some graphics sort of thing
};

struct TextObject2 {
    const struct FontDefinition *data;
    u16 unk4;
    u8 unk6;
    u8 length;
    u16 *unk8; // text?
    u8 *unkC; // mapping?
};


  //  //  //  GRAPHICS BUFFER  //  //  //


extern struct GraphicsBuffer {
    u16 DISPCNT;    // LCD Control
    u16 unk2;
    u16 bgControl[4];
    struct {
        s16 horizontal;
        s16 vertical;
    } bgOffset[4];
    u32 unk1C[4];
    u32 unk2C[4];
    u16 unk3C;
    u16 unk3E;
    u16 unk40;
    u16 unk42;
    u16 unk44;
    u16 unk46;
    u16 unk48;
    u16 unk4A;
    u16 unk4C;
    u16 unk4E;
    u16 unk50;
    u16 unk52;
    u16 bgPalette[16][16];   // BG Palette Buffer, 03004b64, 0x54
    u16 objPalette[16][16];  // OBJ Palette Buffer, 03004d64, 0x254
    u32 unk454[0x100];   // OAM Buffer, 03004f64
    u16 unk854_0:1; // ???
    u16 unk854_1:1;
    u16 unk854_2:1;
    u16 unk854_3:1;
    u16 unk854_4:1;
} D_03004b10; // gGfxBuffer

extern struct SpriteHandler *D_03005380; // gSpriteHandler
