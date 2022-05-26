#pragma once

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
    s16 unkA;
    s16 totalFrames;
};
struct unk_struct_08007aa0 {
    s16 id;
    u16 startXPos;
    u16 startYPos;
    s16 dx;
    s16 dy;
    s16 unkA;
    u16 framesPassed;
    u16 totalFrames;
};




struct unk_struct_08008b00 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s32 unk8;
    s32 unkC;
};

extern s32 (*D_03004ae4)(s32);

extern void func_08007468(s16 arg0, s8 arg1);
extern void func_08007498(s8 arg0, s16 arg1, s16 arg2);
extern void func_080074c4(s8 arg0, s16 arg1, s16 arg2, s16 arg3);
extern struct unk_struct_080074ec *func_080074ec(struct unk_struct_080074ec_init *arg0);
extern u32 func_08007544(struct unk_struct_080074ec *arg0);
extern struct unk_struct_0800757c *func_0800757c(struct unk_struct_0800757c_init *arg0);
extern u32 func_080075e4(struct unk_struct_0800757c *arg0);
extern struct unk_struct_0800765c *func_0800765c(struct unk_struct_0800765c_init *arg0);
extern u32 func_080076ec(struct unk_struct_0800765c *arg0);
extern struct unk_struct_08007788 *func_08007788(struct unk_struct_08007788_init *arg0);
extern u32 func_080077e8(struct unk_struct_08007788 *arg0);
// extern ? func_08007854(?);
// extern ? func_080078ec(?);
// extern ? func_0800793c(?);
// extern ? func_080079bc(?);
// extern ? func_08007a14(?);
// extern ? func_08007aa0(?);
// extern ? func_08007b04(?);
// extern ? func_08007b2c(?);
// extern ? func_08007b4c(?);
extern s32 fast_divsi3(s32 dividend, s32 divisor);
// extern ? func_08007bb8(?);
// extern ? func_08007c30(?);
// extern ? func_08007ca8(?);
// extern ? func_08007d20(?);
// extern ? func_08007d88(?);
// extern ? func_08007e00(?);
// extern ? func_08007e68(?);
// extern ? func_08007e7c(?);
// extern ? func_08007ef8(?);
// extern ? func_08007f58(?);
// extern ? func_08007fdc(?);
// extern ? func_08008054(?);
// extern ? func_08008090(?);
// extern ? func_08008184(?);
// extern ? func_080081d4(?);
// extern ? func_0800820c(?);
// extern ? func_08008248(?);
// extern ? func_08008294(?);
// extern ? func_080082cc(?);
// extern ? func_08008328(?);
// extern ? func_08008370(?);
// extern ? func_08008420(?);
// extern ? func_08008464(?);
// extern ? func_0800852c(?);
// extern ? func_08008548(?);
// extern ? func_0800856c(?);
// extern ? func_08008594(?);
// extern ? func_080085e4(?);
// extern ? func_08008608(?);
// extern ? func_0800861c(?);
// extern ? func_08008628(?);
// extern ? func_08008658(?);
// extern ? func_0800869c(?);
// extern ? func_080086c4(?);
// extern ? func_08008720(?);
// extern ? func_0800873c(?);
// extern ? func_08008758(?);
extern u32 func_080087b4(u16, u32*);
extern s32 func_080087d4(s32, s32, s32);
// extern ? func_080087e8(?);
// extern ? func_08008910(?);
// extern ? func_08008938(?);
// extern ? func_08008968(?);
// extern ? func_08008990(?);
// extern ? func_080089c0(?);
// extern ? func_08008a70(?);
// extern ? func_08008ab8(?);
extern void func_08008b00(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10, u32 arg11);
extern void func_08008d44(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10);
extern void func_08008d88(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10);
