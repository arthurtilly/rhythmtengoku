#include "code_08003980.h"
#include "memory_heap.h"

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

static s8 D_030008ae[2]; // padding

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


static u8 D_030008b0; // Font/Style
static s32 D_030008b4; // Unused
static s32 D_030008b8[16]; // unknown type
static s32 D_030008f8[2]; // unknown type

enum FTextLatinCharTypesEnum {
    F_TEXT_NON_LATIN,
    F_TEXT_LATIN_FULLWIDTH,
    F_TEXT_LATIN_HALFWIDTH
};

extern const char *D_08936b50; // Fullwidth Lowercase Latin Alphabet Table


// Get printable glyph texture and width.
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


// Create new TextObject1 (no casting?).
struct TextObject1 *func_080044f0(u16 memID, const struct FontDefinition *fonts, u32 baseTileNum, u32 maxTileRows) {
    return func_08004508(memID, fonts, baseTileNum, maxTileRows);
}


// Create new TextObject1.
struct TextObject1 *func_08004508(u16 memID, const struct FontDefinition *fonts, u16 baseTileNum, u8 maxTileRows) {
    struct TextObject1 *textObj;

    textObj = mem_heap_alloc_id(memID, sizeof(struct TextObject1));
    textObj->memID = memID;
    textObj->fonts = fonts;
    textObj->baseTileNum = baseTileNum;
    textObj->maxAllocatedTileRows = maxTileRows;
    textObj->printedGlyphs = mem_heap_alloc_id(memID, maxTileRows * 16 * sizeof(u16));
    textObj->printedGlyphCounts = mem_heap_alloc_id(memID, maxTileRows * 16 * sizeof(u8));
    textObj->parseString = NULL;
    textObj->parsedOutput = NULL;
    func_080045d0(textObj);

    return textObj;
}


// Delete TextObject1.
void func_08004574(struct TextObject1 *textObj) {
    mem_heap_dealloc(textObj->printedGlyphs);
    mem_heap_dealloc(textObj->printedGlyphCounts);
    if (textObj->parsedOutput != NULL) {
        mem_heap_dealloc(textObj->parsedOutput);
    }
    mem_heap_dealloc(textObj);
}


// Set TextObject1 parseString() function and allocate space for parsedOutput.
void func_0800459c(struct TextObject1 *textObj, void *stringParserFunc, u32 maxOutputLength) {
    textObj->parseString = stringParserFunc;
    textObj->parsedOutput = mem_heap_alloc_id(textObj->memID, maxOutputLength);
}


// Set TextObject1 data.
void func_080045b4(struct TextObject1 *textObj, const struct FontDefinition *fonts, u16 baseTileNum, u8 maxTileRows, u32 unused1, u32 unused2, u16 *printedGlyphs, u8 *printedGlyphCounts) {
    textObj->fonts = fonts;
    textObj->baseTileNum = baseTileNum;
    textObj->maxAllocatedTileRows = maxTileRows;
    textObj->printedGlyphs = printedGlyphs;
    textObj->printedGlyphCounts = printedGlyphCounts;
    func_080045d0(textObj);
}


// Clear TextObject1 printed glyph data.
void func_080045d0(struct TextObject1 *textObj) {
    u32 i;

    for (i = 0; i < (textObj->maxAllocatedTileRows * 16); i++) {
        textObj->printedGlyphs[i] = 0;
        textObj->printedGlyphCounts[i] = 0;
    }
}


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


// Get glyph width.
u32 func_08004628(const struct FontDefinition *font, const char *string) {
    u32 latinSpacingWidth, glyphWidth;

    if (func_0800496c(string)) {
        return font->whitespaceWidth;
    }

    if ((string[0] == '.') || (string[0] == ':')) {
        return 0;
    }

    if (func_080049a0(string) == F_TEXT_LATIN_HALFWIDTH) {
        latinSpacingWidth = 8;
        string = func_080049dc(&string[1]);
    } else {
        latinSpacingWidth = 0;
    }

    func_080043c8(font, string, NULL, &glyphWidth);
    return latinSpacingWidth + glyphWidth;
}


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


