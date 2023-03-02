#include "global.h"
#include "graphics.h"
#include "src/code_08003980.h"

// WarioWare Display Font: Large
extern const u8 D_088d44e8[]; // Textures - Punctuation/Symbols
extern const u8 D_088d3ae8[]; // Textures - Arabic Numerals
extern const u8 D_088d3fe8[]; // Textures - Arabic Numerals (Alt.)
extern const u8 D_088cc2e8[]; // Textures - Latin Alphabet (Uppercase)
extern const u8 D_088ccfe8[]; // Textures - Latin Alphabet (Lowercase)
extern const u8 D_088cdce8[]; // Textures - Hiragana Alphabet
extern const u8 D_088d0be8[]; // Textures - Katakana Alphabet

// WarioWare Display Font: Small
extern const u8 D_088e46e8[]; // Textures - Punctuation/Symbols
extern const u8 D_088e41e8[]; // Textures - Arabic Numerals
extern const u8 D_088dc9e8[]; // Textures - Latin Alphabet (Uppercase)
extern const u8 D_088dd6e8[]; // Textures - Latin Alphabet (Lowercase)
extern const u8 D_088de3e8[]; // Textures - Hiragana Alphabet
extern const u8 D_088e12e8[]; // Textures - Katakana Alphabet

// WarioWare Body Font: Style 1, Style 2
extern const u8 D_088db268[]; // Textures - Punctuation/Symbols
extern const u8 D_088dafe8[]; // Textures - Arabic Numerals
extern const u8 D_088d73e8[]; // Textures - Latin Alphabet (Uppercase)
extern const u8 D_088d7a68[]; // Textures - Latin Alphabet (Lowercase)
extern const u8 D_088d80e8[]; // Textures - Hiragana Alphabet
extern const u8 D_088d9868[]; // Textures - Katakana Alphabet

// WarioWare Body Font: Style 2
extern const u8 D_088e7c68[]; // Textures - Arabic Numerals
extern const u8 D_088e75e8[]; // Textures - Latin Alphabet (Uppercase)


/* Font Definitions */


// [D_089de30c] Display Font (Large) - Punctuation/Symbols
u8 bitmap_font_warioware_outline_large_symbol_widths[] = {
     0,  9,  8,  5,  5, 10,  6,  6, 12,  9,  9,  9, 11, 10, 10, 11,
    14, 14, 14, 11, 14, 14, 11, 16, 11, 11, 11, 16, 16, 11, 16, 15,
    16, 11,  9, 14, 14,  4,  4,  7,  7, 10, 10,  6,  5,  5,  5, 11,
    11, 13, 13,  8,  9,  7,  7,  7,  6,  7,  6, 13, 13, 12, 13, 13,
    13, 12, 11, 12, 12, 11, 12, 12, 12, 14,  8,  9, 10, 12, 16, 11,
    11, 12, 14, 15, 14, 13, 15, 11, 16, 16, 12, 13, 13, 13
};

// [D_089de36a] Display Font (Large) - Arabic Numerals
u8 bitmap_font_warioware_outline_large_numeral_widths[] = {
    14, 12, 13, 13, 13, 13, 13, 13, 13, 13
};

// [D_089de374] Display Font (Large) - Arabic Numerals (Alt.)
u8 bitmap_font_warioware_outline_large_alt_numeral_widths[] = {
     7,  6,  7,  7,  7,  7,  7,  7,  7,  7
};

// [D_089de37e] Display Font (Large) - Latin Alphabet (Uppercase)
u8 bitmap_font_warioware_outline_large_latin_upper_widths[] = {
    14, 14, 14, 13, 14, 13, 14, 14, 12, 14, 13, 13, 16, 14, 14, 14,
    14, 13, 13, 14, 13, 14, 15, 15, 14, 14
};

// [D_089de398] Display Font (Large) - Latin Alphabet (Lowercase)
u8 bitmap_font_warioware_outline_large_latin_lower_widths[] = {
     8,  8,  8,  8,  8,  8,  8,  8,  4,  7,  8,  5,  8,  8,  8,  8,
     8,  8,  8,  8,  8,  8,  8,  8,  8,  8
};

