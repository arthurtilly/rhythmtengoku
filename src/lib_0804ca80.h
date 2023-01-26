#pragma once

#include "global.h"
#include "graphics.h"


// Functions:
// extern ? func_0804ca80(?);
// extern ? func_0804ca94(?);
// extern ? func_0804caa0(?);
// extern ? func_0804cb60(?);
// extern ? func_0804cb80(?);
// extern ? func_0804cb88(?);
// extern ? func_0804cbcc(?);
// extern ? func_0804cc68(?);
// extern ? func_0804cd1c(?);
extern void func_0804cebc(struct SpriteHandler *, s16, s8);
extern void func_0804ced0(struct SpriteHandler *, s16, u8);
// extern ? func_0804cf38(?);
// extern ? func_0804d05c(?);
// extern ? func_0804d0a4(?);
// extern ? func_0804d0d8(?);
// extern ? func_0804d11c(?);
// extern ? func_0804d140(?);
extern u32  func_0804d160(struct SpriteHandler *, const struct Animation *, s8, s16, s16, u16, s8, s8, u16); // Create New
extern u32  func_0804d294(struct SpriteHandler *, const struct Animation *, s8, s16, s16, u16, s8, s8, u16, u32); // Create New (w/ additional parameter)
// extern ? func_0804d3cc(?);
// extern ? func_0804d468(?);
// extern ? func_0804d504(?);
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
// extern ? func_0804d858(?);
extern void func_0804d890(struct SpriteHandler *, s16, s16);
extern void func_0804d8c4(struct SpriteHandler *, s16, s8); // Set Palette
extern void func_0804d8f8(struct SpriteHandler *, s16, const struct Animation *, s8, s8, s8, u16); // Set Animation
// extern ? func_0804d9b0(?);
extern void func_0804da20(struct SpriteHandler *, s16, u16);
// extern ? func_0804da68(?);
extern void func_0804daa8(struct SpriteHandler *, s16, void *, u32);
extern void func_0804dae0(struct SpriteHandler *, s16, s8, s8, u16);
extern void func_0804db44(struct SpriteHandler *, s16, s16 *, s16 *); // Set X & Y Data Source
// extern ? func_0804db90(?);
// extern ? func_0804dbd0(?);
// extern ? func_0804dc10(?);
// extern ? func_0804dc8c(?);
extern void func_0804dcb8(struct SpriteHandler *, s16, u16); // Set Animation Speed..?
// extern ? func_0804dcd8(?); // Get Sprite Dimensions { Left, Right, Top, Bottom, Width, Height }
extern s32  func_0804ddb0(struct SpriteHandler *, s16, u32); // Get Sprite Data { 20+ = func_0804dcd8() }
extern void func_0804df4c(struct SpriteHandler *, s16, s8);
// extern ? func_0804df6c(?);
// extern ? func_0804df80(?); // Set Values by Mem. ID
// extern ? func_0804e0a0(?);
extern void func_0804e0bc(struct SpriteHandler *, u16);
// extern ? func_0804e0c0(?);
extern void func_0804e0c4(struct SpriteHandler *, u16);
// extern ? func_0804e0d8(?);
extern void func_0804e0f0(struct SpriteHandler *, u16, u16);
// extern ? func_0804e108(?);
// extern ? func_0804e11c(?);
// extern ? func_0804e130(?);
// extern ? func_0804e144(?);
// extern ? func_0804e158(?);
// extern ? func_0804e170(?);
extern void func_0804e188(struct SpriteHandler *, u16 memID, s16 *xController, s16 *yController); // Set X & Y Data Source by Mem. ID
// extern ? func_0804e1a4(?);
// extern ? func_0804e1bc(?);
// extern ? func_0804e1c0(?);
// extern ? func_0804e1c8(?);
// extern ? func_0804e3b0(?);
// extern ? func_0804e3e0(?);
