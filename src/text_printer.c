#include "global.h"
#include "text_printer.h"

#include "src/memory_heap.h"
#include "src/lib_0804ca80.h"
#include "data/text_printer_data.h"

asm(".include \"include/gba.inc\"");//Temporary


  //  //  //  TEXT PRINTER  //  //  //


typedef void (PrintGlyphToVRAMFunc)(void *args);
extern PrintGlyphToVRAMFunc func_0800116c;

#define GLYPH_BUFFER_SIZE 0x80
static struct FormattedGlyph {
    const char *formatSrc;
    const char *charSrc;
    s16 id;
    u16 xOffset;
    u8 width;
    u8 lineColors;
    s8 shadowColors;
    u8 font;
    u8 spacing;
} *sGlyphBuffer; // Formatted Glyph Buffer

static void (*sModifyPrinterSettings)(s32, s32); // Formatting Escape Char. '\1' Function
static s32 sPrintGlyphToVRAM[54]; // ARM Function

static s32 sCurrentLineWidth;   // Printer Line Width
static s8 sPrinterAlignment;    // Printer Alignment
static s8 sPrinterColors;       // Printer Colors
static s8 sPrinterFont;         // Printer Font
static s8 sPrinterIndentWidth;  // Printer Indent Width
static s8 sPrinterShadowColors; // Printer Shadow Colors



// Init. Static Variables
void text_printer_init(void) {
    dma3_set(func_0800116c, sPrintGlyphToVRAM, sizeof(sPrintGlyphToVRAM), 0x20, 0x100);
    sGlyphBuffer = mem_heap_alloc(GLYPH_BUFFER_SIZE * sizeof(struct FormattedGlyph));
    sModifyPrinterSettings = NULL;
}


// Get Spacing Width
s32 text_font_get_spacing(s32 font) {
    return D_089380ac[font].glyphSpacing;
}


// Get Glyph Width
s32 text_font_get_glyph_width(s32 font, s32 glyphID) {
    if (glyphID < 0) return 0;

    return D_089380ac[font].glyphWidths[glyphID];
}


// Get Glyph Width
s32 text_font_get_next_glyph_width(s32 font, const char **stream) {
    s32 glyphID;

    if (**stream == '\0') {
        return 0;
    }

    glyphID = text_printer_get_glyph_id(stream);
    if (glyphID < 0) {
        return 0;
    }

    return D_089380ac[font].glyphWidths[glyphID];
}


// Get Width of a String
s32 text_font_calculate_string_width(s32 font, const char *string) {
    s32 totalWidth, spacing;
    s32 glyphID;

    totalWidth = 0;
    spacing = D_089380ac[font].glyphSpacing;

    while (*string != '\0') {
        glyphID = text_printer_get_glyph_id(&string);
        if (glyphID >= 0) {
            totalWidth += text_font_get_glyph_width(font, glyphID) + spacing;
        }
    }

    if (totalWidth != 0) {
        totalWidth -= spacing;
    }

    return totalWidth;
}


// Print Glyph to VRAM
void text_printer_print_glyph(s32 tileOfsX, s32 tileOfsY, s32 font, s32 glyphID, s32 lineColors) {
    PrintGlyphToVRAMFunc *printGlyphToVRAM = (PrintGlyphToVRAMFunc *)(&sPrintGlyphToVRAM);
    u32 args[4];

    if (glyphID < 0) return;

    args[0] = VRAMBase + ((tileOfsX >> 3) * 32) + (tileOfsY * 32 * 32);
    args[1] = (u32)(D_089380ac[font].glyphData + (D_089380ac[font].glyphDataSize * glyphID));
    args[2] = ((tileOfsX & 7) << 2) + lineColors;
    args[3] = font;
    printGlyphToVRAM(args);
}


