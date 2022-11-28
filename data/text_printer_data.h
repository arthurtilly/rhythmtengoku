#pragma once


/* TEXT PRINTER DATA */


#define TEXT_PRINTER_TOTAL_GLYPHS 0x1CA4

struct TextPrinterFont {
    const u8 *glyphData;
    const u8 *glyphWidths;
    u8 glyphDataSize;
    u8 glyphSpacing;
    u8 unkA;
    u8 unkB;
};

extern const struct TextPrinterFont D_089380ac[];

extern const char D_089380d0[];
extern const char D_089380d4[];
extern const char D_089380e4[];
extern const char D_089380e8[];
extern const char D_08938138[];
extern const u16 D_08938140[];
extern const u16 D_0893817e[];
extern const char D_08938194[];
extern const u8 D_08938258[];
extern const u8 D_0893825d[];

extern const u8 text_small_glyphs_bin[]; // [D_08938264]
extern const u8 text_small_glyph_sizes_bin[]; // [D_089631c4]
extern const u8 text_medium_glyphs_bin[]; // [D_08964e68]
extern const u8 text_medium_glyph_sizes_bin[]; // [D_0898fdc8]
extern const u8 text_large_glyphs_bin[]; // [D_08991a6c]
extern const u8 text_large_glyph_sizes_bin[]; // [D_089caeec]
