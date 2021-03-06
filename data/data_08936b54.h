#pragma once

#include "global.h"

typedef void *(*unkMovementInitFuncType)(void *);
typedef u32 (*unkMovementMainFuncType)(void *);

struct UnkMovementStruct {
    unkMovementInitFuncType unk0;
    unkMovementMainFuncType unk4;
    void *unk8;
    void *unkC;
};

extern const struct UnkMovementStruct D_08936b54;
extern const struct UnkMovementStruct D_08936b64;
extern const struct UnkMovementStruct D_08936b74;
extern const struct UnkMovementStruct D_08936b84;
extern const struct UnkMovementStruct D_08936b94;
extern const struct UnkMovementStruct D_08936ba4;
extern const struct UnkMovementStruct D_08936bb4;
extern const struct UnkMovementStruct D_08936bc4;
extern const struct UnkMovementStruct D_08936bd4;
extern const struct UnkMovementStruct D_08936be4;
extern const struct UnkMovementStruct D_08936bf4;
extern const struct UnkMovementStruct D_08936c04;
extern const struct UnkMovementStruct D_08936c14;
extern const struct UnkMovementStruct D_08936c24;
extern const struct UnkMovementStruct D_08936c34;
extern const struct UnkMovementStruct D_08936c44;
extern const struct UnkMovementStruct D_08936c54;
extern const char D_08936c64[];
extern const struct UnkMovementStruct D_08936c7c;
extern const struct UnkMovementStruct D_08936c8c;
extern const struct UnkMovementStruct D_08936c9c;

struct unk_struct_08004da0_init;
struct unk_struct_08004da0;

struct unk_struct_080054b0_init;
struct unk_struct_080054b0;

struct unk_struct_08005858_init;
struct unk_struct_08005858;

struct unk_struct_08006bb4_init {
    u32 pad0;
    u32 pad4;
    u32 pad8;
    u32 padC;
    u32 pad10;
    u32 pad14;
    u8 *unk18;
    u32 unk1C_1:12;
    void (*unk20)(struct unk_struct_08006bb4_init *, u32); // dunno type of second parameter
    u32 unk24; // unknown type
};
struct unk_struct_08006bb4 {
    struct unk_struct_08006bb4_init *unk0;
    u16 pad4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
};

struct unk_struct_08006ca4_init;
struct unk_struct_08006ca4;

// Indefinite linear movement
struct unk_struct_080074ec_init {
    s16 id;
    s16 startX;
    s16 startY;
    s8_8 xVel;
    s8_8 yVel;
};
struct unk_struct_080074ec {
    s16 id;
    s8_8 xVel;
    s8_8 yVel;
    s24_8 xPos;
    s24_8 yPos;
};

// Approach a point asymptotically
struct unk_struct_0800757c_init {
    s16 id;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    s8_8 multiplier;
};
struct unk_struct_0800757c {
    s16 id;
    u16 destXPos;
    u16 destYPos;
    s8_8 multiplier;
    s24_8 xOffset;
    s24_8 yOffset;
};

// Accelerate towards a point
struct unk_struct_0800765c_init {
    s16 id;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    s16 vel;
    s16 accel;
};
struct unk_struct_0800765c {
    s16 id;
    u16 startXPos;
    u16 startYPos;
    s16 dx;
    s16 dy;
    u32 distanceTravelled;
    u32 totalDistance;
    s32 vel;
    s32 accel;
};

// Travel linearly to a point over a specified number of frames
struct unk_struct_08007788_init {
    s16 id;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    u16 totalFrames;
};
struct unk_struct_08007788 {
    s16 id;
    u16 startXPos;
    u16 startYPos;
    s16 dx;
    s16 dy;
    u16 totalFrames;
    u16 framesPassed;
};

// Sinusoidal
struct unk_struct_080078ec_init {
    s16 id;
    u8 angle;
    s16 baseX;
    s16 baseY;
    s16 baseOffset;
    s16 amplitude;
    s16 waveStart;
    s16 waveEnd;
    u16 totalFrames;
};
struct unk_struct_080078ec {
    s16 id;
    u16 baseXPos;
    u16 baseYPos;
    s16 baseOffset;
    s16 amplitude;
    s16 waveStart;
    s16 waveEnd;
    u16 framesPassed;
    u16 totalFrames;
    u8 angle;
};

// Unknown
struct unk_struct_080079bc_init {
    s16 id;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    u16 unkA;
    u16 unkC;
    u16 totalFrames;
};
struct unk_struct_080079bc {
    s16 id;
    u16 startXPos;
    u16 startYPos;
    s16 dx;
    s16 dy;
    s16 unkA;
    s16 unkC;
    u16 framesPassed;
    u16 totalFrames;
};

struct unk_struct_08007aa0_init {
    s16 id;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    s16 amplitude;
    s16 totalFrames;
};
struct unk_struct_08007aa0 {
    s16 id;
    u16 startXPos;
    u16 startYPos;
    s16 dx;
    s16 dy;
    s16 amplitude;
    u16 framesPassed;
    u16 totalFrames;
};

struct unk_struct_08007bb8_init;
struct unk_struct_08007bb8;

struct unk_struct_08007ca8_init;
struct unk_struct_08007ca8;

struct unk_struct_08007d88_init;
struct unk_struct_08007d88;

struct unk_struct_08007e7c_init;
struct unk_struct_08007e7c;

struct unk_struct_08007f58_init;
struct unk_struct_08007f58;

struct unk_struct_08008420_init;
struct unk_struct_08008420;

struct unk_struct_0800852c_init;
struct unk_struct_0800852c;

struct unk_struct_0800873c_init;
struct unk_struct_0800873c;
