#pragma once

#include "global.h"
#include "graphics.h"


  //  //  //  TEXT PRINTER  //  //  //


struct TextPrinter {
    u16 memID;
    u8 printMultipleStrings;
    u8 currentlyPrinting;
    u8 unk4; // id for D_08938258 { 0..4 }
    u8 palette;
    u8 lineColors;
    u16 maxWidth;
    u8 font;
    u8 lineSpacing;
    s16 totalLines;
    s16 *lineSprites;
    s16 *lineWidths;
    u8 *lineAlignments;
    char **lineStrings;
    s16 *lineShadowSprites;
    u8 alignment;
    u8 indentWidth;
    u16 unk26;
    u16 unk28;
    u8 currentLine;
    s16 x;
    s16 y;
    u16 z;
    const char *string;
    u8 unk38;
    u8 unk39;
    u8 unk3A;
    void (*unk3C)();
    u32 unk40;
    void (*unk44)();
    u32 unk48;
    s16 *xSrc;
    s16 *ySrc;
    u8 unk54;
    s8 shadowColors;
    u8 unk56;
};

struct TextPrinterData {
    const char *string;
    u8 font;
    u8 colors;
    u8 alignment;
    u8 indentWidth;
};

extern void func_08009844(void); // Init. Static Variables
extern s32 func_08009884(s32 font); // Get Spacing Width
extern s32 func_08009898(s32 font, s32 glyphID); // Get Glyph Width
extern s32 func_080098c4(s32 font, const char **stream); // Get Glyph Width
extern s32 func_080098fc(s32 font, const char *string); // Get Width of a String
extern void func_08009948(s32 tileOfsX, s32 tileOfsY, s32 font, s32 glyphID, s32 lineColors); // Print Character to VRAM
extern s32 func_080099a0(s32 tileBaseX, s32 tileBaseY, s32 font, const char *string, s32 maxWidth, s32 lineColors); // Print Non-Formatted Line to VRAM (return width in pixels)
extern s32 func_08009a54(const char *c); // Check if Character is Any Sort of Open Bracket
extern s32 func_08009aa4(const char *c); // Check if Character is Any Sort of Ending Punctuation
extern s32 func_08009af4(s32 tileBaseX, s32 tileBaseY, s32 font, const char **charStream, s32 maxWidth, s32 lineColors, s32 indentWidth, s32 shadowColors); // Print Formatted Line to VRAM (return width in pixels)
extern struct Animation *func_08009de4(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char **string, u32 anchor, s32 lineColors, s32 maxWidth, s32 ignoreFormatting, s32 indentWidth, s32 shadowColors);
extern struct Animation *func_0800a004(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char *string, u32 anchor, s32 lineColors, s32 maxWidth);
extern struct Animation *func_0800a030(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char **string, u32 anchor, s32 lineColors, s32 maxWidth, s32 indentWidth, s32 shadowColors);
extern s32 func_0800a05c(void); // Get sCurrentLineWidth
extern void func_0800a068(struct StaticAnimation *anim); // Delete Text Animation
extern void func_0800a084(void *func); // Set sModifyPrinterSettings
extern void func_0800a090(u32 tileBaseX, u32 tileBaseY, u32 allocatedTiles, u32 unused, u32 color); // Fill Allocated Space With Given Pixel
extern void func_0800a0f0(u32 tileBaseX, u32 tileBaseY, u32 allocatedTiles, u32 unused, u32 color); // Fill Allocated Space With Given Pixel
extern s32 func_0800a108(const char **string); // Get Glyph ID
extern u32 func_0800a1ac(u32 maxWidth);
extern s32 func_0800a1d4(u32 totalLines, u32 id);
extern struct TextPrinter *func_0800a204(u16 memID, u32 totalLines, u32 maxWidth, u32 arg3); // Create New
extern void func_0800a2f8(u32 arg, s32 xOffset); // Format Function for Escape Character '\1'
extern const char *func_0800a4a8(struct TextPrinter *textPrinter, u32 currentLine, const char *string);
extern void func_0800a6a0(struct TextPrinter *textPrinter); // Align Sprites
extern void func_0800a794(struct TextPrinter *textPrinter, u32 show); // Show/Hide Text
extern void func_0800a7fc(struct TextPrinter *textPrinter, u32 show); // Show/Hide Text On Render
extern void func_0800a818(struct TextPrinter *textPrinter); // Update Single-String
extern void func_0800a890(struct TextPrinter *textPrinter); // Update Multi-String
extern void func_0800a914(struct TextPrinter *); // Update
extern void func_0800a934(struct TextPrinter *textPrinter); // Remove Text
// extern ? func_0800aa1c(?);
extern void func_0800aa4c(struct TextPrinter *textPrinter, const char *text); // Set Text
extern const char *func_0800aa78(struct TextPrinter *textPrinter); // Get Text
extern void func_0800aa9c(struct TextPrinter *textPrinter); // Reinsert Text ("Continue"?)
// extern ? func_0800aac0(?);
// extern ? func_0800abb0(?);
extern s32 func_0800ac58(struct TextPrinter *textPrinter); // Get Active Printing Status
extern void func_0800ac68(struct TextPrinter *textPrinter, s16 x, s16 y); // Set X & Y
extern void func_0800ac80(struct TextPrinter *textPrinter, s16 x); // Set X
extern void func_0800ac90(struct TextPrinter *textPrinter, s16 y); // Set Y
extern void func_0800aca0(struct TextPrinter *textPrinter, u16 z); // Set Z (Sprite Depth/Layer)
extern void func_0800acb0(struct TextPrinter *textPrinter, u32 palette); // Set Palette
extern void func_0800acbc(struct TextPrinter *textPrinter, u32 colors); // Set Colors
extern void func_0800acc8(struct TextPrinter *textPrinter, u32 alignment); // Set Alignment
extern void func_0800acd8(struct TextPrinter *textPrinter, u32 arg); // Set unk38
extern s32 func_0800ace8(struct TextPrinter *textPrinter); // Get unk26
extern void func_0800acf8(struct TextPrinter *textPrinter, s16 *vx, s16 *vy); // Store Centred X & Y to Vector
extern void func_0800ad20(struct TextPrinter *textPrinter, void *onPrint, s32 param); // Set On-Print Function and Parameter
extern void func_0800ad30(struct TextPrinter *textPrinter, void *onClear, s32 param); // Set On-Clear Function and Parameter
extern void func_0800ad40(struct TextPrinter *textPrinter, struct TextPrinterData *data); // Export Text Printer Data
extern void func_0800ad68(struct TextPrinter *textPrinter, struct TextPrinterData *data); // Import Text Printer Data
extern void func_0800ad98(struct TextPrinter *textPrinter, s16 *xSrc, s16 *ySrc); // Set X & Y Sources
extern void func_0800ada8(struct TextPrinter *textPrinter, s16 *xSrc); // Set X Source
extern void func_0800adb4(struct TextPrinter *textPrinter, s16 *ySrc); // Set Y Source
extern void func_0800adc0(struct TextPrinter *textPrinter, u32 printMultipleStrings); // Set Print Mode
extern s16 func_0800add8(struct TextPrinter *textPrinter, s32 line); // Get Line Sprite
extern void func_0800ae00(struct TextPrinter *textPrinter, u32 lineSpacing); // Set Line Spacing
extern void func_0800ae0c(struct TextPrinter *textPrinter, s32 shadowColors); // Set Shadow Colors
