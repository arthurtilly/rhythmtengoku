#pragma once
#include "sound.h"

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

// extern ? func_0800b778(?);
// extern ? func_0800b834(?);
// extern ? func_0800b974(?);
// extern ? func_0800b9fc(?);
// extern ? func_0800bc14(?);
// extern ? func_0800bc40(?);
// extern ? func_0800bc58(?);
// extern ? func_0800bc68(?);
// extern ? func_0800bcb8(?);
// extern ? func_0800bcc4(?);
// extern ? func_0800bce4(?);
// extern ? func_0800bcf4(?);
// extern ? func_0800bd04(?);
// extern ? func_0800bd1c(?);
// extern ? func_0800bd2c(?);
// extern ? func_0800bdf8(?);
// extern ? func_0800be64(?);
// extern ? func_0800be88(?);
// extern ? func_0800be9c(?);
// extern ? func_0800bea0(?);
// extern ? func_0800bebc(?);
// extern ? func_0800bed0(?);
// extern ? func_0800bf7c(?);
// extern ? func_0800bf8c(?);
// extern ? func_0800bf9c(?);
// extern ? func_0800bfac(?);
// extern ? func_0800bfbc(?);
// extern ? func_0800c01c(?);
// extern ? func_0800c030(?);
// extern ? func_0800c048(?);
// extern ? func_0800c060(?);
// extern ? func_0800c088(?);
// extern ? func_0800c0c4(?);
// extern ? func_0800c0d8(?);
extern void func_0800c0f8(u16, u16);
// extern ? func_0800c128(?);
// extern ? func_0800c138(?);
// extern ? func_0800c154(?);
// extern ? func_0800c168(?);
// extern ? func_0800c184(?);
extern void func_0800c1a4_stub(void);
extern u32 func_0800c1a8(void);
// extern ? func_0800c1b4(?);
// extern ? func_0800c1c0(?);
// extern ? func_0800c1d0(?);
// extern ? func_0800c1e8(?);
// extern ? func_0800c228(?);
// extern ? func_0800c280(?);
// extern ? func_0800c2b0(?);
// extern ? func_0800c2d0(?);
// extern ? func_0800c310(?);
// extern ? func_0800c350(?);
// extern ? func_0800c390(?);
// extern ? func_0800c394(?);
// extern ? func_0800c398(?);
extern u32 func_0800c3a4(u32);
extern u32 func_0800c3b8();
// extern ? func_0800c3c4(?);
// extern ? func_0800c3e4(?);
// extern ? func_0800c3e8(?);
// extern ? func_0800c3ec(?);
// extern ? func_0800c3fc(?);
// extern ? func_0800c400(?);
// extern ? func_0800c404(?);
// extern ? func_0800c408(?);
// extern ? func_0800c40c(?);
// extern ? func_0800c410(?);
// extern ? func_0800c414(?);
// extern ? func_0800c418(?);
// extern ? func_0800c41c(?);
// extern ? func_0800c420(?);
// extern ? func_0800c424(?);
// extern ? func_0800c428(?);
// extern ? func_0800c42c(?);
extern u32 *func_0800c43c(u32);
// extern ? func_0800c454(?);
// extern ? func_0800c484(?);
// extern ? func_0800c490(?);
// extern ? func_0800c494(?);
// extern ? func_0800c4ac(?);
// extern ? func_0800c4b0(?);
// extern ? func_0800c508(?);
// extern ? func_0800c560(?);
// extern ? func_0800c5b8(?);
// extern ? func_0800c604(?);
// extern ? func_0800c654(?);
// extern ? func_0800c658(?);
// extern ? func_0800c65c(?);
extern u32 *func_0800c660(u32, u32);
// extern ? func_0800c694(?);
// extern ? func_0800c6a4(?);
// extern ? func_0800c6c8(?);
// extern ? func_0800c6d4(?);
// extern ? func_0800c6d8(?);
// extern ? func_0800c6dc(?);
// extern ? func_0800c6e0(?);
// extern ? func_0800c6e4(?);
// extern ? func_0800c824(?);
// extern ? func_0800c95c(?);
// extern ? func_0800c9a4(?);
// extern ? func_0800c9c8(?);
// extern ? func_0800ca1c(?);
// extern ? func_0800ca70(?);
// extern ? func_0800cb28(?);
// extern ? func_0800dfbc(?);
// extern ? func_0800dfc0(?);
// extern ? func_0800dfc4(?);
// extern ? func_0800dfe0(?);
// extern ? func_0800dfe4(?);
// extern ? func_0800dfe8(?);
// extern ? func_0800dfec(?);
// extern ? func_0800dff0(?);
// extern ? func_0800dff4(?);
// extern ? func_0800dff8(?);
// extern ? func_0800dffc(?);
// extern ? func_0800e000(?);
// extern ? func_0800e004(?);
// extern ? func_0800e008(?);
// extern ? func_0800e00c(?);
// extern ? func_0800e010(?);
// extern ? func_0800e014(?);
// extern ? func_0800e018(?);
// extern ? func_0800e030(?);
// extern ? func_0800e044(?);
// extern ? func_0800e058(?);
// extern ? func_0800e068(?);
// extern ? func_0800e084(?);
// extern ? func_0800e0a0(?);
// extern ? func_0800e0ec(?);
// extern ? func_0800e100(?);
// extern ? func_0800e114(?);
// extern ? func_0800e128(?);
// extern ? func_0800e13c(?);
// extern ? func_0800e184(?);
// extern ? func_0800e1cc(?);
// extern ? func_0800e208(?);
// extern ? func_0800e25c(?);
// extern ? func_0800e2a8(?);
// extern ? func_0800e30c(?);
// extern ? func_0800e364(?);
extern u32 func_0800e3e4(s16, u32, u32, s8, s8, u16);
// extern ? func_0800e430(?);
// extern ? func_0800e490(?);
// extern ? func_0800e4f8(?);
// extern ? func_0800e57c(?);
extern void func_0800e62c(s16, u32, s16, u32, u16);
// extern ? func_0800e694(?);
// extern ? func_0800e6ec(?);
// extern ? func_0800e75c(?);
// extern ? func_0800e768(?);
// extern ? func_0800e7e8(?);
// extern ? func_0800e830(?);
// extern ? func_0800e850(?);
// extern ? func_0800e86c(?);
// extern ? func_0800e888(?);
// extern ? func_0800e8b0(?);
// extern ? func_0800e8d8(?);
// extern ? func_0800e8f4(?);
// extern ? func_0800e940(?);
// extern ? func_0800e944(?);
// extern ? func_0800e948(?);
// extern ? func_0800e970(?);
// extern ? func_0800e9d8(?);
// extern ? func_0800e9f8(?);
// extern ? func_0800ea1c(?);
// extern ? func_0800ea2c(?);
// extern ? func_0800ea3c(?);
// extern ? func_0800ea70(?);
// extern ? func_0800eaa0(?);
// extern ? func_0800eb0c(?);
// extern ? func_0800eb1c(?);
// extern ? func_0800ebac(?);
// extern ? func_0800ebf8(?);
// extern ? func_0800ec20(?);
// extern ? func_0800ec34(?);
// extern ? func_0800ecac(?);
// extern ? func_0800ecec(?);
// extern ? func_0800ed08(?);
// extern ? func_0800ed24(?);
// extern ? func_0800ed3c(?);
// extern ? func_0800ed54(?);
// extern ? func_0800ed58(?);
// extern ? func_0800ed5c(?);
// extern ? func_0800ed60(?);
// extern ? func_0800ed64(?);
// extern ? func_0800edb8(?);
// extern ? func_0800edc8(?);
// extern ? func_0800edfc(?);
// extern ? func_0800ee1c(?);
// extern ? func_0800ee3c(?);
// extern ? func_0800ee5c(?);
// extern ? func_0800ee7c(?);
// extern ? func_0800ee9c(?);
// extern ? func_0800eebc(?);
// extern ? func_0800f070(?);
// extern ? func_0800f084(?);
// extern ? func_0800f09c(?);
// extern ? func_0800f0b4(?);
// extern ? func_0800f180(?);
// extern ? func_0800f1ec(?);
// extern ? func_0800f218(?);
// extern ? func_0800f22c(?);
// extern ? func_0800f4a0(?);
// extern ? func_0800f524(?);
// extern ? func_0800f570(?);
// extern ? func_0800f578(?);
// extern ? func_0800f580(?);
// extern ? func_0800f588(?);
// extern ? func_0800f614(?);
// extern ? func_0800f7c0(?);
// extern ? func_0800f89c(?);
// extern ? func_0800f8d8(?);
// extern ? func_0800f8ec(?);
// extern ? func_0800f8f8(?);

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

extern u32  func_080102d0(const struct SequenceData *); // [func_080102d0] Get Music Tempo from D_089ccccc
// extern ? func_080102f4(?);
// extern ? func_08010478(?);
