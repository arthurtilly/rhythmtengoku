#pragma once

#include "global.h"
#include "graphics.h"


  //  //  //  SIMPLE TEXT  //  //  //


struct SimpleText {
    u16 memID;
    u8 updateWithoutRender;
    u8 currentlyPrinting;
    u8 unk4; // id for D_08938258 { 0..4 }
    u8 palette;
    u8 unk6;
    u16 maxWidth;
    u8 textSize;
    u8 lineSpacing;
    s16 totalLines;
    s16 *lineSprites;
    s16 *unk14;
    u8 *unk18;
    u32 *unk1C;
    s16 *lineShadowSprites;
    u8 unk24;
    u8 unk25;
    u16 unk26;
    u16 unk28;
    u8 unk2A;
    s16 x;
    s16 y;
    u16 z;
    const char *string;
    u8 unk38;
    u8 unk39;
    u8 unk3A;
    void (*unk3C)();
    u32 unk40;
    u32 unk44;
    u32 null48;
    s16 *xSrc;
    s16 *ySrc;
    u8 unk54;
    u8 unk55;
    u8 unk56;
};

extern void func_08009844(void); // Init. Static Variables
extern s32 func_08009884(s32 textSize); // Get Spacing Width
extern s32 func_08009898(s32 textSize, s32 glyphID); // Get Glyph Width
// extern ? func_080098c4(?);
// extern ? func_080098fc(?);
extern void func_08009948(s32 tileOfsX, s32 tileOfsY, s32 textSize, s32 glyphID, s32 paletteParams); // Print Character to VRAM
extern s32 func_080099a0(s32 tileBaseX, s32 tileBaseY, s32 textSize, const char *string, s32 maxWidth, s32 paletteParams); // Print Line to VRAM (return width in pixels)
// extern ? func_08009a54(?);
// extern ? func_08009aa4(?);
// extern ? func_08009af4(?);
extern struct Animation *func_08009de4(u32 memID, u32 tileBaseX, u32 tileBaseY, u32 textSize, const char **string, u32 anchor, u32 arg6, u32 maxWidth, u32 arg8, u32 arg9, u32 arg10);
extern struct Animation *func_0800a004(u32 memID, u32 tileBaseX, u32 tileBaseY, u32 textSize, const char *string, u32 anchor, u32 arg6, u32 maxWidth);
extern struct Animation *func_0800a030(u32 memID, u32 tileBaseX, u32 tileBaseY, u32 textSize, const char **string, u32 anchor, u32 arg6, u32 maxWidth, u32 arg8, u32 arg9);
// extern ? func_0800a05c(?);
// extern ? func_0800a068(?);
// extern ? func_0800a084(?);
// extern ? func_0800a090(?);
// extern ? func_0800a0f0(?);
// extern ? func_0800a108(?);
extern u32 func_0800a1ac(u32 maxWidth);
extern s32 func_0800a1d4(u32 totalLines, u32 id);
extern struct SimpleText *func_0800a204(u16 memID, u32 totalLines, u32 maxWidth, u32 arg3); // Create New
extern void func_0800a2f8();
extern const char *func_0800a4a8(struct SimpleText *simpleText, u32 currentLine, const char *string);
// extern ? func_0800a6a0(?);
// extern ? func_0800a794(?);
// extern ? func_0800a7fc(?);
extern void func_0800a818(struct SimpleText *simpleText); // Update and Render
// extern ? func_0800a890(?); // Update Without Render
extern void func_0800a914(struct SimpleText *); // Update
// extern ? func_0800a934(?);
// extern ? func_0800aa1c(?);
// extern ? func_0800aa4c(?);
// extern ? func_0800aa78(?);
// extern ? func_0800aa9c(?);
// extern ? func_0800aac0(?);
// extern ? func_0800abb0(?);
extern s32 func_0800ac58(struct SimpleText *simpleText); // Get Active Printing Status
extern void func_0800ac68(struct SimpleText *simpleText, s16 x, s16 y); // Set X & Y
// extern ? func_0800ac80(?);
// extern ? func_0800ac90(?);
extern void func_0800aca0(struct SimpleText *simpleText, u16 z); // Set Z (Sprite Depth)
// extern ? func_0800acb0(?);
// extern ? func_0800acbc(?);
// extern ? func_0800acc8(?);
// extern ? func_0800acd8(?);
// extern ? func_0800ace8(?);
// extern ? func_0800acf8(?);
// extern ? func_0800ad20(?);
// extern ? func_0800ad30(?);
// extern ? func_0800ad40(?);
// extern ? func_0800ad68(?);
// extern ? func_0800ad98(?);
// extern ? func_0800ada8(?);
// extern ? func_0800adb4(?);
// extern ? func_0800adc0(?);
// extern ? func_0800add8(?);
// extern ? func_0800ae00(?);
// extern ? func_0800ae0c(?);
// extern ? func_0800ae1c(?);
// extern ? func_0800ae3c(?);
// extern ? func_0800ae88(?);
// extern ? func_0800aeb4(?);
// extern ? func_0800b074(?);
// extern ? func_0800b0d4(?);
// extern ? func_0800b108(?);
// extern ? func_0800b118(?);
// extern ? func_0800b12c(?);
// extern ? func_0800b140(?);
// extern ? func_0800b21c(?);
// extern ? func_0800b30c(?);
// extern ? func_0800b31c(?);
// extern ? func_0800b32c(?);
// extern ? func_0800b368(?);
// extern ? func_0800b384(?);
