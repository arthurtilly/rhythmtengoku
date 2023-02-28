#pragma once

#include "global.h"
#include "graphics.h"
#include "data/data_08936b54.h"

// extern ? func_08003980(?);
// extern ? func_080039a8(?);
// extern ? func_080039d4(?);
// extern ? func_080039e8(?);
// extern ? func_08003a00(?);
// extern ? func_08003a18(?);
// extern ? func_08003a34(?);
// extern ? func_08003a40(?);
// extern ? func_08003a50(?);
// extern ? func_08003a6c(?);
// extern ? func_08003a78(?);
// extern ? func_08003a88(?);
// extern ? func_08003aa4(?);
extern u32  func_08003ab8();
// extern ? func_08003ac4(?);
// extern ? func_08003b28(?);
// extern ? func_08003b34(?);
// extern ? func_08003bd4(?);
// extern ? func_08003c18(?);
// extern ? func_08003c1c(?);
// extern ? func_08003de0(?);
// extern ? func_08003dec(?);
// extern ? func_08003e00(?);
// extern ? func_08003e64(?);
// extern ? func_08003ea4(?);
// extern ? func_08003eb8(?);
// extern ? func_08003f28(?);
// extern ? func_08003f50(?);
// extern ? func_08003fb4(?);
// extern ? func_08003ff0(?);
// extern ? func_0800402c(?);
// extern ? func_08004058(?); // ?
// extern ? func_08004070(?);
// extern ? func_080041d0(?);
// extern ? func_08004248(?);
// extern ? func_0800425c(?);
// extern ? func_08004270(?);
// extern ? func_080042a4(?);
// extern ? func_080042bc(?);

extern void func_080043c8(const struct FontDefinition *font, const char *string, void **textureReq, u32 *widthReq); // Get printable glyph texture and width.
extern struct TextObject1 *func_080044f0(u16 memID, const struct FontDefinition *fonts, u32 baseTileNum, u32 maxTileRows); // Create new TextObject1 (no casting?).
extern struct TextObject1 *func_08004508(u16 memID, const struct FontDefinition *fonts, u16 baseTileNum, u8 maxTileRows); // Create new TextObject1.
extern void func_08004574(struct TextObject1 *textObj); // Delete TextObject1.
extern void func_0800459c(struct TextObject1 *textObj, void *stringParserFunc, u32 maxOutputLength); // Set TextObject1 parseString() function and allocate space for parsedOutput.
extern void func_080045b4(struct TextObject1 *textObj, const struct FontDefinition *fonts, u16 baseTileNum, u8 maxTileRows, u32, u32, u16 *printedGlyphs, u8 *printedGlyphCounts); // Set TextObject1 data.
extern void func_080045d0(struct TextObject1 *textObj); // Clear TextObject1 printed glyph data.
extern u32 func_080045fc(const char *string); // Get total animation objects required for generated text (ignoring whitespace).
extern u32 func_08004628(const struct FontDefinition *font, const char *string); // Get glyph width.
extern u8 func_0800467c(char c); // Get value for font style/palette.
extern u32 func_080046c0(const struct FontDefinition *font, const char *string); // Get string width.
extern void func_08004714(const u16 *texture, u16 *dest); // Print glyph (halfwidth).
extern void func_08004748(const u16 *texture, u16 *dest); // Print glyph (fullwidth).
extern u16 func_0800477c(struct TextObject1 *textObj, const char *string, u32 *widthReq); // Print glyph, returning the tileID.
extern u32 func_0800496c(const char *string); // Check if a char is whitespace.
extern u32 func_080049a0(const char *string); // Check if a char is a supported Latin alphabet char.
extern const char *func_080049dc(const char *string); // Convert halfwidth Latin Alphabet character to fullwidth.
extern void *func_080049f0(struct TextObject1 *textObj, const char *string, u32 *widthReq, u32 fontStyle, u32 palette); // Create Animation.
extern struct Animation *func_08004b60(struct TextObject1 *textObj, const char *string); // Get Animation (Unaligned, default FontStyle and Palette).
extern struct Animation *func_08004b70(struct TextObject1 *textObj, const char *string, u32 fontStyle, u32 palette); // Get Animation (Unaligned).
extern struct Animation *func_08004b88(struct TextObject1 *textObj, const char *string); // Get Animation (Center-aligned, default FontStyle and Palette).
extern struct Animation *func_08004b98(struct TextObject1 *textObj, const char *string, u32 fontStyle, u32 palette); // Get Animation (Center-aligned).
extern struct Animation *func_08004bfc(struct TextObject1 *textObj, const char *string); // Get Animation (Left-aligned, default FontStyle and Palette).
extern struct Animation *func_08004c0c(struct TextObject1 *textObj, const char *string, u32 fontStyle, u32 palette); // Get Animation (Left-aligned).
extern struct Animation *func_08004c40(struct TextObject1 *textObj, const char *string); // Get Animation (Right-aligned, default FontStyle and Palette).
extern struct Animation *func_08004c50(struct TextObject1 *textObj, const char *string, u32 fontStyle, u32 palette); // Get Animation (Right-aligned).
extern struct Animation *func_08004cac(struct TextObject1 *textObj, const char *string, s16 x, s16 y); // Get Animation (Shift to XY, default FontStyle and Palette).
extern struct Animation *func_08004ccc(struct TextObject1 *textObj, const char *string, s16 x, s16 y, u32 fontStyle, u32 palette); // Get Animation (Shift to XY).
extern void func_08004d44(struct TextObject1 *textObj, struct Animation *anim); // Delete printed TextObject1.
extern struct unk_struct_08004da0 *func_08004da0(struct unk_struct_08004da0_init *arg0);
extern u32 func_08004dc0(struct unk_struct_08004da0 *arg0);
// extern ? func_08004e60(?);
// extern ? func_08004e88(?);
// extern ? func_08004eac(?);
// extern ? func_08004ff4(?);
// extern ? func_08005014(?);
// extern ? func_080050bc(?);
extern struct TextObject2 *func_08005124(u16, const struct FontDefinition *, u8, u16, u8); // Create Text2 thing
// extern ? func_08005188(?);
// extern ? func_080051a4(?);
// extern ? func_080051c4(?); // Clear Text2 text
// extern ? func_080051f0(?);
// extern ? func_08005208(?);
// extern ? func_08005328(?);
// extern ? func_0800536c(?);
// extern ? func_08005424(?);
extern struct unk_struct_080054b0 *func_080054b0(struct unk_struct_080054b0_init *arg0);
extern u32 func_080054f0(struct unk_struct_080054b0 *arg0);
// extern ? func_080055fc(?);
// extern ? func_08005640(?);
// extern ? func_0800568c(?); // render some read-only sprite/text thing
extern u32 func_08005814(struct SpriteHandler *, struct TextObject1 *, const void *, u16 *); // do the above but for all in an array
// extern ? func_0800584c(?); // set D_03004ae8
extern struct unk_struct_08005858 *func_08005858(struct unk_struct_08005858_init *arg0);
extern u32 func_08005878(struct unk_struct_08005858 *arg0);
// extern ? func_080058b0(?);
// extern ? func_080058dc(?);
// extern ? func_0800598c(?);