// [D_089de3b2] Display Font (Large) - Hiragana Alphabet
u8 bitmap_font_warioware_outline_large_hiragana_widths[] = {
    15, 16, 14, 16, 12, 15, 13, 15, 15, 15, 16, 16, 15, 16, 13, 15,
    16, 16, 15, 16, 15, 16, 15, 15, 15, 16, 16, 16, 15, 16, 16, 16,
    16, 16, 12, 15, 16, 15, 16, 14, 15, 15, 16, 16, 16, 16, 16, 16,
    16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 16, 16,
    16, 16, 14, 16, 13, 16, 14, 16, 16, 15, 15, 16, 15, 15, 16, 16,
    16, 15, 16, 16, 14, 14,  0,  0,  0,  0,  0,  0,  0,  0
};

// [D_089de410] Display Font (Large) - Katakana Alphabet
u8 bitmap_font_warioware_outline_large_katakana_widths[] = {
    14, 16, 13, 16, 13, 16, 14, 16, 13, 16, 16, 16, 16, 16, 15, 16,
    16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 16,
    16, 16, 13, 15, 16, 16, 16, 15, 15, 16, 16, 16, 16, 13, 15, 16,
    16, 16, 16, 16, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 16,
    15, 15, 14, 16, 14, 16, 13, 15, 16, 15, 16, 15, 15, 14, 15, 16,
    16, 15, 16, 16, 14, 14,  0,  0,  0,  0,  0,  0,  0,  0
};


// [D_089de46e] Display Font (Small) - Punctuation/Symbols
u8 bitmap_font_warioware_outline_small_symbol_widths[] = {
     0,  7,  6,  5,  5,  9,  6,  6, 11,  7,  9,  9, 11, 10, 10, 11,
    14, 11, 11, 11, 10, 10, 11, 14, 11, 11, 11, 11, 11, 11, 11, 15,
    12, 11,  9, 11, 11,  4,  4,  7,  7,  7,  6,  6,  5,  5,  5,  8,
     8, 10, 10,  8,  9,  7,  7,  7,  6,  7,  6, 11, 11, 12, 11, 11,
    11, 12, 11, 12, 12, 11, 12, 12, 11, 14,  8,  9, 10, 12, 11, 12,
    11, 12, 11, 15, 12, 10, 12, 11, 13, 13, 12, 13, 13, 13
};

// [D_089de4cc] Display Font (Small) - Arabic Numerals
u8 bitmap_font_warioware_outline_small_numeral_widths[] = {
    10,  6, 10, 10, 10, 10, 10, 10, 10, 10
};

// [D_089de4d6] Display Font (Small) - Latin Alphabet (Uppercase)
u8 bitmap_font_warioware_outline_small_latin_upper_widths[] = {
    10,  9, 10, 10,  9,  9, 10, 10,  6,  9, 10,  9, 11, 10, 11,  9,
    12, 10,  9, 10, 10, 11, 11, 11, 10, 10
};

// [D_089de4f0] Display Font (Small) - Latin Alphabet (Lowercase)
u8 bitmap_font_warioware_outline_small_latin_lower_widths[] = {
     8,  8,  8,  8,  8,  7,  8,  8,  4,  6,  8,  5,  8,  8,  8,  8,
     8,  7,  8,  7,  8,  8,  8,  8,  8,  8
};

// [D_089de50a] Display Font (Small) - Hiragana Alphabet
u8 bitmap_font_warioware_outline_small_hiragana_widths[] = {
    11, 12, 10, 12,  9, 10, 10, 13, 11, 13, 12, 12, 11, 12,  8, 12,
    12, 12, 12, 12, 12, 12, 10, 11, 12, 12, 12, 12, 12, 12, 12, 12,
    11, 11,  9, 12, 12, 12, 12, 11, 11, 12, 12, 12, 12, 12, 12, 12,
    12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 12, 12,
    12, 12, 10, 12, 10, 12,  9, 11, 11,  9, 12, 12, 11, 10, 12, 12,
    11, 11, 12, 12,  9,  9,  0,  0,  0,  0,  0,  0,  0,  0
};

