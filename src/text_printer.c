#include "global.h"
#include "text_printer.h"

#include "src/memory_heap.h"
#include "src/lib_0804c870.h"
#include "data/text_printer_data.h"

asm(".include \"include/gba.inc\"");//Temporary


  //  //  //  TEXT PRINTER  //  //  //


typedef void (PrintGlyphToVRAMFunc)(void *args);

extern PrintGlyphToVRAMFunc func_0800116c;

static struct FormattedGlyph {
    const char *formatSrc;
    const char *charSrc;
    s16 id;
    u16 xOffset;
    u8 width;
    u8 lineColours;
    s8 shadowColours;
    u8 font;
    u8 spacing;
} *D_03001218; // Formatted Glyph Buffer

static void (*D_0300121c)(s32, s32); // Formatting Escape Char. '\1' Function

static s32 D_03001220[54]; // ARM Function

static s32 D_030012f8; // Current Line Width
static s8 D_030012fc; // Current Line Alignment
static s8 D_030012fd; // Current Line Colours
static s8 D_030012fe; // Current Line Font
static s8 D_030012ff; // Current Line Indent Width
static s8 D_03001300; // Current Line Shadow Colours



// Init. Static Variables
void func_08009844(void) {
    func_0800186c(func_0800116c, D_03001220, sizeof(D_03001220), 0x20, 0x100);
    D_03001218 = mem_heap_alloc(128 * sizeof(struct FormattedGlyph));
    D_0300121c = NULL;
}


// Get Spacing Width
s32 func_08009884(s32 font) {
    return D_089380ac[font].glyphSpacing;
}


// Get Glyph Width
s32 func_08009898(s32 font, s32 glyphID) {
    if (glyphID < 0) return 0;

    return D_089380ac[font].glyphWidths[glyphID];
}


// Get Glyph Width
s32 func_080098c4(s32 font, const char **stream) {
    s32 glyphID;

    if (**stream == '\0') {
        return 0;
    }

    glyphID = func_0800a108(stream);
    if (glyphID < 0) {
        return 0;
    }

    return D_089380ac[font].glyphWidths[glyphID];
}


// Get Width of a String
s32 func_080098fc(s32 font, const char *string) {
    s32 totalWidth, spacing;
    s32 glyphID;

    totalWidth = 0;
    spacing = D_089380ac[font].glyphSpacing;

    while (*string != 0) {
        glyphID = func_0800a108(&string);
        if (glyphID >= 0) {
            totalWidth += func_08009898(font, glyphID) + spacing;
        }
    }

    if (totalWidth != 0) {
        totalWidth -= spacing;
    }

    return totalWidth;
}


// Print Glyph to VRAM
void func_08009948(s32 tileOfsX, s32 tileOfsY, s32 font, s32 glyphID, s32 lineColours) {
    PrintGlyphToVRAMFunc *printGlyphToVRAM = (PrintGlyphToVRAMFunc *)(&D_03001220);
    u32 args[4];

    if (glyphID < 0) return;

    args[0] = VRAMBase + ((tileOfsX >> 3) * 32) + (tileOfsY * 32 * 32);
    args[1] = (u32)(D_089380ac[font].glyphData + (D_089380ac[font].glyphDataSize * glyphID));
    args[2] = ((tileOfsX & 7) << 2) + lineColours;
    args[3] = font;
    printGlyphToVRAM(args);
}


// Print String to VRAM (return width in pixels)
s32 func_080099a0(s32 tileBaseX, s32 tileBaseY, s32 font, const char *string, s32 maxWidth, s32 lineColours) {
    const char *ellipsis, *s;
    s32 ellipsisID, glyphID;
    s32 ellipsisWidth, glyphWidth;
    s32 spacing, totalWidth;

    s = string;
    totalWidth = 0;
    spacing = D_089380ac[font].glyphSpacing;
    ellipsis = D_089380d0;
    ellipsisID = func_0800a108(&ellipsis);
    ellipsisWidth = func_08009898(font, ellipsisID);

    while (*s != '\0') {
        glyphID = func_0800a108(&s);
        if (glyphID < 0) continue;

        glyphWidth = func_08009898(font, glyphID);
        if (*s != '\0') {
            if ((totalWidth + glyphWidth + spacing + ellipsisWidth) > maxWidth) {
                s = ellipsis;
                glyphID = ellipsisID;
                glyphWidth = ellipsisWidth;
            }
        } else {
            if ((totalWidth + glyphWidth) > maxWidth) {
                s = ellipsis;
                glyphID = ellipsisID;
                glyphWidth = ellipsisWidth;
            }
        }

        func_08009948(tileBaseX + totalWidth, tileBaseY, font, glyphID, lineColours);
        totalWidth += glyphWidth + spacing;
    }

    if (totalWidth != 0) {
        totalWidth -= spacing;
    }

    return totalWidth;
}


