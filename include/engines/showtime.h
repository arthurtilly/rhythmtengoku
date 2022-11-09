#pragma once

#include "global.h"
#include "engines.h"


struct ShowtimeInfo {
    struct TextObject1 *unk0;
    u16 unk4;
    u8 unk6;
    struct ShowtimeInfo_sub {
        s16 unk0;
        u32 unk4;
        s32 unk8;
    } unk8[2];
    u32 pad20;
    struct ShowtimeInfo_sub1 {
        u32 unk0;
        u32 pad4;
        u32 unk8;
        u32 unkC;
        u32 pad10[2];
        u32 unk18;
        u32 pad1C;
        u32 unk20;
        u32 pad24;
    } unk24[2];
    u32 pad74[0x3d];
    u32 unk168;
    u32 pad16C[2];
    struct ShowtimeInfo_sub2 {
        s16 unk0;
        s32 unk4;
        s32 unk8;
        u32 unkC;
    } unk174[8];
    u32 pad1F4[0x73];
    u32 unk3C0; // beat related stuff???
    u32 pad3C4;
    u32 unk3C8;
    u32 unk3CC;
    u8 unk3D0;
};


// Engine Macros/Enums:

// OAM Animations:
extern const struct Animation D_088cb994[];
extern const struct Animation D_088cb4a4[];

// Palettes:

// Sound Effects:
extern const struct SequenceData s_block_hit_seqData;

// Engine Data:
extern char D_0805a3cc[];

// Engine Definition Data:
extern const struct CompressedGraphics *D_089e384c[]; // Buffered Textures List
extern const struct GraphicsTable *D_089e3910[]; // Graphics Table

// Functions:
// extern ? func_0802bbfc(?);
extern void func_0802bc0c(void);
extern void func_0802bc4c(void);
extern void func_0802bc78(u8 arg0);
extern void func_0802bd40(void);
// extern ? func_0802bd44(?);
// extern ? func_0802be10(?);
extern void func_0802be24(void);
extern void func_0802be40(u32, u32*);
extern u8 func_0802be58(u32, u32, u32);
extern void func_0802be74(void);
// extern ? func_0802be78(?);
extern u8 func_0802be90(u32, u32, u32);
extern void func_0802beac(void);
// extern ? func_0802beb0(?);
// extern ? func_0802bec8(?);
extern void func_0802bee4(void);
// extern ? func_0802bee8(?);
extern u8 func_0802bf00(u32, u32, u32);
extern void func_0802bf1c(void);
extern void func_0802bf20(u32, u32*) ;
extern u8 func_0802bf38(u32, u32, u32) ;
extern void func_0802bf54(void);
extern void func_0802bf58(u32, u32*);
// extern ? func_0802bf88(?);
// extern ? func_0802c078(?);
extern void func_0802c084(void);
// extern ? func_0802c0c8(?);
// extern ? func_0802c150(?);
// extern ? func_0802c1cc(?);
extern void func_0802c1f0(u32, u16, u32);
extern void func_0802c23c(void);
extern void func_0802c334(void);
// extern ? func_0802c36c(?);
extern u32 func_0802c3d0(u32);
// extern ? func_0802c40c(?);
// extern ? func_0802c4b0(?);
// extern ? func_0802c4c0(?);
// extern ? func_0802c4f4(?);
// extern ? func_0802c528(?);
// extern ? func_0802c55c(?);
// extern ? func_0802c5c8(?);
// extern ? func_0802ce70(?);
// extern ? func_0802cf8c(?);
extern void func_0802cfa4(u32);
// extern ? func_0802cfc8(?);
// extern ? func_0802cfe0(?);
extern u32 func_0802d068(u32);
extern u32 func_0802d080(u32 arg0);
extern void func_0802d0b8(void);
extern void func_0802d0dc(u32, s16);
// extern ? func_0802d104(?);
// extern ? func_0802d250(?);
// extern ? func_0802d2bc(?);
extern void func_0802d38c(void);
// extern ? func_0802d394(?);
extern void func_0802d43c(void);
// extern ? func_0802d81c(?);
extern void func_0802d8bc(u32);
// extern ? func_0802d918(?);
// extern ? func_0802d96c(?);
// extern ? func_0802d9fc(?);
// extern ? func_0802da84(?);
// extern ? func_0802db08(?);
// extern ? func_0802dc54(?);
