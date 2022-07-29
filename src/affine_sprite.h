#pragma once

#include "global.h"

struct AffineSprite {
    s16 sprite;      // Sprite ID
    s8  index;       // func_0800c42c()
    u8  doubleSize;  // "Double-Size" Flag
    s16 scaleX;      // Horizontal Scale
    s16 scaleY;      // Vertical Scale
    s16 rotation;    // Rotation
    s16 x;           // X Coordinate
    s16 y;           // Y Coordinate
    s16 offsetDistance; // Distance from Centre
    s16 offsetAngle;    // Angle from Centre
    u8  rotateWithOffset:1;     // "Rotate With Offset Angle" Flag
    u8  highAnglePrecision:1;   // "High Angle Precision" Flag (if FALSE: 0x100 = 360 degrees; if TRUE: 0x800 = 360 degrees)
    u8  flipHorizontal:1;   // "Flip Horizontal" Flag
    u8  flipVertical:1;     // "Flip Vertical" Flag
    u8  ignoreUpdates:1;    // "Ignore Updates" Flag (if TRUE: any changes to the above are stored but not rendered)
};


extern void func_0800f904(struct AffineSprite *);           // [func_0800f904] AFFINE SPRITE - Update
extern struct AffineSprite *func_0800fa6c(u32 *, s8, s16, s16, u16, s16, s16, s8, s8, u16, u32); // [func_0800fa6c] AFFINE SPRITE - Create New
extern struct AffineSprite *func_0800fba0(u32 *, s8, s16, s16, u16, s8, s8, u16); // [func_0800fba0] AFFINE SPRITE - Create New (with Default Parameters)
extern void func_0800fc70(struct AffineSprite *);           // [func_0800fc70] AFFINE SPRITE - Delete
extern void func_0800fca0(struct AffineSprite *, u32);      // [func_0800fca0] AFFINE SPRITE - Set/Remove Index
extern void func_0800fd14(struct AffineSprite *, u32);      // [func_0800fd14] AFFINE SPRITE - Set "High Angle Precision" Flag
extern void func_0800fd60(struct AffineSprite *, u32);      // [func_0800fd60] AFFINE SPRITE - Set "Double-Size" Flag
extern s16  func_0800fd90(struct AffineSprite *);           // [func_0800fd90] AFFINE SPRITE - Get Sprite
extern void func_0800fda4(struct AffineSprite *, s16, s16, u16); // [func_0800fda4] AFFINE SPRITE - Set X & Y; func_0804d67c()
extern void func_0800fddc(struct AffineSprite *, s16, s16); // [func_0800fddc] AFFINE SPRITE - Set X & Y
extern void func_0800fdf8(struct AffineSprite *, s16);      // [func_0800fdf8] AFFINE SPRITE - Set X
extern void func_0800fe0c(struct AffineSprite *, s16);      // [func_0800fe0c] AFFINE SPRITE - Set Y
extern void func_0800fe20(struct AffineSprite *, u16);      // [func_0800fe20] AFFINE SPRITE - func_0804d67c()
extern void func_0800fe44(struct AffineSprite *, s16, s16); // [func_0800fe44] AFFINE SPRITE - Set Scaling & Rotation
extern void func_0800fe60(struct AffineSprite *, s16);      // [func_0800fe60] AFFINE SPRITE - Set Scaling
extern void func_0800fe78(struct AffineSprite *, s16, s16); // [func_0800fe78] AFFINE SPRITE - Set Scaling
extern void func_0800fe94(struct AffineSprite *, s16);      // [func_0800fe94] AFFINE SPRITE - Set Rotation
extern void func_0800fea8(struct AffineSprite *, s16);      // [func_0800fea8] AFFINE SPRITE - Set Offset Distance from Centre
extern void func_0800febc(struct AffineSprite *, s16);      // [func_0800febc] AFFINE SPRITE - Set Offset Angle from Centre
extern void func_0800fed0(struct AffineSprite *, s16, s16); // [func_0800fed0] AFFINE SPRITE - Set Offset from Centre
extern void func_0800feec(struct AffineSprite *, u32);      // [func_0800feec] AFFINE SPRITE - Set "Rotate Around Centre" Flag
extern void func_0800ff10(struct AffineSprite *, u32, u32); // [func_0800ff10] AFFINE SPRITE - Set Horizontal & Vertical Flip
extern void func_0800ff44(struct AffineSprite *, u32);      // [func_0800ff44] AFFINE SPRITE - Set Horizontal Flip
extern void func_0800ff68(struct AffineSprite *, u32);      // [func_0800ff68] AFFINE SPRITE - Set Vertical Flip
extern void func_0800ff8c(struct AffineSprite *, u32);      // [func_0800ff8c] AFFINE SPRITE - Set "Ignore Updates" Flag (Inverted)
extern void func_0800ffc0(struct AffineSprite *, u32);      // [func_0800ffc0] AFFINE SPRITE - Set Current Animation Frame
extern void func_0800ffe4(struct AffineSprite *, u8);       // [func_0800ffe4] AFFINE SPRITE - func_0804ced0()
extern void func_08010008(struct AffineSprite *, u32, u32, u32); // [func_08010008] AFFINE SPRITE - Animate?
extern void func_08010040(struct AffineSprite *, u32);      // [func_08010040] AFFINE SPRITE - Start Animation
extern void func_08010064(struct AffineSprite *, u32 *, u32, u32, u32, u32); // [func_08010064] AFFINE SPRITE - func_0804d8f8()
extern void func_080100a8(struct AffineSprite *, u32);      // [func_080100a8] AFFINE SPRITE - func_0804d8c4()
extern void func_080100cc(struct AffineSprite *, u32);      // [func_080100cc] AFFINE SPRITE - func_0804d890()
extern u32  func_080100f0(struct AffineSprite *);           // [func_080100f0] AFFINE SPRITE - func_0804ddb0(..., 4)
extern u32  func_08010110(struct AffineSprite *);           // [func_08010110] AFFINE SPRITE - func_0804ddb0(..., 5)
extern u32  func_08010130(struct AffineSprite *);           // [func_08010130] AFFINE SPRITE - func_0804ddb0(..., 6)
extern void func_08010150(struct AffineSprite *, u16);      // [func_08010150] AFFINE SPRITE - func_0804da20()
extern void func_08010174(struct AffineSprite *, u16);      // [func_08010174] AFFINE SPRITE - func_0804dcb8()
extern s8   func_08010198(struct AffineSprite *);           // [func_08010198] AFFINE SPRITE - func_0804d6cc()
extern u8   func_080101b8(struct AffineSprite *);           // [func_080101b8] AFFINE SPRITE - func_0804d708()
extern void func_080101d8(struct AffineSprite *, u32);      // [func_080101d8] AFFINE SPRITE - func_0804d7b4()
extern void func_080101f8(struct AffineSprite *, u32);      // [func_080101f8] AFFINE SPRITE - func_0804d7e8()
extern void func_08010218(struct AffineSprite *, u32);      // [func_08010218] AFFINE SPRITE - func_0804d820()
extern void func_08010238(struct AffineSprite *, u32, u32); // [func_08010238] AFFINE SPRITE - func_0804daa8()
extern void func_08010260(struct AffineSprite *, s8);       // [func_08010260] AFFINE SPRITE - func_0804df4c()
extern u32  func_08010288(struct AffineSprite *);           // [func_08010288] AFFINE SPRITE - func_0804ddb0(..., 2)
extern void func_080102a8(struct AffineSprite *, s16 *, s16 *); // [func_080102a8] AFFINE SPRITE - func_0804db44()