// Check if Character is Any Sort of Open Bracket
s32 func_08009a54(const char *c) {
    const char *brackets;
    char c1, c2;

    c1 = c[0];
    c2 = c[1];

    if ((char)(c1 - '\x20') < '\x5f') {
        // Half-Width Open Brackets
        for (brackets = D_089380e4; brackets[0] != 0; brackets += 1) {
            if (c1 == brackets[0]) {
                return TRUE;
            }
        }
    } else {
        // Full-Width Open Brackets
        for (brackets = D_089380d4; brackets[0] != 0; brackets += 2) {
            if ((c1 == brackets[0]) && (c2 == brackets[1])) {
                return TRUE;
            }
        }
    }

    return FALSE;
}


// Check if Character is Any Sort of Ending Punctuation
s32 func_08009aa4(const char *c) {
    const char *punctuation;
    char c1, c2;

    c1 = c[0];
    c2 = c[1];

    if ((char)(c1 - '\x20') < '\x5f') {
        // Half-Width Ending Punctuation
        for (punctuation = D_08938138; punctuation[0] != 0; punctuation += 1) {
            if (c1 == punctuation[0]) {
                return TRUE;
            }
        }
    } else {
        // Full-Width Ending Punctuation
        for (punctuation = D_089380e8; punctuation[0] != 0; punctuation += 2) {
            if ((c1 == punctuation[0]) && (c2 == punctuation[1])) {
                return TRUE;
            }
        }
    }

    return FALSE;
}


