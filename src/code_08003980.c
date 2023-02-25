#include "code_08003980.h"

asm(".include \"include/gba.inc\"");//Temporary

// Can be better split

static s32 D_030005c8[96]; // ARM Function (func_08000a00)
static s32 D_03000748[6]; // unknown type
static s32 D_03000760[80]; // unknown type
static s16 D_030008a0; // unknown type
static s16 D_030008a2; // unknown type
static s16 D_030008a4; // unknown type
static s16 D_030008a6; // unknown type
static s16 D_030008a8; // unknown type
static s16 D_030008aa; // unknown type
static s8 D_030008ac; // unknown type
static s8 D_030008ad; // unknown type

#include "asm/code_08003980/asm_08003980.s"

#include "asm/code_08003980/asm_080039a8.s"

#include "asm/code_08003980/asm_080039d4.s"

#include "asm/code_08003980/asm_080039e8.s"

#include "asm/code_08003980/asm_08003a00.s"

#include "asm/code_08003980/asm_08003a18.s"

#include "asm/code_08003980/asm_08003a34.s"

#include "asm/code_08003980/asm_08003a40.s"

#include "asm/code_08003980/asm_08003a50.s"

#include "asm/code_08003980/asm_08003a6c.s"

#include "asm/code_08003980/asm_08003a78.s"

#include "asm/code_08003980/asm_08003a88.s"

#include "asm/code_08003980/asm_08003aa4.s"

#include "asm/code_08003980/asm_08003ab8.s"

#include "asm/code_08003980/asm_08003ac4.s"

#include "asm/code_08003980/asm_08003b28.s"

#include "asm/code_08003980/asm_08003b34.s"

#include "asm/code_08003980/asm_08003bd4.s"

#include "asm/code_08003980/asm_08003c18.s"

#include "asm/code_08003980/asm_08003c1c.s"

#include "asm/code_08003980/asm_08003de0.s"

#include "asm/code_08003980/asm_08003dec.s"

#include "asm/code_08003980/asm_08003e00.s"

#include "asm/code_08003980/asm_08003e64.s"

#include "asm/code_08003980/asm_08003ea4.s"

#include "asm/code_08003980/asm_08003eb8.s"

#include "asm/code_08003980/asm_08003f28.s"

#include "asm/code_08003980/asm_08003f50.s"

#include "asm/code_08003980/asm_08003fb4.s"

#include "asm/code_08003980/asm_08003ff0.s"

#include "asm/code_08003980/asm_0800402c.s"

#include "asm/code_08003980/asm_08004058.s"

#include "asm/code_08003980/asm_08004070.s"

#include "asm/code_08003980/asm_080041d0.s"

#include "asm/code_08003980/asm_08004248.s"

#include "asm/code_08003980/asm_0800425c.s"

#include "asm/code_08003980/asm_08004270.s"

#include "asm/code_08003980/asm_080042a4.s"

#include "asm/code_08003980/asm_080042bc.s"


static s32 D_030008b0[2]; // unknown type
static s32 D_030008b8[16]; // unknown type
static s32 D_030008f8[2]; // unknown type

enum FTextLatinCharTypesEnum {
    F_TEXT_NON_LATIN,
    F_TEXT_LATIN_FULLWIDTH,
    F_TEXT_LATIN_HALFWIDTH
};

extern const char *D_08936b50; // Fullwidth Lowercase Latin Alphabet Table