// Print String to VRAM (return width in pixels)
s32 text_printer_print_unformatted_line(s32 tileBaseX, s32 tileBaseY, s32 font, const char *string, s32 maxWidth, s32 lineColors) {
    const char *ellipsis;
    s32 ellipsisID, glyphID;
    s32 ellipsisWidth, glyphWidth;
    s32 spacing, totalWidth;

    totalWidth = 0;
    spacing = D_089380ac[font].glyphSpacing;
    ellipsis = D_089380d0;
    ellipsisID = text_printer_get_glyph_id(&ellipsis);
    ellipsisWidth = text_font_get_glyph_width(font, ellipsisID);

    while (*string != '\0') {
        glyphID = text_printer_get_glyph_id(&string);
        if (glyphID < 0) continue;

        glyphWidth = text_font_get_glyph_width(font, glyphID);
        if (*string != '\0') {
            if ((totalWidth + glyphWidth + spacing + ellipsisWidth) > maxWidth) {
                string = ellipsis;
                glyphID = ellipsisID;
                glyphWidth = ellipsisWidth;
            }
        } else {
            if ((totalWidth + glyphWidth) > maxWidth) {
                string = ellipsis;
                glyphID = ellipsisID;
                glyphWidth = ellipsisWidth;
            }
        }

        text_printer_print_glyph(tileBaseX + totalWidth, tileBaseY, font, glyphID, lineColors);
        totalWidth += glyphWidth + spacing;
    }

    if (totalWidth != 0) {
        totalWidth -= spacing;
    }

    return totalWidth;
}


// Check if Character is Any Sort of Open Bracket
s32 text_glyph_is_open_bracket(const char *c) {
    const char *brackets;
    char c1, c2;

    c1 = c[0];
    c2 = c[1];

    if ((char)(c1 - '\x20') < '\x5f') {
        // Half-Width Open Brackets
        for (brackets = D_089380e4; brackets[0] != '\0'; brackets += 1) {
            if (c1 == brackets[0]) {
                return TRUE;
            }
        }
    } else {
        // Full-Width Open Brackets
        for (brackets = D_089380d4; brackets[0] != '\0'; brackets += 2) {
            if ((c1 == brackets[0]) && (c2 == brackets[1])) {
                return TRUE;
            }
        }
    }

    return FALSE;
}


// Check if Character is Any Sort of Ending Punctuation
s32 text_glyph_is_end_punctuation(const char *c) {
    const char *punctuation;
    char c1, c2;

    c1 = c[0];
    c2 = c[1];

    if ((char)(c1 - '\x20') < '\x5f') {
        // Half-Width Ending Punctuation
        for (punctuation = D_08938138; punctuation[0] != '\0'; punctuation += 1) {
            if (c1 == punctuation[0]) {
                return TRUE;
            }
        }
    } else {
        // Full-Width Ending Punctuation
        for (punctuation = D_089380e8; punctuation[0] != '\0'; punctuation += 2) {
            if ((c1 == punctuation[0]) && (c2 == punctuation[1])) {
                return TRUE;
            }
        }
    }

    return FALSE;
}