// [D_089de568] Display Font (Small) - Katakana Alphabet
u8 bitmap_font_warioware_outline_small_katakana_widths[] = {
     9, 12,  8, 11,  9, 12, 10, 12,  9, 12, 12, 12, 12, 12, 12, 12,
    12, 12, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
    12, 12,  9, 12, 12, 12, 12,  9, 10, 12, 13, 12, 12,  9, 12, 12,
    12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
    12, 12,  9, 12,  9, 12,  8, 12, 12, 11, 12, 11, 12,  9, 12, 12,
    11, 12, 12, 12,  9,  9,  0,  0,  0,  0,  0,  0,  0,  0
};


// [D_089de5c8] WarioWare Outline Font
struct BitmapFontData bitmap_font_warioware_outline[] = {
    /* STYLE 1 - LARGE */ {
        /* DIMENSIONS */
            /* Whitespace W. */ 6,
            /* Glyph Width   */ 16,
            /* Glyph Height  */ 16,
            /* Descension H. */ 3,
            /* Spacing Width */ 0,

        /* GLYPHS: PUNCTUATION/SYMBOLS */
            /* Textures */ D_088d44e8,
            /* Widths   */ bitmap_font_warioware_outline_large_symbol_widths,
        /* GLYPHS: ARABIC NUMERALS */
            /* Textures */ D_088d3ae8,
            /* Widths   */ bitmap_font_warioware_outline_large_numeral_widths,
        /* GLYPHS: LATIN ALPHABET (UPPERCASE) */
            /* Textures */ D_088cc2e8,
            /* Widths   */ bitmap_font_warioware_outline_large_latin_upper_widths,
        /* GLYPHS: LATIN ALPHABET (LOWERCASE) */
            /* Textures */ D_088ccfe8,
            /* Widths   */ bitmap_font_warioware_outline_large_latin_lower_widths,
        /* GLYPHS: HIRAGANA ALPHABET */
            /* Textures */ D_088cdce8,
            /* Widths   */ bitmap_font_warioware_outline_large_hiragana_widths,
        /* GLYPHS: KATAKANA ALPHABET */
            /* Textures */ D_088d0be8,
            /* Widths   */ bitmap_font_warioware_outline_large_katakana_widths,
    },

    /* STYLE 2 - SMALL */ {
        /* DIMENSIONS */
            /* Whitespace W. */ 5,
            /* Glyph Width   */ 16,
            /* Glyph Height  */ 16,
            /* Descension H. */ 3,
            /* Spacing Width */ -1,

        /* GLYPHS: PUNCTUATION/SYMBOLS */
            /* Textures */ D_088e46e8,
            /* Widths   */ bitmap_font_warioware_outline_small_symbol_widths,
        /* GLYPHS: ARABIC NUMERALS */
            /* Textures */ D_088e41e8,
            /* Widths   */ bitmap_font_warioware_outline_small_numeral_widths,
        /* GLYPHS: LATIN ALPHABET (UPPERCASE) */
            /* Textures */ D_088dc9e8,
            /* Widths   */ bitmap_font_warioware_outline_small_latin_upper_widths,
        /* GLYPHS: LATIN ALPHABET (LOWERCASE) */
            /* Textures */ D_088dd6e8,
            /* Widths   */ bitmap_font_warioware_outline_small_latin_lower_widths,
        /* GLYPHS: HIRAGANA ALPHABET */
            /* Textures */ D_088de3e8,
            /* Widths   */ bitmap_font_warioware_outline_small_hiragana_widths,
        /* GLYPHS: KATAKANA ALPHABET */
            /* Textures */ D_088e12e8,
            /* Widths   */ bitmap_font_warioware_outline_small_katakana_widths,
    },

