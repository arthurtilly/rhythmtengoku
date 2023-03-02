#include "code_08003980.h"
#include "code_08001360.h"
#include "memory_heap.h"
#include "src/lib_0804ca80.h"

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
static u32 D_030008b4; // Unused
static u8 D_030008b8[0x40]; // Width of Each Glyph in the Current String
static u32 D_030008f8; // Font/Style
static u32 D_030008fc; // Unused

enum FTextLatinCharTypesEnum {
    F_TEXT_NON_LATIN,
    F_TEXT_LATIN_FULLWIDTH,
    F_TEXT_LATIN_HALFWIDTH
};

extern s32 (*D_03004ae4)(s32);
extern const char *D_08936b50; // Fullwidth Lowercase Latin Alphabet Table


// Get printable glyph texture and width.
void func_080043c8(const struct BitmapFontData *font, const char *string, u16 **textureReq, u32 *widthReq) {
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


// Create new BitmapFont (no casting?).
struct BitmapFontOBJ *func_080044f0(u16 memID, const struct BitmapFontData *fonts, u32 baseTileNum, u32 maxTileRows) {
    return func_08004508(memID, fonts, baseTileNum, maxTileRows);
}


// Create new BitmapFontOBJ.
struct BitmapFontOBJ *func_08004508(u16 memID, const struct BitmapFontData *fonts, u16 baseTileNum, u8 maxTileRows) {
    struct BitmapFontOBJ *textObj;

    textObj = mem_heap_alloc_id(memID, sizeof(struct BitmapFontOBJ));
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


// Delete BitmapFontOBJ.
void func_08004574(struct BitmapFontOBJ *textObj) {
    mem_heap_dealloc(textObj->printedGlyphs);
    mem_heap_dealloc(textObj->printedGlyphCounts);
    if (textObj->parsedOutput != NULL) {
        mem_heap_dealloc(textObj->parsedOutput);
    }
    mem_heap_dealloc(textObj);
}


// Set BitmapFontOBJ parseString() function and allocate space for parsedOutput.
void func_0800459c(struct BitmapFontOBJ *textObj, void *stringParserFunc, u32 maxOutputLength) {
    textObj->parseString = stringParserFunc;
    textObj->parsedOutput = mem_heap_alloc_id(textObj->memID, maxOutputLength);
}


// Set BitmapFontOBJ data.
void func_080045b4(struct BitmapFontOBJ *textObj, const struct BitmapFontData *fonts, u16 baseTileNum, u8 maxTileRows, u32 unused1, u32 unused2, u16 *printedGlyphs, u8 *printedGlyphCounts) {
    textObj->fonts = fonts;
    textObj->baseTileNum = baseTileNum;
    textObj->maxAllocatedTileRows = maxTileRows;
    textObj->printedGlyphs = printedGlyphs;
    textObj->printedGlyphCounts = printedGlyphCounts;
    func_080045d0(textObj);
}


// Clear BitmapFontOBJ printed glyph data.
void func_080045d0(struct BitmapFontOBJ *textObj) {
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
u32 func_08004628(const struct BitmapFontData *font, const char *string) {
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
u32 func_080046c0(const struct BitmapFontData *font, const char *string) {
    const struct BitmapFontData *currentFont;
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
u16 func_0800477c(struct BitmapFontOBJ *textObj, const char *string, u32 *widthReq) {
    u16 *texture, *address;
    u32 width;
    u8 glyphDataB0, glyphDataB1;
    u32 tileX, tileY, tileID;
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
struct PrintedTextAnim *func_08004b60(struct BitmapFontOBJ *textObj, const char *string) {
    return func_08004b70(textObj, string, 0, 0);
}


// Get Animation (Unaligned).
struct PrintedTextAnim *func_08004b70(struct BitmapFontOBJ *textObj, const char *string, u32 fontStyle, u32 palette) {
    return func_080049f0(textObj, string, NULL, fontStyle, palette);
}


// Get Animation (Center-aligned, default FontStyle and Palette).
struct PrintedTextAnim *func_08004b88(struct BitmapFontOBJ *textObj, const char *string) {
    return func_08004b98(textObj, string, 0, 0);
}


// Get Animation (Center-aligned).
struct PrintedTextAnim *func_08004b98(struct BitmapFontOBJ *textObj, const char *string, u32 fontStyle, u32 palette) {
    struct PrintedTextAnim *anim;
    u16 *cel, *oam;
    u32 totalWidth, i;

    anim = func_080049f0(textObj, string, &totalWidth, fontStyle, palette);
    totalWidth /= 2;
    cel = anim->frames[0].cel;
    oam = &cel[1];

    for (i = 0; i < cel[0]; i++) {
        ((struct OAM *)oam)->xPos -= totalWidth;
        ((struct OAM *)oam)->yPos -= 8;
        oam += 3;
    }

    return anim;
}


// Get Animation (Left-aligned, default FontStyle and Palette).
struct PrintedTextAnim *func_08004bfc(struct BitmapFontOBJ *textObj, const char *string) {
    return func_08004c0c(textObj, string, 0, 0);
}


// Get Animation (Left-aligned).
struct PrintedTextAnim *func_08004c0c(struct BitmapFontOBJ *textObj, const char *string, u32 fontStyle, u32 palette) {
    struct PrintedTextAnim *anim;
    u16 *cel, *oam;
    u32 i;

    anim = func_080049f0(textObj, string, NULL, fontStyle, palette);
    cel = anim->frames[0].cel;
    oam = &cel[1];

    for (i = 0; i < cel[0]; i++) {
        ((struct OAM *)oam)->yPos -= 8;
        oam += 3;
    }

    return anim;
}


// Get Animation (Right-aligned, default FontStyle and Palette).
struct PrintedTextAnim *func_08004c40(struct BitmapFontOBJ *textObj, const char *string) {
    return func_08004c50(textObj, string, 0, 0);
}


// Get Animation (Right-aligned).
struct PrintedTextAnim *func_08004c50(struct BitmapFontOBJ *textObj, const char *string, u32 fontStyle, u32 palette) {
    struct PrintedTextAnim *anim;
    u16 *cel, *oam;
    u32 totalWidth, i;

    anim = func_080049f0(textObj, string, &totalWidth, fontStyle, palette);
    cel = anim->frames[0].cel;
    oam = &cel[1];

    for (i = 0; i < cel[0]; i++) {
        ((struct OAM *)oam)->xPos -= totalWidth;
        ((struct OAM *)oam)->yPos -= 8;
        oam += 3;
    }

    return anim;
}


// Get Animation (Shift to XY, default FontStyle and Palette).
struct PrintedTextAnim *func_08004cac(struct BitmapFontOBJ *textObj, const char *string, s16 x, s16 y) {
    return func_08004ccc(textObj, string, x, y, 0, 0);
}


// Get Animation (Shift to XY).
struct PrintedTextAnim *func_08004ccc(struct BitmapFontOBJ *textObj, const char *string, s16 x, s16 y, u32 fontStyle, u32 palette) {
    struct PrintedTextAnim *anim;
    u16 *cel, *oam;
    u32 i;

    anim = func_080049f0(textObj, string, NULL, fontStyle, palette);
    cel = anim->frames[0].cel;
    oam = &cel[1];

    for (i = 0; i < cel[0]; i++) {
        ((struct OAM *)oam)->xPos -= x;
        ((struct OAM *)oam)->yPos -= y;
        oam += 3;
    }

    return anim;
}


// Delete printed BitmapFontOBJ.
void func_08004d44(struct BitmapFontOBJ *textObj, struct Animation *anim) {
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


// Init. BitmapFontOBJPrinter task.
struct BitmapFontOBJPrinter *func_08004da0(struct BitmapFontOBJPrinter *inputs) {
    struct BitmapFontOBJPrinter *info;

    info = mem_heap_alloc(sizeof(struct BitmapFontOBJPrinter));
    info->textObj = inputs->textObj;
    info->animTable = inputs->animTable;
    info->queue = inputs->queue;
    info->current = 0;

    return info;
}


// Update BitmapFontOBJPrinter task.
u32 func_08004dc0(struct BitmapFontOBJPrinter *info) {
    struct BitmapFontQueuedText *data;
    const char *string;
    u32 current;

    current = info->current;
    data = &info->queue[current];
    string = data->string;

    if (string == NULL) {
        return TRUE;
    }

    if ((s32)string < 0) {
        string = *((const char **)((s32)string & 0x7fffffff));
    }

    switch (data->alignment) {
        case 0:
            info->animTable[current] = func_08004b70(info->textObj, string, data->fontStyle, data->palette);
            break;
        case 1:
            info->animTable[current] = func_08004b98(info->textObj, string, data->fontStyle, data->palette);
            break;
        case 2:
            info->animTable[current] = func_08004c0c(info->textObj, string, data->fontStyle, data->palette);
            break;
        case 3:
            info->animTable[current] = func_08004c50(info->textObj, string, data->fontStyle, data->palette);
            break;
    }

    if (data[1].string == NULL) {
        return TRUE;
    } else {
        info->current = current + 1;
        return FALSE;
    }
}


// Start new BitmapFontOBJPrinter task.
s32 func_08004e60(u16 memID, struct BitmapFontOBJ *textObj, struct PrintedTextAnim **animTable, struct BitmapFontQueuedText *queue) {
    struct BitmapFontOBJPrinter inputs;

    inputs.textObj = textObj;
    inputs.animTable = animTable;
    inputs.queue = queue;

    return start_new_task(memID, &D_08936b54, &inputs, NULL, 0);
}


// Delete all animations printed by a BitmapFontOBJ.
void func_08004e88(struct BitmapFontOBJ *textObj, struct PrintedTextAnim **animTable, struct BitmapFontQueuedText *queue) {
    if (queue->string != NULL) {
        struct BitmapFontQueuedText *strings = queue;
        struct Animation **anim = (struct Animation **)animTable;

        while (strings->string != NULL) {
            func_08004d44(textObj, *anim++);
            strings++;
        }
    }
}


// Create "wobbly" animation for printed text.
struct WobblyPrintedTextAnim *func_08004eac(struct BitmapFontOBJ *textObj, struct PrintedTextAnim *anim, u8 frameDuration) {
    struct WobblyPrintedTextAnim *newAnim;
    u16 *cel, *newCel, *newOam;
    u32 count, size;
    u32 i, j;

    count = anim->oam[0];
    cel = &anim->oam[1];

    size = (sizeof(struct Animation) * 6) + ((1 + (count * 3)) * sizeof(u16) * 5);
    newAnim = mem_heap_alloc_id(textObj->memID, size);
    newCel = newAnim->oam;

    for (i = 0; i < 5; i++) {
        (newAnim->frames + i)->cel = newCel;
        (newAnim->frames + i)->duration = frameDuration;
        newCel[0] = count;
        newOam = (newCel += 1);

        for (j = 0; j < (count * 3); j++) {
            *newCel++ = cel[j];
        }

        if (i == 0) {
            continue;
        }

        if (i != 4) {
            for (j = 0; j < count; j++) {
                ((struct OAM *)newOam)->xPos += agb_random(2);
                ((struct OAM *)newOam)->yPos += agb_random(2);

                newOam += 3;
            }
        } else {
            for (j = 0; j < count; j++) {
                if (agb_random(2) != 0) {
                    ((struct OAM *)newOam)->xPos += agb_random(2);
                    ((struct OAM *)newOam)->yPos += 1;
                } else {
                    ((struct OAM *)newOam)->xPos += 1;
                    ((struct OAM *)newOam)->yPos += agb_random(2);
                }

                newOam += 3;
            }
        }
    }

    (newAnim->frames + i)->cel = NULL;
    (newAnim->frames + i)->duration = 0;
    return newAnim;
}


// Replace printed text animation with a wobbly one.
void func_08004ff4(struct BitmapFontOBJ *textObj, struct PrintedTextAnim **anim, u8 frameDuration) {
    struct WobblyPrintedTextAnim *wobblyText;

    wobblyText = func_08004eac(textObj, *anim, frameDuration);
    mem_heap_dealloc(*anim);
    *anim = (struct PrintedTextAnim *)wobblyText;
}


// Shift TextObject animation Y position along some sort of curve.
void func_08005014(struct Animation *anim, s16 vel) {
    u16 *oam;
    u32 count, i;
    s16 x, centre;

    for (; anim->cel != NULL; anim++) {
        oam = anim->cel;
        count = oam[0];
        oam += 1;

        for (i = 0; i < count; i++) {
            x = ((struct OAM *)oam)->xPos;

            if (x > 256) {
                x -= 512;
            }

            centre = x + (D_030008b8[i] / 2);
            ((struct OAM *)oam)->yPos = -D_03004ae4((vel * vel) - (centre * centre)) - 10;

            oam += 3;
        }
    }
}


// Shift TextObject animation position.
void func_080050bc(struct Animation *anim, s16 x, s16 y) {
    u16 *oam;
    u32 count, i;

    for (; anim->cel != NULL; anim++) {
        oam = anim->cel;
        count = oam[0];
        oam += 1;

        for (i = 0; i < count; i++) {
            ((struct OAM *)oam)->xPos += x;
            ((struct OAM *)oam)->yPos += y;
            oam += 3;
        }
    }
}


// Create new BitmapFontBG.
struct BitmapFontBG *func_08005124(u16 memID, const struct BitmapFontData *fonts, u8 arg2, u16 baseTileNum, u8 maxTileRows) {
    struct BitmapFontBG *textObj;

    textObj = mem_heap_alloc_id(memID, sizeof(struct BitmapFontBG));
    textObj->fonts = fonts;
    textObj->unk6 = arg2;
    textObj->baseTileNum = baseTileNum;
    textObj->maxAllocatedTileRows = maxTileRows;
    textObj->printedGlyphs = mem_heap_alloc_id(memID, maxTileRows * 16 * sizeof(u16));
    textObj->printedGlyphCounts = mem_heap_alloc_id(memID, maxTileRows * 16 * sizeof(u8));
    func_080051c4(textObj);

    return textObj;
}


// Delete BitmapFontBG.
void func_08005188(struct BitmapFontBG *textObj) {
    mem_heap_dealloc(textObj->printedGlyphs);
    mem_heap_dealloc(textObj->printedGlyphCounts);
    mem_heap_dealloc(textObj);
}


// Set BitmapFontBG data.
void func_080051a4(struct BitmapFontBG *textObj, const struct BitmapFontData *fonts, u8 arg2, u16 baseTileNum, u8 maxTileRows, u16 *printedGlyphs, u8 *printedGlyphCounts) {
    textObj->fonts = fonts;
    textObj->unk6 = arg2;
    textObj->baseTileNum = baseTileNum;
    textObj->maxAllocatedTileRows = maxTileRows;
    textObj->printedGlyphs = printedGlyphs;
    textObj->printedGlyphCounts = printedGlyphCounts;
    func_080051c4(textObj);
}


// Clear BitmapFontBG printed glyph data.
void func_080051c4(struct BitmapFontBG *textObj) {
    u32 i;

    for (i = 0; i < (textObj->maxAllocatedTileRows * 16); i++) {
        textObj->printedGlyphs[i] = 0;
        textObj->printedGlyphCounts[i] = 0;
    }
}


// Print glyph.
void func_080051f0(const u16 *texture, u16 *dest) {
    dma3_set(texture, dest, 0x40, 0x10, 0x100);
}


// Print glyph, returning the tile ID.
u16 func_08005208(struct BitmapFontBG *textObj, const char *string) {
    u16 *texture, *address;
    u8 glyphByte0, glyphByte1;
    u32 tileX, tileY, tileID;
    u8 *printed;
    u32 i, j;

    // Fullwidth Whitespace
    if ((string[0] == 0x81) && (string[1] == 0x40)) {
        return -1;
    }

    // Halfwidth Whitespace
    if ((string[0] == ' ') && (string[1] == ' ')) {
        return -1;
    }

    glyphByte0 = (D_030008f8 << 4) | string[0];
    glyphByte1 = string[1];
    tileX = 99;
    printed = (u8 *)textObj->printedGlyphs;

    for (i = 0; i < textObj->maxAllocatedTileRows; i++) {
        for (j = 0; j < 16; j++) {
            if ((glyphByte0 == printed[0]) && (glyphByte1 == printed[1])) {
                textObj->printedGlyphCounts[j + (i * 16)]++;
                return textObj->baseTileNum + (j * 2) + ((i * 16) * 2);
            }
            if ((printed[0] == 0) && (printed[1] == 0)) {
                tileX = j;
                tileY = i;
            }
            printed += 2;
        }
    }

    // Out of Memory
    if (tileX == 99) {
        return -2;
    }

    tileID = textObj->baseTileNum + (tileX * 2) + ((tileY * 16) * 2);
    address = (void *)(VRAMBase + (textObj->unk6 * 0x4000) + (tileID * 0x20));
    func_080043c8(&textObj->fonts[D_030008f8], string, &texture, NULL);
    func_080051f0(texture, address);

    i = tileX + (tileY * 16);
    printed = (u8 *)&textObj->printedGlyphs[i];
    printed[0] = glyphByte0;
    printed[1] = glyphByte1;
    textObj->printedGlyphCounts[i] = 1;

    return tileID;
}


// Get value for FontStyle/Palette.
u8 func_08005328(char c) {
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


// Print to BG Map.
void func_0800536c(struct BitmapFontBG *textObj, u16 *bgMap, u32 mapWidth, const char *string, u32 palette) {
    u16 tileNum;
    u32 mapX;

    D_030008f8 = 0;
    mapX = 0;

    while (string[0] != '\0') {
        switch (string[0]) {
            case '\n':
                bgMap += (mapWidth * 2);
                string += 1;
                mapX = 0;
                break;

            case '.':
                palette = func_08005328(string[1]);
                string += 2;
                break;

            case ':':
                D_030008f8 = func_08005328(string[1]);
                string += 2;
                break;

            default:
                tileNum = func_08005208(textObj, string);

                if (tileNum < 0x400) {
                    u16 mapTile;

                    mapTile = (palette << 12) | (tileNum & 0x3FF);
                    bgMap[mapX] = mapTile;
                    bgMap[mapWidth + mapX] = mapTile + 1;
                }

                string += 2;
                mapX++;
                break;
        }
    }
}


// Delete printed BitmapFontBG.
void func_08005424(struct BitmapFontBG *textObj, const char *string) {
    u8 glyphByte0, glyphByte1;
    u8 *printed;
    u32 fontStyle;
    u32 i;

    fontStyle = 0;

    while (string[0] != '\0') {
        switch (string[0]) {
            case '\n':
                string += 1;
                break;

            case '.':
                string += 2;
                break;

            case ':':
                fontStyle = func_08005328(string[1]);
                string += 2;
                break;

            default:
                glyphByte0 = (fontStyle << 4) | string[0];
                glyphByte1 = string[1];
                printed = (u8 *)textObj->printedGlyphs;

                for (i = 0; i < (textObj->maxAllocatedTileRows * 16); i++) {
                    if ((printed[0] == glyphByte0) && (printed[1] == glyphByte1)) {
                        if (--textObj->printedGlyphCounts[i] == 0) {
                            printed[0] = printed[1] = 0;
                        }
                        break;
                    }
                    printed += 2;
                }
                string += 2;
                break;
        }
    }
}


// Init. BitmapFontBGPrinter task.
struct BitmapFontBGPrinter *func_080054b0(struct BitmapFontBGPrinter *inputs) {
    struct BitmapFontBGPrinter *info;

    info = mem_heap_alloc(sizeof(struct BitmapFontBGPrinter));
    dma3_set(inputs, info, sizeof(struct BitmapFontBGPrinter), 0x20, 0x100);
    info->fontStyle = 0;
    info->currentMapX = 0;

    return info;
}


// Update BitmapFontBGPrinter task.
u32 func_080054f0(struct BitmapFontBGPrinter *info) {
    const char *string;
    u16 *bgMap;
    u32 mapX, mapWidth, palette, tileNum;
    u32 processLimit;

    processLimit = info->processLimit;
    D_030008f8 = info->fontStyle;
    bgMap = info->bgMap;
    mapX = info->currentMapX;
    mapWidth = info->bgMapWidth;
    string = info->string;
    palette = info->palette;

    while (string[0] != '\0') {
        switch (string[0]) {
            case '\n': // Newline
                bgMap += (mapWidth * 2);
                string += 1;
                mapX = 0;
                break;

            case '.': // Palette
                palette = func_08005328(string[1]);
                string += 2;
                break;

            case ':': // Font/Style
                D_030008f8 = func_08005328(string[1]);
                string += 2;
                break;

            default:
                tileNum = func_08005208(info->textObj, string);

                if (tileNum < 0x400) {
                    u16 mapTile;

                    mapTile = (palette << 12) | (tileNum & 0x3FF);
                    bgMap[mapX] = mapTile;
                    bgMap[mapWidth + mapX] = mapTile + 1;
                }

                string += 2;
                mapX++;
                processLimit--;

                if (processLimit == 0) {
                    info->fontStyle = D_030008f8;
                    info->bgMap = bgMap;
                    info->currentMapX = mapX;
                    info->string = string;
                    info->palette = palette;
                    return FALSE;
                }
                break;
        }
    }

    return TRUE;
}


// Start new BitmapFontBGPrinter task.
s32 func_080055fc(u16 memID, struct BitmapFontBG *textObj, u16 *bgMapDest, u32 bgMapWidth, const char *string, u32 palette, u32 processLimit) {
    struct BitmapFontBGPrinter inputs;

    inputs.textObj = textObj;
    inputs.bgMap = bgMapDest;
    inputs.bgMapWidth = bgMapWidth;
    inputs.string = string;
    inputs.palette = palette;
    inputs.processLimit = processLimit;

    return start_new_task(memID, &D_08936b64, &inputs, NULL, 0);
}


// Count the total printable characters in a string (including characters not supported by the font).
u32 func_08005640(const char *string) {
    u32 count = 0;

    while (string[0] != '\0') {
        if (string[0] < 0x80) {
            switch (string[0]) {
                case '\n':
                    string += 1;
                    break;

                case '.':
                    string += 2;
                    break;

                case ':':
                    string += 2;
                    break;

                default:
                    string += 2;
                    count++;
                    break;
            }
        } else {
            while (string[0] >= 0x80) {
                string += 2;
                count++;
            }
        }
    }

    return count;
}


extern u8 D_03004ae8;


// Render SceneObject
void func_0800568c(struct SpriteHandler *spriteHandler, struct BitmapFontOBJ *bitmapFontOBJ, const union SceneObject object, u16 *spritePool) {
    u16 sprite;
    s32 poolID;

    poolID = -1;

    switch (*object.type) {
        // Sprite (Immediate XY)
        case SCENE_OBJECT_TYPE_IMM_XY: {
            struct SceneSprite *data;

            data = object.sprite;
            poolID = data->poolID;
            sprite = func_0804d294(spriteHandler, data->anim,
                data->unk8, data->x, data->y, data->z,
                data->unk10, data->unk11, data->unk12, data->unk14);
            break;
        }

        // Sprite (Vector XY)
        case SCENE_OBJECT_TYPE_VEC_XY: {
            struct SceneSpriteVecXY *data;

            data = object.spriteVecXY;
            poolID = data->poolID;
            sprite = func_0804d294(spriteHandler, data->anim,
                data->unk8, data->pos->x, data->pos->y, data->z,
                data->unk12, data->unk13, data->unk14, data->unk18);
            break;
        }

        // Static Text Object
        case SCENE_OBJECT_TYPE_TEXT: {
            struct PrintedTextAnim *textAnim;
            struct SceneText *data;
            const char *string;
            u32 fontStyle;
            u32 palette;

            if (bitmapFontOBJ == NULL) {
                break;
            }

            data = object.text;
            poolID = data->poolID;

            if ((s32)data->textTable < 0) {
                string = *((char **)((u32)data->textTable & 0x7fffffff));
            } else {
                string = data->textTable[D_03004ae8];
            }
            fontStyle = data->fontStyle;
            palette = data->palette;

            switch (data->alignment) {
                case 0:
                    textAnim = func_08004b70(bitmapFontOBJ, string, fontStyle, palette);
                    break;
                case 1:
                    textAnim = func_08004b98(bitmapFontOBJ, string, fontStyle, palette);
                    break;
                case 2:
                    textAnim = func_08004c0c(bitmapFontOBJ, string, fontStyle, palette);
                    break;
                case 3:
                    textAnim = func_08004c50(bitmapFontOBJ, string, fontStyle, palette);
                    break;
            }

            if (data->wobbly == TRUE) {
                struct WobblyPrintedTextAnim *wobblyAnim;

                wobblyAnim = func_08004eac(bitmapFontOBJ, textAnim, 4);
                mem_heap_dealloc(textAnim);
                textAnim = (struct PrintedTextAnim *)wobblyAnim;
            }

            sprite = func_0804d294(spriteHandler, textAnim->frames, 0, data->x, data->y, data->z, 1, 0, 0, data->unk14);

            if (!data->display) {
                func_0804d770(spriteHandler, sprite, FALSE);
            }
            break;
        }
    }

    if ((spritePool != NULL) && (poolID >= 0)) {
        spritePool[poolID] = sprite;
    }
}


// Print All SceneObjects
u32 func_08005814(struct SpriteHandler *spriteHandler, struct BitmapFontOBJ *bitmapFontOBJ, const union SceneObject *objects, u16 *spritePool) {
    u32 count = 0;

    if (objects->type != NULL) {
        const union SceneObject *obj = objects;

        while (obj->type != NULL) {
            func_0800568c(spriteHandler, bitmapFontOBJ, *obj++, spritePool);
            count++;
        }
    }

    return count;
}


// Set D_03004ae8
void func_0800584c(u32 textID) {
    D_03004ae8 = textID;
}


// Init. SceneObjectRenderer task.
struct SceneObjectRenderer *func_08005858(struct SceneObjectRenderer *inputs) {
    struct SceneObjectRenderer *info;

    info = mem_heap_alloc(sizeof(struct SceneObjectRenderer));
    info->spriteHandler = inputs->spriteHandler;
    info->bitmapFontOBJ = inputs->bitmapFontOBJ;
    info->objects = inputs->objects;
    info->spritePool = inputs->spritePool;

    return info;
}


// Update SceneObjectRenderer task.
u32 func_08005878(struct SceneObjectRenderer *info) {
    const union SceneObject *objects;
    u32 type;

    objects = info->objects;

    while (objects->type != NULL) {
        func_0800568c(info->spriteHandler, info->bitmapFontOBJ, *objects, info->spritePool);
        type = *(objects++)->type;
        info->objects = objects;

        if (type == 2) {
            if (objects->type == NULL) {
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }

    return TRUE;
}


// Start new SceneObjectRenderer task.
s32 func_080058b0(u16 memID, struct SpriteHandler *spriteHandler, struct BitmapFontOBJ *bitmapFontOBJ, const union SceneObject *objects, u16 *spritePool) {
    struct SceneObjectRenderer inputs;

    inputs.spriteHandler = spriteHandler;
    inputs.bitmapFontOBJ = bitmapFontOBJ;
    inputs.objects = objects;
    inputs.spritePool = spritePool;

    return start_new_task(memID, &D_08936b74, &inputs, NULL, 0);
}


#include "asm/code_08003980/asm_080058dc.s"

#include "asm/code_08003980/asm_0800598c.s"