// Print Formatted Line to VRAM (return width in pixels)
s32 text_printer_print_formatted_line(s32 tileBaseX, s32 tileBaseY, s32 font, const char **charStream, s32 maxWidth, s32 lineColors, s32 indentWidth, s32 shadowColors) {
    struct FormattedGlyph *fGlyphData;
    const char *stream, *tempStream;
    s32 spacing, glyphWidth, totalWidth, maxWidthWithShadow;
    s32 totalGlyphs;
    s32 maxWidthExceeded;
    s32 glyphID;
    u32 i;

    stream = *charStream;
    spacing = D_089380ac[font].glyphSpacing;
    fGlyphData = sGlyphBuffer;
    totalGlyphs = 0;
    maxWidthExceeded = FALSE;

    fGlyphData->formatSrc = stream;
    totalWidth = clamp_int32(indentWidth, 0, maxWidth);

    while (*stream != '\0') {
        if (*stream < '\x20') {
            s32 newLine = FALSE;

            switch (*stream) {
                case '\n': // Insert Newline
                    stream += 1;
                    newLine = TRUE;
                    break;
                case '\1': // Set Text Printer Data
                    if (sModifyPrinterSettings != NULL) {
                        sModifyPrinterSettings(stream[1], totalWidth);
                    }
                    stream += 2;
                    break;
                case '\2': // Set Color Depth..?
                    lineColors = stream[1] - '0';
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
                    totalWidth = clamp_int32(totalWidth, 0, maxWidth);
                    stream += 1;
                    break;
                case '\5': // Set Text Shadow
                    shadowColors = stream[1] - '0';
                    if (shadowColors > 3) {
                        shadowColors = TEXT_PRINTER_SHADOW_DISABLED;
                    }
                    stream += 2;
                    break;
            }
            if (!newLine) continue;
            else break;
        }

        tempStream = stream;
        glyphID = text_printer_get_glyph_id(&stream);
        if (glyphID < 0) {
            continue;
        }

        glyphWidth = text_font_get_glyph_width(font, glyphID);
        maxWidthWithShadow = maxWidth + ((shadowColors >= 0) ? -1 : 0);
        if ((totalWidth + glyphWidth) > maxWidthWithShadow) {
            stream = tempStream;
            maxWidthExceeded = TRUE;
            break;
        }

        fGlyphData->id = glyphID;
        fGlyphData->xOffset = totalWidth;
        fGlyphData->width = glyphWidth;
        fGlyphData->lineColors = lineColors;
        fGlyphData->shadowColors = shadowColors;
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
        if (text_glyph_is_open_bracket(sGlyphBuffer[totalGlyphs - 1].charSrc)) {
            fGlyphData--;
            totalGlyphs--;
            totalWidth -= (fGlyphData->width + fGlyphData->spacing);
            stream = fGlyphData->formatSrc;
        } else if (text_glyph_is_end_punctuation(stream)) {
            do {
                fGlyphData--;
                totalGlyphs--;
                totalWidth -= (fGlyphData->width + fGlyphData->spacing);
            } while ((totalGlyphs != 0) && text_glyph_is_end_punctuation(fGlyphData->charSrc));
            stream = fGlyphData->formatSrc;
        }

        if (totalGlyphs != 0) {
            struct FormattedGlyph *lastGlyph;
            s32 xStart, w1, w2;

            lastGlyph = &sGlyphBuffer[totalGlyphs] - 1;
            xStart = sGlyphBuffer[0].xOffset;
            w1 = clamp_int32((maxWidth - lastGlyph->width - xStart), 0, maxWidth);
            w2 = clamp_int32((lastGlyph->xOffset - xStart), 0, maxWidth);

            for (i = 0; i < totalGlyphs; i++) {
                sGlyphBuffer[i].xOffset = xStart + ((sGlyphBuffer[i].xOffset - xStart) * w1 / w2);
            }

            totalWidth = w1 + lastGlyph->width;
        }
    }

    for (fGlyphData = sGlyphBuffer, i = 0; i < totalGlyphs; i++, fGlyphData++) {
        text_printer_print_glyph((tileBaseX + fGlyphData->xOffset), tileBaseY, fGlyphData->font, fGlyphData->id, fGlyphData->lineColors);

        if (fGlyphData->shadowColors >= 0) {
            text_printer_print_glyph((tileBaseX + fGlyphData->xOffset + 1), tileBaseY, fGlyphData->font, fGlyphData->id, fGlyphData->shadowColors);
        }
    }

    *charStream = stream;
    return totalWidth;
}


// Create Animation (https://decomp.me/scratch/CQpoA)
#include "asm/code_080092cc/asm_08009de4.s"


// Get Animation (Type 1)
struct Animation *text_printer_get_unformatted_line_anim(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char *string, u32 anchor, s32 lineColors, s32 maxWidth) {
    return func_08009de4(memID, tileBaseX, tileBaseY, font, &string, anchor, lineColors, maxWidth, TRUE, 0, -1);
}