// Print Formatted Line to VRAM (return width in pixels)
s32 func_08009af4(s32 tileBaseX, s32 tileBaseY, s32 font, const char **charStream, s32 maxWidth, s32 lineColours, s32 indentWidth, s32 shadowColours) {
    struct FormattedGlyph *fGlyphData;
    const char *stream, *tempStream;
    s32 spacing, glyphWidth, totalWidth, maxWidthWithShadow;
    s32 totalGlyphs;
    s32 maxWidthExceeded;
    s32 glyphID;
    u32 i;

    stream = *charStream;
    spacing = D_089380ac[font].glyphSpacing;
    fGlyphData = D_03001218;
    totalGlyphs = 0;
    maxWidthExceeded = FALSE;

    fGlyphData->formatSrc = stream;
    totalWidth = func_080087d4(indentWidth, 0, maxWidth);

    while (*stream != '\0') {
        if (*stream < '\x20') {
            s32 newLine = FALSE;

            switch (*stream) {
                case '\n': // Insert Newline
                    stream += 1;
                    newLine = TRUE;
                    break;
                case '\1': // Set Text Printer Data
                    if (D_0300121c != NULL) {
                        D_0300121c(stream[1], totalWidth);
                    }
                    stream += 2;
                    break;
                case '\2': // Set Colour Depth..?
                    lineColours = stream[1] - '0';
                    stream += 2;
                    break;
                case '\3': // Set Font
                    font = stream[1] - '0';
                    spacing = D_089380ac[font].glyphSpacing;
                    stream += 2;
                    break;
                case '\4': // Insert Padding..?
                    stream += 1;
                    totalWidth = 0;
                    while (*stream != '.') {
                        totalWidth = (totalWidth * 10) + *stream - '0';
                        stream += 1;
                    }
                    totalWidth = func_080087d4(totalWidth, 0, maxWidth);
                    stream += 1;
                    break;
                case '\5': // Set Text Shadow
                    shadowColours = stream[1] - '0';
                    if (shadowColours > 3) {
                        shadowColours = -1;
                    }
                    stream += 2;
                    break;
            }
            if (!newLine) continue;
            else break;
        }

        tempStream = stream;
        glyphID = func_0800a108(&stream);
        if (glyphID < 0) {
            continue;
        }

        glyphWidth = func_08009898(font, glyphID);
        maxWidthWithShadow = maxWidth + ((shadowColours >= 0) ? -1 : 0);
        if ((totalWidth + glyphWidth) > maxWidthWithShadow) {
            stream = tempStream;
            maxWidthExceeded = TRUE;
            break;
        }

        fGlyphData->id = glyphID;
        fGlyphData->xOffset = totalWidth;
        fGlyphData->width = glyphWidth;
        fGlyphData->lineColours = lineColours;
        fGlyphData->shadowColours = shadowColours;
        fGlyphData->charSrc = tempStream;
        fGlyphData->font = font;
        fGlyphData->spacing = spacing;
        fGlyphData++;
        totalGlyphs++;

        fGlyphData->formatSrc = stream;
        totalWidth += spacing + glyphWidth;
    }

    if (totalWidth != 0) {
        totalWidth -= spacing;
    }

    if (maxWidthExceeded && (totalGlyphs != 0)) {
        if (func_08009a54(D_03001218[totalGlyphs - 1].charSrc)) {
            fGlyphData--;
            totalGlyphs--;
            totalWidth -= (fGlyphData->width + fGlyphData->spacing);
            stream = fGlyphData->formatSrc;
        } else if (func_08009aa4(stream)) {
            do {
                fGlyphData--;
                totalGlyphs--;
                totalWidth -= (fGlyphData->width + fGlyphData->spacing);
            } while ((totalGlyphs != 0) && func_08009aa4(fGlyphData->charSrc));
            stream = fGlyphData->formatSrc;
        }

        if (totalGlyphs != 0) {
            struct FormattedGlyph *lastGlyph;
            s32 xStart, w1, w2;

            lastGlyph = &D_03001218[totalGlyphs] - 1;
            xStart = D_03001218[0].xOffset;
            w1 = func_080087d4((maxWidth - lastGlyph->width - xStart), 0, maxWidth);
            w2 = func_080087d4((lastGlyph->xOffset - xStart), 0, maxWidth);

            for (i = 0; i < totalGlyphs; i++) {
                D_03001218[i].xOffset = xStart + ((D_03001218[i].xOffset - xStart) * w1 / w2);
            }

            totalWidth = w1 + lastGlyph->width;
        }
    }

    for (fGlyphData = D_03001218, i = 0; i < totalGlyphs; i++, fGlyphData++) {
        func_08009948((tileBaseX + fGlyphData->xOffset), tileBaseY, fGlyphData->font, fGlyphData->id, fGlyphData->lineColours);

        if (fGlyphData->shadowColours >= 0) {
            func_08009948((tileBaseX + fGlyphData->xOffset + 1), tileBaseY, fGlyphData->font, fGlyphData->id, fGlyphData->shadowColours);
        }
    }

    *charStream = stream;
    return totalWidth;
}


#include "asm/code_080092cc/asm_08009de4.s"


// Get Animation (Type 1)
struct Animation *func_0800a004(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char *string, u32 anchor, s32 lineColours, s32 maxWidth) {
    return func_08009de4(memID, tileBaseX, tileBaseY, font, &string, anchor, lineColours, maxWidth, TRUE, 0, -1);
}


// Get Animation (Type 2)
struct Animation *func_0800a030(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char **string, u32 anchor, s32 lineColours, s32 maxWidth, s32 indentWidth, s32 shadowColours) {
    return func_08009de4(memID, tileBaseX, tileBaseY, font, string, anchor, lineColours, maxWidth, FALSE, indentWidth, shadowColours);
}


// Get D_030012f8
s32 func_0800a05c(void) {
    return D_030012f8;
}


// Delete Text Animation
void func_0800a068(struct StaticAnimation *anim) {
    if (anim == NULL) return;

    mem_heap_dealloc(anim->cel);
    mem_heap_dealloc(anim);
}


// Set D_0300121c
void func_0800a084(void *func) {
    D_0300121c = func;
}