// Get glyph texture and width.
void func_080043c8(const struct FontDefinition *font, const char *string, void **textureReq, u32 *widthReq) {
    void *textures;
    u8 *widths;
    u32 id;

    textures = NULL;
    widths = NULL;

    switch (string[0]) {
        case 0x81:
            // Fullwidth Japanese Punctuation
            if ((string[1] >= 0x40) && (string[1] <= 0x7E)) {
                textures = font->punctuationTextures;
                widths = font->punctuationWidths;
                id = string[1] - 0x40;
                break;
            }
            // Fullwidth Japanese Punctuation
            if ((string[1] >= 0x80) && (string[1] <= 0x9E)) {
                textures = font->punctuationTextures;
                widths = font->punctuationWidths;
                id = string[1] - 0x41;
                break;
            }
            break;

        case 0x82:
            // Fullwidth Arabic Numerals
            if ((string[1] >= 0x4F) && (string[1] <= 0x58)) {
                textures = font->arabicNumeralTextures;
                widths = font->arabicNumeralWidths;
                id = string[1] - 0x4F;
                break;
            }
            // Fullwidth Uppercase Latin Alphabet
            if ((string[1] >= 0x60) && (string[1] <= 0x79)) {
                textures = font->latinUppercaseTextures;
                widths = font->latinUppercaseWidths;
                id = string[1] - 0x60;
                break;
            }
            // Fullwidth Lowercase Latin Alphabet
            if ((string[1] >= 0x81) && (string[1] <= 0x9A)) {
                textures = font->latinLowercaseTextures;
                widths = font->latinLowercaseWidths;
                id = string[1] - 0x81;
                break;
            }
            // Fullwidth Hiragana Alphabet
            if ((string[1] >= 0x9F) && (string[1] <= 0xFC)) {
                textures = font->hiraganaTextures;
                widths = font->hiraganaWidths;
                id = string[1] - 0x9F;
                break;
            }
            break;

        case 0x83:
            // Fullwidth Katakana Alphabet
            if ((string[1] >= 0x40) && (string[1] <= 0x7E)) {
                textures = font->katakanaTextures;
                widths = font->katakanaWidths;
                id = string[1] - 0x40;
                break;
            }
            // Fullwidth Katakana Alphabet
            if ((string[1] >= 0x80) && (string[1] <= 0x9E)) {
                textures = font->katakanaTextures;
                widths = font->katakanaWidths;
                id = string[1] - 0x41;
                break;
            }
            break;
    }

    if (textures == NULL) {
        if (textureReq != NULL) {
            *textureReq = NULL;
        }
        if (widthReq != NULL) {
            *widthReq = 0;
        }
    } else {
        if (textureReq != NULL) {
            *textureReq = textures + (((font->textureWidth * font->textureHeight) / 2) * id);
        }

        if (widthReq != NULL) {
            if (widths != NULL) {
                *widthReq = widths[id];
            } else {
                *widthReq = font->textureWidth;
            }
        }
    }
}


#include "asm/code_08003980/asm_080044f0.s"

#include "asm/code_08003980/asm_08004508.s"

#include "asm/code_08003980/asm_08004574.s"

#include "asm/code_08003980/asm_0800459c.s"

#include "asm/code_08003980/asm_080045b4.s"

#include "asm/code_08003980/asm_080045d0.s"


// Get total animation objects required for generated text (ignoring whitespace).
u32 func_080045fc(const char *string) {
    u32 total = 0;

    for (; string[0] != '\0'; string += 2) {
        if (string[0] == '.') {
            continue;
        }

        if (string[0] == ':') {
            continue;
        }

        if (!func_0800496c(string)) {
            total++;
        }
    }

    return total;
}


#include "asm/code_08003980/asm_08004628.s"


// Get font style/palette value.
u8 func_0800467c(char c) {
    if ((c >= '0') && (c <= '9')) {
        return c - '0';
    }

    if ((c >= 'a') && (c <= 'f')) {
        return c - 'a' + 10;
    }

    if ((c >= 'A') && (c <= 'F')) {
        return c - 'A' + 10;
    }

    return 0;
}


#include "asm/code_08003980/asm_080046c0.s"


// Print glyph (halfwidth).
void func_08004714(const u16 *texture, u16 *dest) {
    u32 i;

    for (i = 0; i < 2; i++) {
        dma3_set(texture, dest, 0x20, 0x20, 0x100);
        texture += 0x20;
        dest += 0x200;
    }
}