// Get Animation (Type 2)
struct Animation *text_printer_get_formatted_line_anim(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char **string, u32 anchor, s32 lineColors, s32 maxWidth, s32 indentWidth, s32 shadowColors) {
    return func_08009de4(memID, tileBaseX, tileBaseY, font, string, anchor, lineColors, maxWidth, FALSE, indentWidth, shadowColors);
}


// Get sCurrentLineWidth
s32 text_printer_get_current_line_width(void) {
    return sCurrentLineWidth;
}


// Delete Text Animation
void text_printer_delete_anim(struct StaticAnimation *anim) {
    if (anim == NULL) return;

    mem_heap_dealloc(anim->cel);
    mem_heap_dealloc(anim);
}


// Set sModifyPrinterSettings
void text_printer_set_format_func(void *func) {
    sModifyPrinterSettings = func;
}


// Fill Allocated Space With Given Pixel
void text_printer_clear_tiles(u32 tileBaseX, u32 tileBaseY, u32 allocatedTiles, u32 unused, u32 color) {
    void *tilesetBase;
    u32 tileOffset;
    u32 tile;

    tile = color & 0xf;
    tile |= (tile << 4);
    tile |= (tile << 8);
    tile |= (tile << 16);

    tileOffset = (tileBaseX + (tileBaseY * 0x20)) * 0x20;
    tilesetBase = (void *)(VRAMBase + tileOffset);
    dma3_fill(tile, tilesetBase, allocatedTiles * 0x20, 0x20, 0x200);
    tilesetBase = (void *)(VRAMBase + tileOffset + 0x400);
    dma3_fill(tile, tilesetBase, allocatedTiles * 0x20, 0x20, 0x200);
}


// Fill Allocated Space With Given Pixel
void text_printer_fill_vram_tiles(u32 tileBaseX, u32 tileBaseY, u32 allocatedTiles, u32 unused, u32 color) {
    text_printer_clear_tiles(tileBaseX, tileBaseY + 64, allocatedTiles, unused, color);
}


// Get Glyph ID (https://decomp.me/scratch/CJd8T)
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
struct TextPrinter *text_printer_create_new(u16 memID, u32 totalLines, u32 maxWidth, u32 arg3) {
    struct TextPrinter *textPrinter;
    u32 i;

    textPrinter = mem_heap_alloc_id(memID, sizeof(struct TextPrinter));
    textPrinter->memID = memID;
    textPrinter->mode = TEXT_PRINTER_MODE_STANDARD;
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
    textPrinter->lineColors = 0;
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
    textPrinter->font = TEXT_PRINTER_FONT_SMALL;
    textPrinter->lineSpacing = 16;
    textPrinter->centerText = FALSE;
    textPrinter->finished = FALSE;
    textPrinter->onFinish = NULL;
    textPrinter->onClear = NULL;
    textPrinter->ySrc = NULL;
    textPrinter->xSrc = NULL;
    textPrinter->unk54 = 0;
    textPrinter->shadowColors = TEXT_PRINTER_SHADOW_DISABLED;
    textPrinter->renderToScreen = TRUE;

    return textPrinter;
}


// Format Function for Escape Character '\1'
void text_printer_format_func(u32 arg, s32 xOffset) {
    switch (arg) {
        case '0':
        case '1':
        case '2':
        case '3':
            sPrinterColors = arg - '0';
            break;
        case '4':
        case '5':
        case '6':
        case '7':
            sPrinterShadowColors = arg - '4';
            break;
        case '8':
            sPrinterShadowColors = TEXT_PRINTER_SHADOW_DISABLED;
            break;
        case 'L':
            sPrinterAlignment = TEXT_ALIGNMENT_LEFT;
            break;
        case 'R':
            sPrinterAlignment = TEXT_ALIGNMENT_RIGHT;
            break;
        case 'C':
            sPrinterAlignment = TEXT_ALIGNMENT_CENTER;
            break;
        case 's':
            sPrinterFont = TEXT_PRINTER_FONT_SMALL;
            break;
        case 'm':
            sPrinterFont = TEXT_PRINTER_FONT_MEDIUM;
            break;
        case 'l':
            sPrinterFont = TEXT_PRINTER_FONT_LARGE;
            break;
        case '[':
            sPrinterIndentWidth = xOffset;
            break;
        case ']':
            sPrinterIndentWidth = 0;
            break;
    }
}


