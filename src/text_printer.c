#include "global.h"
#include "text_printer.h"

#include "src/memory_heap.h"
#include "src/lib_0804c870.h"
#include "data/text_printer_data.h"

asm(".include \"include/gba.inc\"");//Temporary


  //  //  //  SIMPLE TEXT  //  //  //


typedef void (PrintGlyphToVRAMFunc)(void *args);

extern PrintGlyphToVRAMFunc func_0800116c;

static struct FormattedGlyph {
    const char *unk0;
    const char *unk4;
    s16 id;
    u16 xOffsetFromStart;
    u8 width;
    u8 unkD;
    s8 unkE;
    u8 size;
    u8 spacing;
} *D_03001218; // Formatted Glyph Buffer

static void (*D_0300121c)(s32, s32);

static s32 D_03001220[54]; // ARM Function

static s32 D_030012f8;
static s8 D_030012fc;
static s8 D_030012fd;
static s8 D_030012fe;
static s8 D_030012ff;
static s8 D_03001300;



// Init. Static Variables
void func_08009844(void) {
    func_0800186c(func_0800116c, D_03001220, sizeof(D_03001220), 0x20, 0x100);
    D_03001218 = mem_heap_alloc(128 * sizeof(struct FormattedGlyph));
    D_0300121c = NULL;
}


// Get Spacing Width
s32 func_08009884(s32 textSize) {
    return D_089380ac[textSize].glyphSpacing;
}


// Get Glyph Width
s32 func_08009898(s32 textSize, s32 glyphID) {
    if (glyphID < 0) return 0;

    return D_089380ac[textSize].glyphWidths[glyphID];
}


#include "asm/code_080092cc/asm_080098c4.s"

#include "asm/code_080092cc/asm_080098fc.s"


// Print Glyph to VRAM
void func_08009948(s32 tileOfsX, s32 tileOfsY, s32 textSize, s32 glyphID, s32 paletteParams) {
    PrintGlyphToVRAMFunc *printGlyphToVRAM = (PrintGlyphToVRAMFunc *)(&D_03001220);
    u32 args[4];

    if (glyphID < 0) return;

    args[0] = VRAMBase + ((tileOfsX >> 3) * 32) + (tileOfsY * 32 * 32);
    args[1] = (u32)(D_089380ac[textSize].glyphData + (D_089380ac[textSize].glyphDataSize * glyphID));
    args[2] = ((tileOfsX & 7) << 2) + paletteParams;
    args[3] = textSize;
    printGlyphToVRAM(args);
}


// Print String to VRAM (return width in pixels)
s32 func_080099a0(s32 tileBaseX, s32 tileBaseY, s32 textSize, const char *string, s32 maxWidth, s32 paletteParams) {
    const char *ellipsis, *s;
    s32 ellipsisID, glyphID;
    s32 ellipsisWidth, glyphWidth;
    s32 spacing, totalWidth;

    s = string;
    totalWidth = 0;
    spacing = D_089380ac[textSize].glyphSpacing;
    ellipsis = D_089380d0;
    ellipsisID = func_0800a108(&ellipsis);
    ellipsisWidth = func_08009898(textSize, ellipsisID);

    while (*s != '\0') {
        glyphID = func_0800a108(&s);
        if (glyphID < 0) continue;

        glyphWidth = func_08009898(textSize, glyphID);
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

        func_08009948(tileBaseX + totalWidth, tileBaseY, textSize, glyphID, paletteParams);
        totalWidth += glyphWidth + spacing;
    }

    if (totalWidth != 0) {
        totalWidth -= spacing;
    }

    return totalWidth;
}


#include "asm/code_080092cc/asm_08009a54.s"

#include "asm/code_080092cc/asm_08009aa4.s"

#include "asm/code_080092cc/asm_08009af4.s"

#include "asm/code_080092cc/asm_08009de4.s"


// Get Animation (Type 1)
struct Animation *func_0800a004(u32 memID, u32 tileBaseX, u32 tileBaseY, u32 textSize, const char *string, u32 anchor, u32 arg6, u32 maxWidth) {
    return func_08009de4(memID, tileBaseX, tileBaseY, textSize, &string, anchor, arg6, maxWidth, TRUE, 0, -1);
}