// Fill Allocated Space With Given Pixel
void func_0800a090(u32 tileBaseX, u32 tileBaseY, u32 allocatedTiles, u32 unused, u32 color) {
    void *tilesetBase;
    u32 tileOffset;
    u32 tile;

    tile = color & 0xf;
    tile |= (tile << 4);
    tile |= (tile << 8);
    tile |= (tile << 16);

    tileOffset = (tileBaseX + (tileBaseY * 0x20)) * 0x20;
    tilesetBase = (void *)(VRAMBase + tileOffset);
    func_080018e0(tile, tilesetBase, allocatedTiles * 0x20, 0x20, 0x200);
    tilesetBase = (void *)(VRAMBase + tileOffset + 0x400);
    func_080018e0(tile, tilesetBase, allocatedTiles * 0x20, 0x20, 0x200);
}


// Fill Allocated Space With Given Pixel
void func_0800a0f0(u32 tileBaseX, u32 tileBaseY, u32 allocatedTiles, u32 unused, u32 color) {
    func_0800a090(tileBaseX, tileBaseY + 64, allocatedTiles, unused, color);
}


#include "asm/code_080092cc/asm_0800a108.s"


// Get Value for unk4
u32 func_0800a1ac(u32 maxWidth) {
    if (maxWidth > 128) return 0;
    if (maxWidth > 80) return 1;
    if (maxWidth > 64) return 2;
    if (maxWidth > 32) return 3;
    return 4;
}


// Get Value for unk28
s32 func_0800a1d4(u32 totalLines, u32 id) {
    u32 x;

    x = D_08938258[id] * totalLines;

    if (id == 2) {
        x += (totalLines * 2) / 3;
    }

    return ((x + 0x1f) / 32) * 2; // surely this can be simplified..?
}


// Create New
struct TextPrinter *func_0800a204(u16 memID, u32 totalLines, u32 maxWidth, u32 arg3) {
    struct TextPrinter *textPrinter;
    u32 i;

    textPrinter = mem_heap_alloc_id(memID, sizeof(struct TextPrinter));
    textPrinter->memID = memID;
    textPrinter->printMultipleStrings = FALSE;
    textPrinter->totalLines = totalLines;
    textPrinter->lineSprites = mem_heap_alloc_id(memID, totalLines * sizeof(s16));
    textPrinter->lineWidths = mem_heap_alloc_id(memID, totalLines * sizeof(s16));
    textPrinter->lineAlignments = mem_heap_alloc_id(memID, totalLines * sizeof(u8));
    textPrinter->lineStrings = mem_heap_alloc_id(memID, totalLines * sizeof(u32));
    textPrinter->lineShadowSprites = mem_heap_alloc_id(memID, totalLines * sizeof(s16));

    for (i = 0; i < totalLines; i++) {
        textPrinter->lineSprites[i] = -1;
        textPrinter->lineStrings[i] = NULL;
        textPrinter->lineShadowSprites[i] = -1;
    }

    textPrinter->palette = 0;
    textPrinter->lineColours = 0;
    textPrinter->maxWidth = maxWidth;
    textPrinter->unk4 = func_0800a1ac(maxWidth);
    textPrinter->unk28 = func_0800a1d4(totalLines, textPrinter->unk4);
    textPrinter->unk26 = arg3 - textPrinter->unk28;
    textPrinter->alignment = 0;
    textPrinter->indentWidth = 0;
    textPrinter->currentLine = 0;
    textPrinter->x = 0;
    textPrinter->y = 8;
    textPrinter->z = 0;
    textPrinter->currentlyPrinting = FALSE;
    textPrinter->string = NULL;
    textPrinter->font = 0;
    textPrinter->lineSpacing = 16;
    textPrinter->unk38 = 0;
    textPrinter->unk39 = 0;
    textPrinter->unk3C = NULL;
    textPrinter->unk44 = NULL;
    textPrinter->ySrc = NULL;
    textPrinter->xSrc = NULL;
    textPrinter->unk54 = 0;
    textPrinter->shadowColours = -1;
    textPrinter->unk56 = 1;

    return textPrinter;
}


// Format Function for Escape Character '\1'
void func_0800a2f8(u32 arg, s32 xOffset) {
    switch (arg) {
        case '0':
        case '1':
        case '2':
        case '3':
            D_030012fd = arg - '0';
            break;
        case '4':
        case '5':
        case '6':
        case '7':
            D_03001300 = arg - '4';
            break;
        case '8':
            D_03001300 = -1;
            break;
        case 'L':
            D_030012fc = 0;
            break;
        case 'R':
            D_030012fc = 1;
            break;
        case 'C':
            D_030012fc = 2;
            break;
        case 's':
            D_030012fe = 0;
            break;
        case 'm':
            D_030012fe = 1;
            break;
        case 'l':
            D_030012fe = 2;
            break;
        case '[':
            D_030012ff = xOffset;
            break;
        case ']':
            D_030012ff = 0;
            break;
    }
}


