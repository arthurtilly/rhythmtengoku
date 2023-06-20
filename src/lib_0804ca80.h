#pragma once

#include "global.h"
#include "graphics.h"

struct OamData
{
    /*0x00*/ u32 y:8;
    /*0x01*/ u32 affineMode:2;  // 0x1, 0x2 -> 0x4
             u32 objMode:2;     // 0x4, 0x8 -> 0xC
             u32 mosaic:1;      // 0x10
             u32 bpp:1;         // 0x20
             u32 shape:2;       // 0x40, 0x80 -> 0xC0

    /*0x02*/ u32 x:9;
             u32 matrixNum:5;   // bits 3/4 are h-flip/v-flip if not in affine mode
             u32 size:2;        // 0x4000, 0x8000 -> 0xC000

    /*0x04*/ u16 tileNum:10;    // 0x3FF
             u16 priority:2;    // 0x400, 0x800 -> 0xC00
             u16 paletteNum:4;
    /*0x06*/ u16 affineParam;
};

struct OamCel {
    u16 total;              // Amount of data
    struct OamData data[0]; // Data
};

struct struct_0804cb88 {
    struct OamCel *unk0;   // Current Cel
    u32 *unk4;    // OAM Buffer
    u8 unk8;      // ?
    u8 unk9;      // Cel Data Amount
    u16 unkA;     // X
    s8 unkC;      // ?
    s8 unkD;      // ?
    u16 unkE;     // Y
    u32 unk10;    // Attributes 1 & 0
    u32 unk14;    // Attribute 2
    s16 unk18[4]; // Affine Params
    u8 unk20[24]; // OAM Dimension
    u32 unk38;    // OAMOBJ Limit
};

struct SpriteHandler;
struct Sprite {
    u16 unk0_b0:1;  // Display Sprite Flag
    u16 unk0_b1:4;  // Animation Playback Type (TODO: enum)
    u16 unk0_b5:8;  // Total Cel Amount
    u16 unk0_b13:1; // Update Flag
    u16 unk0_b14:1; // Valid Sprite Flag
    u16 unk0_b15:1; // Pause Flag (?)
    s16 unk2;   // X Position 
    s16 unk4;   // Y Position
    u16 unk6;   // Layer
    struct Animation *unk8; // Animation
    s8 unkC;    // Current Frame
    s8 unkD;    // ?
    s8 unkE;    // Loop Frame
    u32 unk10;  // Attributes 1 & 0
    s16 unk14;  // Tile Number
    u8 unk16;   // Palette
    s8 unk17;   // Callback Frame
    s16 unk18;  // Previous ID
    s16 unk1A;  // Next ID
    s16 unk1C;  // Current Frame Duration
    void (*unk20)(struct SpriteHandler *, s16, u32, ...); // Callback
    u32 unk24;  // Callback Argument
    u16 unk28;  // Total Duration
    u16 unk2A;  // Memory ID
    s16 *unk2C; // X Data Source
    s16 *unk30; // Y Data Source
    s16 *unk34; // Affine Parameters
    u16 unk38;  // Animation Speed
};

struct SpriteHandler { // Size = 0x28
    /*0x0*/ u16 objAmount;      // OAMOBJ Limit (128)
    /*0x2*/ u16 spriteAmount;   // Sprite Limit (100)
    u32 *unk4;          // Pointer to the OAM buffer
    /*0x8*/ struct Sprite *sprites; // Sprites
    s16 unkC; // Global Next ID?
    s16 unkE; // Global Previous ID?
    s16 unk10; // Next Free Sprite ID
    s16 unk12;
    u16 unk14; // Global X Adjustment
    u16 unk16; // Global Y Adjustment
    u16 unk18;
    u16 unk1A; // Sprite Pause Flag
    u16 unk1C; // Current Memory ID
    u16 unk1E;
    u16 unk20;
    u32 unk22_b0:4; // Likely an error handling enum
    u16 unk24;
    u16 unk26;
};

struct OamDimensions {
    u8 width;
    u8 height;
};

extern struct OamDimensions D_08bd0cac[3][4]; // sOamDimensions

extern u8 D_03004428;
extern void *(*D_0300442c)(u32);      // Allocation function
extern void  (*D_03004430)(void *);   // Deallocation function
extern void *(*D_03004434)(u32, u32); // Allocation by ID function