// Print glyph (fullwidth).
void func_08004748(const u16 *texture, u16 *dest) {
    u32 i;

    for (i = 0; i < 2; i++) {
        dma3_set(texture, dest, 0x40, 0x20, 0x100);
        texture += 0x20;
        dest += 0x200;
    }
}


#include "asm/code_08003980/asm_0800477c.s"


// Checks if a char is whitespace.
u32 func_0800496c(const char *string) {
    if ((string[0] == 0x81) && (string[1] == 0x40)) {
        return TRUE;
    }

    if ((string[0] == ' ') && (string[1] == ' ')) {
        return TRUE;
    }

    if ((string[0] == 0x81) && (string[1] == 0x51)) {
        return TRUE;
    }

    return FALSE;
}


// Check if a char is a supported Latin alphabet char.
u32 func_080049a0(const char *string) {
    // Halfwidth Lowercase Latin Alphabet
    if ((string[0] >= 'a') && (string[0] <= 'z') && (string[1] >= 'a') && (string[1] <= 'z')) {
        return F_TEXT_LATIN_HALFWIDTH;
    }

    // Fullwidth Lowercase Latin Alphabet
    if (string[0] == 0x82) {
        if ((string[1] >= 0x81) && (string[1] <= 0x9A)) {
            return F_TEXT_LATIN_FULLWIDTH;
        }
    }

    // Other
    return F_TEXT_NON_LATIN;
}


// Convert halfwidth Latin Alphabet character to fullwidth.
const char *func_080049dc(const char *string) {
    return &D_08936b50[(string[0] - 'a') * 2];
}


#include "asm/code_08003980/asm_080049f0.s"

#include "asm/code_08003980/asm_08004b60.s"

#include "asm/code_08003980/asm_08004b70.s"

#include "asm/code_08003980/asm_08004b88.s"

#include "asm/code_08003980/asm_08004b98.s"

#include "asm/code_08003980/asm_08004bfc.s"

#include "asm/code_08003980/asm_08004c0c.s"

#include "asm/code_08003980/asm_08004c40.s"

#include "asm/code_08003980/asm_08004c50.s"

#include "asm/code_08003980/asm_08004cac.s"

#include "asm/code_08003980/asm_08004ccc.s"

#include "asm/code_08003980/asm_08004d44.s"

// D_08936b54 function 1
#include "asm/code_08003980/asm_08004da0.s"

// D_08936b54 function 2
#include "asm/code_08003980/asm_08004dc0.s"

#include "asm/code_08003980/asm_08004e60.s"

#include "asm/code_08003980/asm_08004e88.s"

#include "asm/code_08003980/asm_08004eac.s"

#include "asm/code_08003980/asm_08004ff4.s"

#include "asm/code_08003980/asm_08005014.s"

#include "asm/code_08003980/asm_080050bc.s"

#include "asm/code_08003980/asm_08005124.s"

#include "asm/code_08003980/asm_08005188.s"

#include "asm/code_08003980/asm_080051a4.s"

#include "asm/code_08003980/asm_080051c4.s"

#include "asm/code_08003980/asm_080051f0.s"

#include "asm/code_08003980/asm_08005208.s"

#include "asm/code_08003980/asm_08005328.s"

#include "asm/code_08003980/asm_0800536c.s"

#include "asm/code_08003980/asm_08005424.s"

// D_08936b64 function 1
#include "asm/code_08003980/asm_080054b0.s"

// D_08936b64 function 2
#include "asm/code_08003980/asm_080054f0.s"

#include "asm/code_08003980/asm_080055fc.s"

#include "asm/code_08003980/asm_08005640.s"

#include "asm/code_08003980/asm_0800568c.s"

#include "asm/code_08003980/asm_08005814.s"

#include "asm/code_08003980/asm_0800584c.s"

// D_08936b74 function 1
#include "asm/code_08003980/asm_08005858.s"

// D_08936b74 function 2
#include "asm/code_08003980/asm_08005878.s"

#include "asm/code_08003980/asm_080058b0.s"

#include "asm/code_08003980/asm_080058dc.s"

#include "asm/code_08003980/asm_0800598c.s"