//
const char *func_0800a4a8(struct TextPrinter *textPrinter, u32 currentLine, const char *string) {
    struct Animation *anim;

    u32 id;
    u32 allocatedTiles;
    u32 r4;

    u32 r5;
    u32 r0;

    u32 tileX;
    u32 tileY;
    u32 tileOffset;
    void *tilesetBase;

    s32 currentDisplayLine;
    u16 x;
    u16 y;
    u32 z;
    u16 sprite;

    D_030012fc = textPrinter->alignment;
    D_030012fd = textPrinter->lineColours;
    D_030012fe = textPrinter->font;
    D_030012ff = textPrinter->indentWidth;
    D_03001300 = textPrinter->shadowColours;
    func_0800a084(func_0800a2f8);

    id = textPrinter->unk4;
    allocatedTiles = D_08938258[id];
    r4 = D_0893825d[id];
    r5 = currentLine % r4;
    r0 = currentLine / r4;
    tileX = r5 * allocatedTiles;
    tileY = textPrinter->unk26 + (r0 * 2);

    tileOffset = ((tileY * 0x20) + tileX) * 0x20;
    tilesetBase = OBJ_TILESET_BASE(tileOffset);
    func_080018e0(0, tilesetBase, allocatedTiles * 0x20, 0x20, 0x200);
    tilesetBase = OBJ_TILESET_BASE(tileOffset + 0x400);
    func_080018e0(0, tilesetBase, allocatedTiles * 0x20, 0x20, 0x200);

    currentDisplayLine = currentLine - textPrinter->unk54;
    if (currentDisplayLine < 0) {
        currentDisplayLine += textPrinter->totalLines;
    }
    x = textPrinter->x;
    y = (textPrinter->lineSpacing * currentDisplayLine) + textPrinter->y;
    z = textPrinter->z;

    anim = func_0800a030(textPrinter->memID, tileX, tileY, textPrinter->font, &string, 2, textPrinter->lineColours, textPrinter->maxWidth, textPrinter->indentWidth, textPrinter->shadowColours);
    sprite = func_0804d160(D_03005380, anim, 0, x, y, z, 0, 0, 0x8000);
    func_0804d8c4(D_03005380, sprite, textPrinter->palette);
    func_0804db44(D_03005380, sprite, textPrinter->xSrc, textPrinter->ySrc);
    textPrinter->lineSprites[currentLine] = sprite;
    textPrinter->lineWidths[currentLine] = func_0800a05c();
    textPrinter->lineAlignments[currentLine] = D_030012fc;
    func_0804d55c(D_03005380, textPrinter->lineShadowSprites[currentLine], x, y, z + 1);
    func_0804db44(D_03005380, textPrinter->lineShadowSprites[currentLine], textPrinter->xSrc, textPrinter->ySrc);

    textPrinter->alignment = D_030012fc;
    textPrinter->lineColours = D_030012fd;
    textPrinter->font = D_030012fe;
    textPrinter->indentWidth = D_030012ff;
    textPrinter->shadowColours = D_03001300;

    return string;
}


// Align Sprites
void func_0800a6a0(struct TextPrinter *textPrinter) {
    u16 xCentre, xAligned;
    u32 greatestWidth;
    u32 i;

    if (textPrinter->unk38) {
        greatestWidth = 0;
        for (i = 0; i < textPrinter->totalLines; i++) {
            if (textPrinter->lineSprites[i] >= 0) {
                if (greatestWidth < textPrinter->lineWidths[i]) {
                    greatestWidth = textPrinter->lineWidths[i];
                }
            }
        }
        xCentre = ((textPrinter->maxWidth - greatestWidth) / 2) + textPrinter->x;
    } else {
        greatestWidth = textPrinter->maxWidth;
        xCentre = textPrinter->x;
    }

    for (i = 0; i < textPrinter->totalLines; i++) {
        if (textPrinter->lineSprites[i] >= 0) {
            switch (textPrinter->lineAlignments[i]) {
                case 0:
                    xAligned = xCentre;
                    break;
                case 1:
                    xAligned = (xCentre + greatestWidth) - textPrinter->lineWidths[i];
                    break;
                case 2:
                    xAligned = xCentre + ((greatestWidth - textPrinter->lineWidths[i]) / 2);
                    break;
            }
            func_0804d614(D_03005380, textPrinter->lineSprites[i], xAligned);
        }
    }
}