// Functions:
extern void func_0804ca80(void *memAllocFunc, void *memDeallocFunc);
extern void func_0804ca94(void *memAllocIdFunc);
extern struct SpriteHandler *func_0804caa0(u16, void *, u16, u32);
extern void func_0804cb60(struct SpriteHandler *);
extern void func_0804cb80(struct SpriteHandler *, u16, u32 *);
extern u32  func_0804cb88(struct struct_0804cb88 *);
extern void func_0804cbcc(struct SpriteHandler *);
extern u32  func_0804cc68(struct SpriteHandler *, s16);
extern void func_0804cd1c(struct SpriteHandler *, s16, s8, u32);
extern void func_0804cebc(struct SpriteHandler *, s16, s8);
extern void func_0804ced0(struct SpriteHandler *, s16, u8);
extern void func_0804cf38(struct SpriteHandler *, s16);
extern void func_0804d05c(struct SpriteHandler *, s16);
extern s16  func_0804d0a4(struct SpriteHandler *);
extern void func_0804d0d8(struct SpriteHandler *, s16);
extern u8   func_0804d11c(struct Animation *);
extern u16  func_0804d140(struct Animation *);
extern s16  func_0804d160(struct SpriteHandler *, struct Animation *, s8, s16, s16, u16, s8, s8, u16); // Create New
extern s16  func_0804d294(struct SpriteHandler *, struct Animation *, s8, s16, s16, u16, s8, s8, u16, u32); // Create New (w/ Attributes)
extern s16  func_0804d3cc(struct SpriteHandler *, s16);
extern void func_0804d468(struct SpriteHandler *, s16, s16);
extern void func_0804d504(struct SpriteHandler *, s16);
extern void func_0804d55c(struct SpriteHandler *, s16, s16, s16, u16); // Set X/Y Position and Layer
extern void func_0804d5d4(struct SpriteHandler *, s16, s16, s16); // Set X/Y Position
extern void func_0804d614(struct SpriteHandler *, s16, s16); // Set X Position
extern void func_0804d648(struct SpriteHandler *, s16, s16); // Set Y Position
extern void func_0804d67c(struct SpriteHandler *, s16, u16); // Set Layer
extern s8   func_0804d6cc(struct SpriteHandler *, s16); // Get Current Frame
extern u8   func_0804d708(struct SpriteHandler *, s16);
extern void func_0804d770(struct SpriteHandler *, s16, u16); // Show/Display Sprite
extern void func_0804d7b4(struct SpriteHandler *, s16, u32);
extern void func_0804d7e8(struct SpriteHandler *, s16, u32);
extern void func_0804d820(struct SpriteHandler *, s16, u32);
extern void func_0804d858(struct SpriteHandler *, s16 ,u32);
extern void func_0804d890(struct SpriteHandler *, s16, s16);
extern void func_0804d8c4(struct SpriteHandler *, s16, s8); // Set Palette
extern void func_0804d8f8(struct SpriteHandler *, s16, struct Animation *, s8, s8, s8, u16); // Set Animation
extern void func_0804d9b0(struct SpriteHandler *, s16, struct SpritePlaybackData *); // Set Animation From Struct
extern void func_0804da20(struct SpriteHandler *, s16, u16);
extern void func_0804da68(struct SpriteHandler *, s16, u16);
extern void func_0804daa8(struct SpriteHandler *, s16, void *, u32);
extern void func_0804dae0(struct SpriteHandler *, s16, s8, s8, u16);
extern void func_0804db44(struct SpriteHandler *, s16, s16 *, s16 *); // Set X & Y Data Source
extern void func_0804db90(struct SpriteHandler *, s16, s16 *);
extern void func_0804dbd0(struct SpriteHandler *, s16, s16 *);
extern void func_0804dc10(struct SpriteHandler *, s16, s32, s16 *);
extern void func_0804dc8c(struct SpriteHandler *, s16, u32);
extern void func_0804dcb8(struct SpriteHandler *, s16, u16); // Set Animation Speed..?
extern u32  func_0804dcd8(u16 *, u32); // Get Sprite Dimensions { Left, Right, Top, Bottom, Width, Height }
extern s32  func_0804ddb0(struct SpriteHandler *, s16, u32); // Get Sprite Data { 20+ = func_0804dcd8() }
extern void func_0804df4c(struct SpriteHandler *, s16, s8);
extern void func_0804df6c(struct SpriteHandler *, s16);
extern void func_0804df80(struct SpriteHandler *, u16, u32, u32); // Set Values by Mem. ID
extern u16  func_0804e0a0(struct SpriteHandler *);
extern void func_0804e0bc(struct SpriteHandler *, u16);
extern u16  func_0804e0c0(struct SpriteHandler *);
extern void func_0804e0c4(struct SpriteHandler *, u16);
extern void func_0804e0d8(struct SpriteHandler *, u16, u16);
extern void func_0804e0f0(struct SpriteHandler *, u16, u16);
extern void func_0804e108(struct SpriteHandler *, u16, u32);
extern void func_0804e11c(struct SpriteHandler *, u16, u32);
extern void func_0804e130(struct SpriteHandler *, u16, u32);
extern void func_0804e144(struct SpriteHandler *, u16, u32);
extern void func_0804e158(struct SpriteHandler *, u16, s16);
extern void func_0804e170(struct SpriteHandler *, u16, s8);
extern void func_0804e188(struct SpriteHandler *, u16 memID, s16 *xController, s16 *yController); // Set X & Y Data Source by Mem. ID
extern void func_0804e1a4(struct SpriteHandler *, u16, u16);
extern void func_0804e1bc(struct SpriteHandler *, u16);
extern void func_0804e1c0(struct SpriteHandler *, u16, u16);
// extern ? func_0804e1c8(?);
extern s32 func_0804e3b0(struct SpriteHandler *);
extern s32 func_0804e3e0(struct SpriteHandler *, u16);

// ARM
extern u32 func_0804e418(struct struct_0804cb88 *);