// Get string width.
u32 func_080046c0(const struct FontDefinition *font, const char *string) {
    const struct FontDefinition *currentFont;
    s32 width;

    currentFont = font;
    width = 0;

    for (; string[0] != '\0'; string += 2) {
        switch (string[0]) {
            case '.':
                break;

            case ':':
                currentFont = &font[func_0800467c(string[1])];
                break;

            default:
                if (width != 0) {
                    width += currentFont->spacingWidth;
                }
                width += func_08004628(currentFont, string);
                break;
        }
    }

    if (width < 0) {
        width = 0;
    }

    return width;
}


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


// Print glyph, returning the tile ID.
u16 func_0800477c(struct TextObject1 *textObj, const char *string, u32 *widthReq) {
    void *texture;
    u32 width;
    u8 glyphDataB0, glyphDataB1;
    u32 tileX, tileY, tileID;
    u16 *address;
    u8 *printed;
    u32 latinCharType;
    u32 i, j;

    latinCharType = func_080049a0(string);
    tileX = 99;
    printed = (u8 *)textObj->printedGlyphs;

    if (latinCharType != F_TEXT_LATIN_HALFWIDTH) {
        glyphDataB0 = (D_030008b0 << 4) | string[0];
        glyphDataB1 = string[1];
    } else {
        glyphDataB0 = ((string[0] - 'a') >> 3) | (D_030008b0 << 4) | (1 << 6);
        glyphDataB1 = ((string[0] - 'a') << 5) | (string[1] - 'a');
    }

    for (i = 0; i < textObj->maxAllocatedTileRows; i++) {
        for (j = 0; j < 16; j++) {
            if ((glyphDataB0 == printed[0]) && (glyphDataB1 == printed[1])) {
                *widthReq = func_08004628(&textObj->fonts[D_030008b0], string);
                textObj->printedGlyphCounts[j + (i * 16)]++;
                return textObj->baseTileNum + (j * 2) + ((i * 32) * 2);
            }
            if ((tileX == 99) && (printed[0] == 0) && (printed[1] == 0)) {
                tileX = j;
                tileY = i;
            }
            printed += 2;
        }
    }

    *widthReq = 0;

    if (tileX == 99) {
        return -1;
    }

    tileID = textObj->baseTileNum + (tileX * 2) + ((tileY * 32) * 2);
    address = (void *)((VRAMBase + 0x10000) + (tileID * 0x20));

    if (latinCharType == F_TEXT_LATIN_HALFWIDTH) {
        for (i = 0; i < 2; i++) {
            const char *fullwidthString = func_080049dc(&string[i]);
            func_080043c8(&textObj->fonts[D_030008b0], fullwidthString, &texture, &width);
            func_08004714(texture, &address[i * 16]);
            *widthReq += (i != 0) ? width : 8;
        }
    } else {
        func_080043c8(&textObj->fonts[D_030008b0], string, &texture, &width);
        func_08004748(texture, address);
        *widthReq = width;
    }

    i = tileX + (tileY * 16);
    printed = (u8 *)&textObj->printedGlyphs[i];
    printed[0] = glyphDataB0;
    printed[1] = glyphDataB1;
    textObj->printedGlyphCounts[i] = 1;

    return tileID;
}


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


// Create Animation. (https://decomp.me/scratch/QO7Bu)
#include "asm/code_08003980/asm_080049f0.s"


// Get Animation (Unaligned, default FontStyle and Palette).
struct Animation *func_08004b60(struct TextObject1 *textObj, const char *string) {
    return func_08004b70(textObj, string, 0, 0);
}


// Get Animation (Unaligned).
struct Animation *func_08004b70(struct TextObject1 *textObj, const char *string, u32 fontStyle, u32 palette) {
    return func_080049f0(textObj, string, NULL, fontStyle, palette);
}