// Show/Hide Text
void func_0800a794(struct TextPrinter *textPrinter, u32 show) {
    u32 i;

    for (i = 0; i < textPrinter->totalLines; i++) {
        if (textPrinter->lineSprites[i] >= 0) {
            func_0804d770(D_03005380, textPrinter->lineSprites[i], show);
        }
        if (textPrinter->lineShadowSprites[i] >= 0) {
            func_0804d770(D_03005380, textPrinter->lineShadowSprites[i], show);
        }
    }
}


// Show/Hide Text On Render
void func_0800a7fc(struct TextPrinter *textPrinter, u32 show) {
    if (textPrinter == NULL) return;

    textPrinter->unk56 = show;
    if (!textPrinter->currentlyPrinting) {
        func_0800a794(textPrinter, show);
    }
}


// Update (Single-String)
void func_0800a818(struct TextPrinter *textPrinter) {
    if (textPrinter->currentlyPrinting == FALSE) {
        return;
    }

    if (textPrinter->string == NULL) {
        textPrinter->currentlyPrinting = FALSE;
        return;
    }

    if (textPrinter->unk3A != 0) {
        textPrinter->unk3A = 0;
        return;
    }

    textPrinter->string = func_0800a4a8(textPrinter, textPrinter->currentLine, textPrinter->string);
    textPrinter->currentLine++;

    if ((*textPrinter->string == '\0') || (textPrinter->currentLine >= textPrinter->totalLines)) {
        func_0800a6a0(textPrinter);
        func_0800a794(textPrinter, textPrinter->unk56);
        textPrinter->currentlyPrinting = FALSE;
        textPrinter->unk39 = 1;

        if (textPrinter->unk3C != NULL) {
            textPrinter->unk3C(textPrinter->unk40);
        }
    }
}


// Update (Multi-String)
void func_0800a890(struct TextPrinter *textPrinter) {
    u32 totalLineStrings;
    u32 firstLineString;
    u32 i;

    totalLineStrings = 0;
    for (i = 0; i < textPrinter->totalLines; i++) {
        if (textPrinter->lineStrings[i] != NULL) {
            if (totalLineStrings == 0) {
                firstLineString = i;
            }
            totalLineStrings++;
        }
    }

    if (totalLineStrings == 0) return;

    func_0800a4a8(textPrinter, firstLineString, textPrinter->lineStrings[firstLineString]);

    if (textPrinter->lineStrings[firstLineString] != NULL) {
        mem_heap_dealloc(textPrinter->lineStrings[firstLineString]);
    }

    textPrinter->lineStrings[firstLineString] = NULL;

    if (totalLineStrings < 2) {
        func_0800a6a0(textPrinter);
        func_0800a794(textPrinter, textPrinter->unk56);
        textPrinter->currentlyPrinting = FALSE;
        textPrinter->unk39 = 1;
        if (textPrinter->unk3C != NULL) {
            textPrinter->unk3C(textPrinter->unk40);
        }
    }
}


// Update
void func_0800a914(struct TextPrinter *textPrinter) {
    if (textPrinter == NULL) return;

    switch (textPrinter->printMultipleStrings) {
        case FALSE:
            func_0800a818(textPrinter);
            break;
        case TRUE:
            func_0800a890(textPrinter);
            break;
    }
}


// Remove Text
void func_0800a934(struct TextPrinter *textPrinter) {
    u32 unk39;
    s16 sprite;
    u32 i;

    if (textPrinter == NULL) return;

    unk39 = textPrinter->unk39;

    for (i = 0; i < textPrinter->totalLines; i++) {
        sprite = textPrinter->lineSprites[i];
        if (sprite >= 0) {
            func_0800a068((void *)func_0804ddb0(D_03005380, sprite, 7));
            func_0804d504(D_03005380, sprite);
            textPrinter->lineSprites[i] = -1;
        }

        if (textPrinter->lineStrings[i] != NULL) {
            mem_heap_dealloc(textPrinter->lineStrings[i]);
        }
        textPrinter->lineStrings[i] = NULL;

        if (textPrinter->lineShadowSprites[i] >= 0) {
            func_0804d504(D_03005380, textPrinter->lineShadowSprites[i]);
            textPrinter->lineShadowSprites[i] = -1;
        }
    }

    textPrinter->currentLine = 0;
    textPrinter->currentlyPrinting = FALSE;
    textPrinter->unk39 = FALSE;
    textPrinter->string = NULL;
    textPrinter->unk54 = 0;

    if (unk39) {
        if (textPrinter->unk44 != NULL) {
            textPrinter->unk44(textPrinter->unk48);
        }
    }
}