//
const char *text_printer_process_next_line(struct TextPrinter *textPrinter, u32 currentLine, const char *string) {
    struct Animation *anim;
    u32 id;
    u32 allocatedTiles;
    u32 linesPerGridRow;
    u32 gridX, gridY;
    u32 tileX, tileY;
    u32 tileOffset;
    void *tilesetBase;

    s32 currentDisplayLine;
    u16 x, y;
    u32 z;
    u16 sprite;

    sPrinterAlignment = textPrinter->alignment;
    sPrinterColors = textPrinter->lineColors;
    sPrinterFont = textPrinter->font;
    sPrinterIndentWidth = textPrinter->indentWidth;
    sPrinterShadowColors = textPrinter->shadowColors;
    text_printer_set_format_func(text_printer_format_func);

    id = textPrinter->unk4;
    allocatedTiles = D_08938258[id];
    linesPerGridRow = D_0893825d[id];
    gridX = currentLine % linesPerGridRow;
    gridY = currentLine / linesPerGridRow;
    tileX = gridX * allocatedTiles;
    tileY = textPrinter->unk26 + (gridY * 2);

    tileOffset = ((tileY * 0x20) + tileX) * 0x20;
    tilesetBase = OBJ_TILESET_BASE(tileOffset);
    dma3_fill(0, tilesetBase, allocatedTiles * 0x20, 0x20, 0x200);
    tilesetBase = OBJ_TILESET_BASE(tileOffset + 0x400);
    dma3_fill(0, tilesetBase, allocatedTiles * 0x20, 0x20, 0x200);

    currentDisplayLine = currentLine - textPrinter->unk54;
    if (currentDisplayLine < 0) {
        currentDisplayLine += textPrinter->totalLines;
    }
    x = textPrinter->x;
    y = (textPrinter->lineSpacing * currentDisplayLine) + textPrinter->y;
    z = textPrinter->z;

    anim = text_printer_get_formatted_line_anim(textPrinter->memID, tileX, tileY, textPrinter->font, &string, 2, textPrinter->lineColors, textPrinter->maxWidth, textPrinter->indentWidth, textPrinter->shadowColors);
    sprite = func_0804d160(D_03005380, anim, 0, x, y, z, 0, 0, 0x8000);
    func_0804d8c4(D_03005380, sprite, textPrinter->palette);
    func_0804db44(D_03005380, sprite, textPrinter->xSrc, textPrinter->ySrc);
    textPrinter->lineSprites[currentLine] = sprite;
    textPrinter->lineWidths[currentLine] = text_printer_get_current_line_width();
    textPrinter->lineAlignments[currentLine] = sPrinterAlignment;
    func_0804d55c(D_03005380, textPrinter->lineShadowSprites[currentLine], x, y, z + 1);
    func_0804db44(D_03005380, textPrinter->lineShadowSprites[currentLine], textPrinter->xSrc, textPrinter->ySrc);

    textPrinter->alignment = sPrinterAlignment;
    textPrinter->lineColors = sPrinterColors;
    textPrinter->font = sPrinterFont;
    textPrinter->indentWidth = sPrinterIndentWidth;
    textPrinter->shadowColors = sPrinterShadowColors;

    return string;
}


// Align Sprites
void text_printer_align_sprites(struct TextPrinter *textPrinter) {
    u16 xCentre, xAligned;
    u32 greatestWidth;
    u32 i;

    if (textPrinter->centerText) {
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
                case TEXT_ALIGNMENT_LEFT:
                    xAligned = xCentre;
                    break;
                case TEXT_ALIGNMENT_RIGHT:
                    xAligned = (xCentre + greatestWidth) - textPrinter->lineWidths[i];
                    break;
                case TEXT_ALIGNMENT_CENTER:
                    xAligned = xCentre + ((greatestWidth - textPrinter->lineWidths[i]) / 2);
                    break;
            }
            func_0804d614(D_03005380, textPrinter->lineSprites[i], xAligned);
        }
    }
}