    /* STYLE 3 - LARGE (ALT. NUMERALS) */ {
        /* DIMENSIONS */
            /* Whitespace W. */ 6,
            /* Glyph Width   */ 16,
            /* Glyph Height  */ 16,
            /* Descension H. */ 3,
            /* Spacing Width */ 0,

        /* GLYPHS: PUNCTUATION/SYMBOLS */
            /* Textures */ D_088d44e8,
            /* Widths   */ bitmap_font_warioware_outline_large_symbol_widths,
        /* GLYPHS: ARABIC NUMERALS */
            /* Textures */ D_088d3fe8,
            /* Widths   */ bitmap_font_warioware_outline_large_alt_numeral_widths,
        /* GLYPHS: LATIN ALPHABET (UPPERCASE) */
            /* Textures */ D_088cc2e8,
            /* Widths   */ bitmap_font_warioware_outline_large_latin_upper_widths,
        /* GLYPHS: LATIN ALPHABET (LOWERCASE) */
            /* Textures */ D_088ccfe8,
            /* Widths   */ bitmap_font_warioware_outline_large_latin_lower_widths,
        /* GLYPHS: HIRAGANA ALPHABET */
            /* Textures */ D_088cdce8,
            /* Widths   */ bitmap_font_warioware_outline_large_hiragana_widths,
        /* GLYPHS: KATAKANA ALPHABET */
            /* Textures */ D_088d0be8,
            /* Widths   */ bitmap_font_warioware_outline_large_katakana_widths,
    }
};

// [D_089de670] WarioWare Body Text Font
struct BitmapFontData bitmap_font_warioware_body[] = {
    /* STYLE 1 - ? */ {
        /* DIMENSIONS */
            /* Whitespace W. */ 8,
            /* Glyph Width   */ 8,
            /* Glyph Height  */ 16,
            /* Descension H. */ 0,
            /* Spacing Width */ 0,

        /* GLYPHS: PUNCTUATION/SYMBOLS */
            /* Textures */ D_088db268,
            /* Widths   */ NULL,
        /* GLYPHS: ARABIC NUMERALS */
            /* Textures */ D_088dafe8,
            /* Widths   */ NULL,
        /* GLYPHS: LATIN ALPHABET (UPPERCASE) */
            /* Textures */ D_088d73e8,
            /* Widths   */ NULL,
        /* GLYPHS: LATIN ALPHABET (LOWERCASE) */
            /* Textures */ D_088d7a68,
            /* Widths   */ NULL,
        /* GLYPHS: HIRAGANA ALPHABET */
            /* Textures */ D_088d80e8,
            /* Widths   */ NULL,
        /* GLYPHS: KATAKANA ALPHABET */
            /* Textures */ D_088d9868,
            /* Widths   */ NULL,
    },

    /* STYLE 2 - ? */ {
        /* DIMENSIONS */
            /* Whitespace W. */ 8,
            /* Glyph Width   */ 8,
            /* Glyph Height  */ 16,
            /* Descension H. */ 0,
            /* Spacing Width */ 0,

        /* GLYPHS: PUNCTUATION/SYMBOLS */
            /* Textures */ D_088db268,
            /* Widths   */ NULL,
        /* GLYPHS: ARABIC NUMERALS */
            /* Textures */ D_088e7c68,
            /* Widths   */ NULL,
        /* GLYPHS: LATIN ALPHABET (UPPERCASE) */
            /* Textures */ D_088e75e8,
            /* Widths   */ NULL,
        /* GLYPHS: LATIN ALPHABET (LOWERCASE) */
            /* Textures */ D_088d7a68,
            /* Widths   */ NULL,
        /* GLYPHS: HIRAGANA ALPHABET */
            /* Textures */ D_088d80e8,
            /* Widths   */ NULL,
        /* GLYPHS: KATAKANA ALPHABET */
            /* Textures */ D_088d9868,
            /* Widths   */ NULL,
    }
};