// Get Animation (Center-aligned, default FontStyle and Palette).
struct Animation *func_08004b88(struct TextObject1 *textObj, const char *string) {
    return func_08004b98(textObj, string, 0, 0);
}


// Get Animation (Center-aligned).
struct Animation *func_08004b98(struct TextObject1 *textObj, const char *string, u32 fontStyle, u32 palette) {
    struct Animation *anim;
    u16 *cel, *oam;
    u32 totalWidth, i;

    anim = func_080049f0(textObj, string, &totalWidth, fontStyle, palette);
    totalWidth /= 2;
    cel = anim->cel;
    oam = &cel[1];

    for (i = 0; i < cel[0]; i++) {
        ((struct OAM *)oam)->xPos -= totalWidth;
        ((struct OAM *)oam)->yPos -= 8;
        oam += 3;
    }

    return anim;
}


// Get Animation (Left-aligned, default FontStyle and Palette).
struct Animation *func_08004bfc(struct TextObject1 *textObj, const char *string) {
    return func_08004c0c(textObj, string, 0, 0);
}


// Get Animation (Left-aligned).
struct Animation *func_08004c0c(struct TextObject1 *textObj, const char *string, u32 fontStyle, u32 palette) {
    struct Animation *anim;
    u16 *cel, *oam;
    u32 i;

    anim = func_080049f0(textObj, string, NULL, fontStyle, palette);
    cel = anim->cel;
    oam = &cel[1];

    for (i = 0; i < cel[0]; i++) {
        ((struct OAM *)oam)->yPos -= 8;
        oam += 3;
    }

    return anim;
}


// Get Animation (Right-aligned, default FontStyle and Palette).
struct Animation *func_08004c40(struct TextObject1 *textObj, const char *string) {
    return func_08004c50(textObj, string, 0, 0);
}


// Get Animation (Right-aligned).
struct Animation *func_08004c50(struct TextObject1 *textObj, const char *string, u32 fontStyle, u32 palette) {
    struct Animation *anim;
    u16 *cel, *oam;
    u32 totalWidth, i;

    anim = func_080049f0(textObj, string, &totalWidth, fontStyle, palette);
    cel = anim->cel;
    oam = &cel[1];

    for (i = 0; i < cel[0]; i++) {
        ((struct OAM *)oam)->xPos -= totalWidth;
        ((struct OAM *)oam)->yPos -= 8;
        oam += 3;
    }

    return anim;
}


// Get Animation (Shift to XY, default FontStyle and Palette).
struct Animation *func_08004cac(struct TextObject1 *textObj, const char *string, s16 x, s16 y) {
    return func_08004ccc(textObj, string, x, y, 0, 0);
}


// Get Animation (Shift to XY).
struct Animation *func_08004ccc(struct TextObject1 *textObj, const char *string, s16 x, s16 y, u32 fontStyle, u32 palette) {
    struct Animation *anim;
    u16 *cel, *oam;
    u32 i;

    anim = func_080049f0(textObj, string, NULL, fontStyle, palette);
    cel = anim->cel;
    oam = &cel[1];

    for (i = 0; i < cel[0]; i++) {
        ((struct OAM *)oam)->xPos -= x;
        ((struct OAM *)oam)->yPos -= y;
        oam += 3;
    }

    return anim;
}


// Delete printed TextObject1.
void func_08004d44(struct TextObject1 *textObj, struct Animation *anim) {
    u16 *cel, *oam;
    u32 i;

    if (anim == NULL) {
        return;
    }

    cel = anim->cel;
    oam = &cel[1];

    for (i = 0; i < cel[0]; i++) {
        u32 num;

        num = ((struct OAM *)oam)->tileNum - textObj->baseTileNum;
        num = ((num & 0x1F) / 2) + ((num / 64) * 16);

        textObj->printedGlyphCounts[num]--;
        if (textObj->printedGlyphCounts[num] == 0) {
            textObj->printedGlyphs[num] = 0;
        }

        oam += 3;
    }

    mem_heap_dealloc(anim);
}


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