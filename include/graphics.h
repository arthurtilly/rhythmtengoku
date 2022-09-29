#pragma once

typedef u16 AnimationCel;

struct Animation {
    const AnimationCel *cel;
    u8 duration;
};

#define END_ANIMATION { NULL, 0 }



typedef u16 Palette[16];

#define TO_RGB555(x)                        \
      (((((x) >> 16) & 0xff) >> 3) << 0 )   \
    | (((((x) >> 8 ) & 0xff) >> 3) << 5 )   \
    | (((((x) >> 0 ) & 0xff) >> 3) << 10)



// Read-Only Definition for a Font (?)
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

// Internal Font Struct (?)
struct Font {
    struct FontDefinition *def;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    void *unk8;
    void *unkC;
};



enum BGLayersEnum {
    BG_LAYER_0,
    BG_LAYER_1,
    BG_LAYER_2,
    BG_LAYER_3
};

struct struct_03004b10 {
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
};

extern struct struct_03004b10 D_03004b10;
extern s32 D_03005380;