#include "asm/code_080092cc/asm_0800aa1c.s"


// Set Text
void func_0800aa4c(struct TextPrinter *textPrinter, const char *text) {
    if (textPrinter == NULL) return;

    if (!textPrinter->printMultipleStrings) {
        func_0800a934(textPrinter);

        if (text != NULL) {
            textPrinter->unk3A = TRUE;
            textPrinter->currentlyPrinting = TRUE;
            textPrinter->string = text;
        }
    }
}


#include "asm/code_080092cc/asm_0800aa78.s"

#include "asm/code_080092cc/asm_0800aa9c.s"

#include "asm/code_080092cc/asm_0800aac0.s"

#include "asm/code_080092cc/asm_0800abb0.s"


// Get Active Printing Status
s32 func_0800ac58(struct TextPrinter *textPrinter) {
    if (textPrinter == NULL) return FALSE;
    return textPrinter->currentlyPrinting;
}


// Set X & Y
void func_0800ac68(struct TextPrinter *textPrinter, s16 x, s16 y) {
    if (textPrinter == NULL) return;

    textPrinter->x = x;
    textPrinter->y = y;
}


#include "asm/code_080092cc/asm_0800ac80.s"

#include "asm/code_080092cc/asm_0800ac90.s"


// Set Z (Sprite Depth)
void func_0800aca0(struct TextPrinter *textPrinter, u16 z) {
    if (textPrinter == NULL) return;

    textPrinter->z = z;
}


// Set Palette
void func_0800acb0(struct TextPrinter *textPrinter, u32 palette) {
    if (textPrinter == NULL) return;

    textPrinter->palette = palette;
}


#include "asm/code_080092cc/asm_0800acbc.s"

#include "asm/code_080092cc/asm_0800acc8.s"

#include "asm/code_080092cc/asm_0800acd8.s"

#include "asm/code_080092cc/asm_0800ace8.s"

#include "asm/code_080092cc/asm_0800acf8.s"

#include "asm/code_080092cc/asm_0800ad20.s"

#include "asm/code_080092cc/asm_0800ad30.s"

#include "asm/code_080092cc/asm_0800ad40.s"

#include "asm/code_080092cc/asm_0800ad68.s"

#include "asm/code_080092cc/asm_0800ad98.s"

#include "asm/code_080092cc/asm_0800ada8.s"

#include "asm/code_080092cc/asm_0800adb4.s"

#include "asm/code_080092cc/asm_0800adc0.s"

#include "asm/code_080092cc/asm_0800add8.s"

#include "asm/code_080092cc/asm_0800ae00.s"

#include "asm/code_080092cc/asm_0800ae0c.s"

#include "asm/code_080092cc/asm_0800ae1c.s"

#include "asm/code_080092cc/asm_0800ae3c.s"

#include "asm/code_080092cc/asm_0800ae88.s"

#include "asm/code_080092cc/asm_0800aeb4.s"

#include "asm/code_080092cc/asm_0800b074.s"

#include "asm/code_080092cc/asm_0800b0d4.s"

#include "asm/code_080092cc/asm_0800b108.s"

#include "asm/code_080092cc/asm_0800b118.s"

#include "asm/code_080092cc/asm_0800b12c.s"

#include "asm/code_080092cc/asm_0800b140.s"

#include "asm/code_080092cc/asm_0800b21c.s"

#include "asm/code_080092cc/asm_0800b30c.s"

#include "asm/code_080092cc/asm_0800b31c.s"

#include "asm/code_080092cc/asm_0800b32c.s"

#include "asm/code_080092cc/asm_0800b368.s"

#include "asm/code_080092cc/asm_0800b384.s"