// Get Animation (Type 2)
struct Animation *func_0800a030(u32 memID, u32 tileBaseX, u32 tileBaseY, u32 textSize, const char **string, u32 anchor, u32 arg6, u32 maxWidth, u32 arg8, u32 arg9) {
    return func_08009de4(memID, tileBaseX, tileBaseY, textSize, string, anchor, arg6, maxWidth, FALSE, arg8, arg9);
}


#include "asm/code_080092cc/asm_0800a05c.s"

#include "asm/code_080092cc/asm_0800a068.s"

#include "asm/code_080092cc/asm_0800a084.s"

#include "asm/code_080092cc/asm_0800a090.s"


// ?
void func_0800a0f0(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4) {
    func_0800a090(arg0, arg1 + 64, arg2, arg3, arg4);
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
struct SimpleText *func_0800a204(u16 memID, u32 totalLines, u32 maxWidth, u32 arg3) {
    struct SimpleText *simpleText;
    u32 i;

    simpleText = mem_heap_alloc_id(memID, sizeof(struct SimpleText));
    simpleText->memID = memID;
    simpleText->updateWithoutRender = FALSE;
    simpleText->totalLines = totalLines;
    simpleText->lineSprites = mem_heap_alloc_id(memID, totalLines * sizeof(s16));
    simpleText->unk14 = mem_heap_alloc_id(memID, totalLines * sizeof(u16));
    simpleText->unk18 = mem_heap_alloc_id(memID, totalLines * sizeof(u8));
    simpleText->unk1C = mem_heap_alloc_id(memID, totalLines * sizeof(u32));
    simpleText->lineShadowSprites = mem_heap_alloc_id(memID, totalLines * sizeof(s16));

    for (i = 0; i < totalLines; i++) {
        simpleText->lineSprites[i] = -1;
        simpleText->unk1C[i] = 0;
        simpleText->lineShadowSprites[i] = -1;
    }

    simpleText->palette = 0;
    simpleText->unk6 = 0;
    simpleText->maxWidth = maxWidth;
    simpleText->unk4 = func_0800a1ac(maxWidth);
    simpleText->unk28 = func_0800a1d4(totalLines, simpleText->unk4);
    simpleText->unk26 = arg3 - simpleText->unk28;
    simpleText->unk24 = 0;
    simpleText->unk25 = 0;
    simpleText->unk2A = 0;
    simpleText->x = 0;
    simpleText->y = 8;
    simpleText->z = 0;
    simpleText->currentlyPrinting = FALSE;
    simpleText->string = NULL;
    simpleText->textSize = 0;
    simpleText->lineSpacing = 16;
    simpleText->unk38 = 0;
    simpleText->unk39 = 0;
    simpleText->unk3C = NULL;
    simpleText->unk44 = 0;
    simpleText->ySrc = NULL;
    simpleText->xSrc = NULL;
    simpleText->unk54 = 0;
    simpleText->unk55 = -1;
    simpleText->unk56 = 1;

    return simpleText;
}


#include "asm/code_080092cc/asm_0800a2f8.s"


//
const char *func_0800a4a8(struct SimpleText *simpleText, u32 currentLine, const char *string) {
    struct Animation *anim;
    const char *s;
    u8 *sp20;
    u8 *sp24;
    s8 *sp28;

    u32 id;
    u32 r6;
    u32 r4;

    u32 r5;
    u32 r0;

    u32 tileX;
    u32 tileY;
    u32 tileOffset;
    void *tilesetBase;

    s32 r1;
    u16 x;
    u16 y;
    u32 z;
    u16 sprite;

    s = string;
    sp20 = &simpleText->unk24;
    D_030012fc = simpleText->unk24;
    D_030012fd = simpleText->unk6;
    D_030012fe = simpleText->textSize;
    sp24 = &simpleText->unk25;
    D_030012ff = simpleText->unk25;
    sp28 = &simpleText->unk55;
    D_03001300 = simpleText->unk55;
    func_0800a084(func_0800a2f8); // set D_0300121c

    id = simpleText->unk4;
    r6 = D_08938258[id];
    r4 = D_0893825d[id];
    r5 = currentLine % r4;
    r0 = currentLine / r4;
    tileX = r5 * r6;
    tileY = simpleText->unk26 + (r0 * 2);

    tileOffset = ((tileY * 32) + tileX) * 32;
    tilesetBase = OBJ_TILESET_BASE(tileOffset);
    func_080018e0(0, tilesetBase, r6 * 0x20, 0x20, 0x200);
    tilesetBase = OBJ_TILESET_BASE(tileOffset + 0x400);
    func_080018e0(0, tilesetBase, r6 * 0x20, 0x20, 0x200);

    r1 = currentLine - simpleText->unk54;
    if (r1 < 0) {
        r1 += simpleText->totalLines;
    }
    x = simpleText->x;
    y = (simpleText->lineSpacing * r1) + simpleText->y;
    z = simpleText->z;

    anim = func_0800a030(simpleText->memID, tileX, tileY, simpleText->textSize, &s, 2, simpleText->unk6, simpleText->maxWidth, *sp24, *sp28);
    sprite = func_0804d160(D_03005380, anim, 0, x, y, z, 0, 0, 0x8000);
    func_0804d8c4(D_03005380, sprite, simpleText->palette);
    func_0804db44(D_03005380, sprite, simpleText->xSrc, simpleText->ySrc);
    simpleText->lineSprites[currentLine] = sprite;
    simpleText->unk14[currentLine] = func_0800a05c();
    simpleText->unk18[currentLine] = D_030012fc;
    func_0804d55c(D_03005380, simpleText->lineShadowSprites[currentLine], x, y, z + 1);
    func_0804db44(D_03005380, simpleText->lineShadowSprites[currentLine], simpleText->xSrc, simpleText->ySrc);

    *sp20 = D_030012fc;
    simpleText->unk6 = D_030012fd;
    simpleText->textSize = D_030012fe;
    *sp24 = D_030012ff;
    *sp28 = D_03001300;

    return s;
}


#include "asm/code_080092cc/asm_0800a6a0.s"

#include "asm/code_080092cc/asm_0800a794.s"

#include "asm/code_080092cc/asm_0800a7fc.s"


// Update (and Render)
void func_0800a818(struct SimpleText *simpleText) {
    if (simpleText->currentlyPrinting == FALSE) {
        return;
    }

    if (simpleText->string == NULL) {
        simpleText->currentlyPrinting = FALSE;
        return;
    }

    if (simpleText->unk3A != 0) {
        simpleText->unk3A = 0;
        return;
    }

    simpleText->string = func_0800a4a8(simpleText, simpleText->unk2A, simpleText->string);
    simpleText->unk2A++;
    if ((simpleText->string[0] != 0) && (simpleText->unk2A < simpleText->totalLines)) {
        return;
    }

    func_0800a6a0(simpleText);
    func_0800a794(simpleText, simpleText->unk56);
    simpleText->currentlyPrinting = FALSE;
    simpleText->unk39 = 1;

    if (simpleText->unk3C != NULL) {
        simpleText->unk3C(simpleText->unk40);
    }
}


#include "asm/code_080092cc/asm_0800a890.s"


// Update
void func_0800a914(struct SimpleText *simpleText) {
    if (simpleText == NULL) return;

    switch (simpleText->updateWithoutRender) {
        case FALSE:
            func_0800a818(simpleText);
            break;
        case TRUE:
            func_0800a890(simpleText);
            break;
    }
}


#include "asm/code_080092cc/asm_0800a934.s"

#include "asm/code_080092cc/asm_0800aa1c.s"

#include "asm/code_080092cc/asm_0800aa4c.s"

#include "asm/code_080092cc/asm_0800aa78.s"

#include "asm/code_080092cc/asm_0800aa9c.s"

#include "asm/code_080092cc/asm_0800aac0.s"

#include "asm/code_080092cc/asm_0800abb0.s"


// Get Active Printing Status
s32 func_0800ac58(struct SimpleText *simpleText) {
    if (simpleText == NULL) return FALSE;
    return simpleText->currentlyPrinting;
}


// Set X & Y
void func_0800ac68(struct SimpleText *simpleText, s16 x, s16 y) {
    if (simpleText == NULL) return;

    simpleText->x = x;
    simpleText->y = y;
}


#include "asm/code_080092cc/asm_0800ac80.s"

#include "asm/code_080092cc/asm_0800ac90.s"


// Set Z (Sprite Depth)
void func_0800aca0(struct SimpleText *simpleText, u16 z) {
    if (simpleText == NULL) return;

    simpleText->z = z;
}


// Set Palette
void func_0800acb0(struct SimpleText *simpleText, u32 palette) {
    if (simpleText == NULL) return;

    simpleText->palette = palette;
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