// Show/Hide Text
void text_printer_show_text_now(struct TextPrinter *textPrinter, u32 show) {
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
void text_printer_show_text(struct TextPrinter *textPrinter, u32 show) {
    if (textPrinter == NULL) return;

    textPrinter->renderToScreen = show;
    if (!textPrinter->currentlyPrinting) {
        text_printer_show_text_now(textPrinter, show);
    }
}


// Update (Single-String)
void text_printer_update_standard(struct TextPrinter *textPrinter) {
    if (textPrinter->currentlyPrinting == FALSE) {
        return;
    }

    if (textPrinter->string == NULL) {
        textPrinter->currentlyPrinting = FALSE;
        return;
    }

    if (textPrinter->canceled) {
        textPrinter->canceled = FALSE;
        return;
    }

    textPrinter->string = text_printer_process_next_line(textPrinter, textPrinter->currentLine, textPrinter->string);
    textPrinter->currentLine++;

    if ((*textPrinter->string == '\0') || (textPrinter->currentLine >= textPrinter->totalLines)) {
        text_printer_align_sprites(textPrinter);
        text_printer_show_text_now(textPrinter, textPrinter->renderToScreen);
        textPrinter->currentlyPrinting = FALSE;
        textPrinter->finished = TRUE;

        if (textPrinter->onFinish != NULL) {
            textPrinter->onFinish(textPrinter->onFinishArg);
        }
    }
}


// Update (Multi-String)
void text_printer_update_split_table(struct TextPrinter *textPrinter) {
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

    text_printer_process_next_line(textPrinter, firstLineString, textPrinter->lineStrings[firstLineString]);

    if (textPrinter->lineStrings[firstLineString] != NULL) {
        mem_heap_dealloc(textPrinter->lineStrings[firstLineString]);
    }

    textPrinter->lineStrings[firstLineString] = NULL;

    if (totalLineStrings < 2) {
        text_printer_align_sprites(textPrinter);
        text_printer_show_text_now(textPrinter, textPrinter->renderToScreen);
        textPrinter->currentlyPrinting = FALSE;
        textPrinter->finished = TRUE;
        if (textPrinter->onFinish != NULL) {
            textPrinter->onFinish(textPrinter->onFinishArg);
        }
    }
}


// Update
void text_printer_update(struct TextPrinter *textPrinter) {
    if (textPrinter == NULL) return;

    switch (textPrinter->mode) {
        case TEXT_PRINTER_MODE_STANDARD:
            text_printer_update_standard(textPrinter);
            break;
        case TEXT_PRINTER_MODE_STATIC_TABLE:
            text_printer_update_split_table(textPrinter);
            break;
    }
}


// Remove Text
void text_printer_clear(struct TextPrinter *textPrinter) {
    u32 finished;
    s16 sprite;
    u32 i;

    if (textPrinter == NULL) return;

    finished = textPrinter->finished;

    for (i = 0; i < textPrinter->totalLines; i++) {
        sprite = textPrinter->lineSprites[i];
        if (sprite >= 0) {
            text_printer_delete_anim((void *)func_0804ddb0(D_03005380, sprite, 7));
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
    textPrinter->finished = FALSE;
    textPrinter->string = NULL;
    textPrinter->unk54 = 0;

    if (finished) {
        if (textPrinter->onClear != NULL) {
            textPrinter->onClear(textPrinter->onClearArg);
        }
    }
}


// Delete Text Printer
void text_printer_delete(struct TextPrinter *textPrinter) {
    if (textPrinter == NULL) return;

    text_printer_clear(textPrinter);
    mem_heap_dealloc(textPrinter->lineSprites);
    mem_heap_dealloc(textPrinter->lineWidths);
    mem_heap_dealloc(textPrinter->lineAlignments);
    mem_heap_dealloc(textPrinter->lineShadowSprites);
    mem_heap_dealloc(textPrinter);
}


// Set Text
void text_printer_set_string(struct TextPrinter *textPrinter, const char *text) {
    if (textPrinter == NULL) return;

    if (textPrinter->mode == TEXT_PRINTER_MODE_STANDARD) {
        text_printer_clear(textPrinter);

        if (text != NULL) {
            textPrinter->canceled = TRUE;
            textPrinter->currentlyPrinting = TRUE;
            textPrinter->string = text;
        }
    }
}


// Get Text
const char *text_printer_get_text(struct TextPrinter *textPrinter) {
    if (textPrinter == NULL) return NULL;

    if (textPrinter->mode == TEXT_PRINTER_MODE_STANDARD) {
        if ((textPrinter->string != NULL) && (*textPrinter->string != '\0')) {
            return textPrinter->string;
        }
    }

    return NULL;
}


// Reinsert Text ("Continue"?)
void text_printer_resume(struct TextPrinter *textPrinter) {
    if (textPrinter == NULL) return;

    if (textPrinter->mode == TEXT_PRINTER_MODE_STANDARD) {
        if ((textPrinter->string != NULL) && (*textPrinter->string != '\0')) {
            text_printer_set_string(textPrinter, textPrinter->string);
        }
    }
}


// ? (https://decomp.me/scratch/477tU)
#include "asm/code_080092cc/asm_0800aac0.s"


// ?
void func_0800abb0(void *printer, s32 line) {
    struct TextPrinter *textPrinter = printer;
    s16 sprite;
    u32 i;

    if (textPrinter == NULL) return;

    if (textPrinter->mode == TEXT_PRINTER_MODE_STATIC_TABLE) {
        line %= textPrinter->totalLines;
        if (line < 0) {
            line += textPrinter->totalLines;
        }
        textPrinter->unk54 = line;

        for (i = 0; i < textPrinter->totalLines; i++) {
            sprite = textPrinter->lineSprites[line];
            if (sprite >= 0) {
                func_0804d648(D_03005380, sprite, (textPrinter->lineSpacing * i) + textPrinter->y);
            }

            sprite = textPrinter->lineShadowSprites[line];
            if (sprite >= 0) {
                func_0804d648(D_03005380, sprite, (textPrinter->lineSpacing * i) + textPrinter->y);
            }

            line++;
            if (line >= textPrinter->totalLines) {
                line = 0;
            }
        }
    }
}


// Get Active Printing Status
s32 text_printer_is_printing(struct TextPrinter *textPrinter) {
    if (textPrinter == NULL) return FALSE;

    return textPrinter->currentlyPrinting;
}


// Set X & Y
void text_printer_set_x_y(struct TextPrinter *textPrinter, s16 x, s16 y) {
    if (textPrinter == NULL) return;

    textPrinter->x = x;
    textPrinter->y = y;
}


// Set X
void text_printer_set_x(struct TextPrinter *textPrinter, s16 x) {
    if (textPrinter == NULL) return;

    textPrinter->x = x;
}


// Set Y
void text_printer_set_y(struct TextPrinter *textPrinter, s16 y) {
    if (textPrinter == NULL) return;

    textPrinter->y = y;
}


// Set Z (Sprite Depth)
void text_printer_set_layer(struct TextPrinter *textPrinter, u16 z) {
    if (textPrinter == NULL) return;

    textPrinter->z = z;
}


// Set Palette
void text_printer_set_palette(struct TextPrinter *textPrinter, u32 palette) {
    if (textPrinter == NULL) return;

    textPrinter->palette = palette;
}


// Set Colors
void text_printer_set_colors(struct TextPrinter *textPrinter, u32 colors) {
    if (textPrinter == NULL) return;

    textPrinter->lineColors = colors;
}


// Set Alignment
void text_printer_set_alignment(struct TextPrinter *textPrinter, u32 alignment) {
    if (textPrinter == NULL) return;

    textPrinter->alignment = alignment;
}


// Set Center Text
void text_printer_center_by_content(struct TextPrinter *textPrinter, u32 center) {
    if (textPrinter == NULL) return;

    textPrinter->centerText = center;
}


// Get unk26
s32 func_0800ace8(struct TextPrinter *textPrinter) {
    if (textPrinter == NULL) return 0;

    return textPrinter->unk26;
}


// Store Centred X & Y to Vector
void text_printer_get_x_y(struct TextPrinter *textPrinter, s16 *vx, s16 *vy) {
    if (textPrinter == NULL) return;

    *vx = (textPrinter->maxWidth / 2) + textPrinter->x;
    *vy = (textPrinter->currentLine * textPrinter->lineSpacing) + textPrinter->y;
}


// Set On-Print Function and Parameter
void text_printer_run_func_on_finish(struct TextPrinter *textPrinter, void *onPrint, s32 param) {
    if (textPrinter == NULL) return;

    textPrinter->onFinish = onPrint;
    textPrinter->onFinishArg = param;
}


// Set On-Clear Function and Parameter
void text_printer_run_func_on_clear(struct TextPrinter *textPrinter, void *onClear, s32 param) {
    if (textPrinter == NULL) return;

    textPrinter->onClear = onClear;
    textPrinter->onClearArg = param;
}


// Export Text Printer Data
void text_printer_export_data(struct TextPrinter *textPrinter, struct TextPrinterData *data) {
    if (textPrinter == NULL) return;

    data->string = textPrinter->string;
    data->font = textPrinter->font;
    data->colors = textPrinter->lineColors;
    data->alignment = textPrinter->alignment;
    data->indentWidth = textPrinter->indentWidth;
}


// Import Text Printer Data
void text_printer_import_data(struct TextPrinter *textPrinter, struct TextPrinterData *data) {
    if (textPrinter == NULL) return;

    textPrinter->string = data->string;
    textPrinter->font = data->font;
    textPrinter->lineColors = data->colors;
    textPrinter->alignment = data->alignment;
    textPrinter->indentWidth = data->indentWidth;
    text_printer_resume(textPrinter);
}


// Set X & Y Sources
void text_printer_set_x_y_controller(struct TextPrinter *textPrinter, s16 *xSrc, s16 *ySrc) {
    if (textPrinter == NULL) return;

    textPrinter->xSrc = xSrc;
    textPrinter->ySrc = ySrc;
}


// Set X Source
void text_printer_set_x_controller(struct TextPrinter *textPrinter, s16 *xSrc) {
    if (textPrinter == NULL) return;

    textPrinter->xSrc = xSrc;
}


// Set Y Source
void text_printer_set_y_controller(struct TextPrinter *textPrinter, s16 *ySrc) {
    if (textPrinter == NULL) return;

    textPrinter->ySrc = ySrc;
}


// Set Print Mode
void text_printer_set_mode(struct TextPrinter *textPrinter, u32 mode) {
    if (textPrinter == NULL) return;

    text_printer_clear(textPrinter);
    textPrinter->mode = mode;
}


// Get Line Sprite
s16 text_printer_get_line_sprite(struct TextPrinter *textPrinter, s32 line) {
    if (textPrinter == NULL) return -1;

    if ((line >= 0) && (line < textPrinter->totalLines)) {
        return textPrinter->lineSprites[line];
    }

    return -1;
}


// Set Line Spacing
void text_printer_set_line_spacing(struct TextPrinter *textPrinter, u32 lineSpacing) {
    if (textPrinter == NULL) return;

    textPrinter->lineSpacing = lineSpacing;
}


// Set Shadow Colors
void text_printer_set_shadow_colors(struct TextPrinter *textPrinter, s32 shadowColors) {
    if (textPrinter == NULL) return;

    textPrinter->shadowColors = shadowColors;
}
