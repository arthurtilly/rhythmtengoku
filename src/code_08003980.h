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


// Read-Only Definition for a Bitmap Font
struct BitmapFontData {
    u8 whitespaceWidth; // Whitespace Width
    u8 textureWidth; // Glyph Texture Width
    u8 textureHeight; // Glyph Texture Height
    u8 descensionHeight; // Descension Height for Lowercase Latin Alphabet Characters
    s8 spacingWidth; // Glyph Spacing
    // [(0x8140 .. 0x817E), (0x8180 .. 0x819E)]
    const void *punctuationTextures;
    const u8 *punctuationWidths;
    // [(0x824F .. 0x8258)]
    const void *arabicNumeralTextures;
    const u8 *arabicNumeralWidths;
    // [(0x8260 .. 0x8279)]
    const void *latinUppercaseTextures;
    const u8 *latinUppercaseWidths;
    // [(0x8281 .. 0x829A)]
    const void *latinLowercaseTextures;
    const u8 *latinLowercaseWidths;
    // [(0x829F .. 0x82FC)]
    const void *hiraganaTextures;
    const u8 *hiraganaWidths;
    // [(0x8340 .. 0x837E), (0x8380 .. 0x839E)]
    const void *katakanaTextures;
    const u8 *katakanaWidths;
};

struct BitmapFontOBJ {
    u16 memID;
    const struct BitmapFontData *fonts;
    u16 baseTileNum;
    u8 maxAllocatedTileRows;
    u16 *printedGlyphs;
    u8 *printedGlyphCounts;
    void (*parseString)(char *, const char *);
    char *parsedOutput;
};

struct BitmapFontBG {
    const struct BitmapFontData *fonts;
    u16 baseTileNum;
    u8 unk6;
    u8 maxAllocatedTileRows;
    u16 *printedGlyphs;
    u8 *printedGlyphCounts;
};

struct PrintedTextAnim {
    struct Animation frames[2];
    u16 oam[0];
};

struct WobblyPrintedTextAnim {
    struct Animation frames[6];
    u16 oam[0];
};

struct BitmapFontQueuedText {
    const char *string;
    u32 alignment:4;
    u32 fontStyle:4;
    u32 palette:4;
};

struct BitmapFontOBJPrinter {
    struct BitmapFontOBJ *textObj;
    struct PrintedTextAnim **animTable;
    struct BitmapFontQueuedText *queue;
    u32 current;
};

struct BitmapFontBGPrinter {
    struct BitmapFontBG *textObj;
    u32 fontStyle:4;
    u32 palette:4;
    u32 processLimit:8;
    u32 currentMapX:10;
    u16 bgMapWidth;
    u16 *bgMap;
    const char *string;
};


extern void bmp_font_get_glyph(const struct BitmapFontData *font, const char *string, const u16 **textureReq, u32 *widthReq); // Get printable glyph texture and width.
extern struct BitmapFontOBJ *create_new_bmp_font_obj_alt(u16 memID, const struct BitmapFontData *fonts, u32 baseTileNum, u32 maxTileRows); // Create new BitmapFontOBJ (no casting?).
extern struct BitmapFontOBJ *create_new_bmp_font_obj(u16 memID, const struct BitmapFontData *fonts, u16 baseTileNum, u8 maxTileRows); // Create new BitmapFontOBJ.
extern void delete_bmp_font_obj(struct BitmapFontOBJ *textObj); // Delete BitmapFontOBJ.
extern void bmp_font_obj_set_format_parser(struct BitmapFontOBJ *textObj, void *stringParserFunc, u32 maxOutputLength); // Set BitmapFontOBJ parseString() function and allocate space for parsedOutput.
extern void bmp_font_obj_set_data(struct BitmapFontOBJ *textObj, const struct BitmapFontData *fonts, u16 baseTileNum, u8 maxTileRows, u32, u32, u16 *printedGlyphs, u8 *printedGlyphCounts); // Set BitmapFontOBJ data.
extern void bmp_font_obj_clear_print_data(struct BitmapFontOBJ *textObj); // Clear BitmapFontOBJ printed glyph data.
extern u32 bmp_font_obj_get_anim_total(const char *string); // Get total animation objects required for generated text (ignoring whitespace).
extern u32 bmp_font_obj_get_glyph_width(const struct BitmapFontData *font, const char *string); // Get glyph width.
extern u8 bmp_font_obj_get_style_value(char c); // Get value for font style/palette.
extern u32 bmp_font_obj_get_string_width(const struct BitmapFontData *font, const char *string); // Get string width.
extern void bmp_font_obj_write_glyph_hw(const u16 *texture, u16 *dest); // Print glyph (halfwidth).
extern void bmp_font_obj_write_glyph_fw(const u16 *texture, u16 *dest); // Print glyph (fullwidth).
extern u16 bmp_font_obj_print_glyph(struct BitmapFontOBJ *textObj, const char *string, u32 *widthReq); // Print glyph, returning the tileID.
extern u32 bmp_font_obj_glyph_is_whitespace(const char *string); // Check if a char is whitespace.
extern u32 bmp_font_obj_get_latin_glyph_type(const char *string); // Check if a char is a supported Latin alphabet char.
extern const char *bmp_font_obj_convert_latin_hw_to_fw(const char *string); // Convert halfwidth Latin Alphabet character to fullwidth.
extern struct PrintedTextAnim *bmp_font_obj_print_text(struct BitmapFontOBJ *textObj, const char *string, u32 *widthReq, u32 fontStyle, u32 palette); // Create Animation.
extern struct PrintedTextAnim *bmp_font_obj_print_unaligned_default(struct BitmapFontOBJ *textObj, const char *string); // Get Animation (Unaligned, default FontStyle and Palette).
extern struct PrintedTextAnim *bmp_font_obj_print_unaligned(struct BitmapFontOBJ *textObj, const char *string, u32 fontStyle, u32 palette); // Get Animation (Unaligned).
extern struct PrintedTextAnim *bmp_font_obj_print_c_default(struct BitmapFontOBJ *textObj, const char *string); // Get Animation (Center-aligned, default FontStyle and Palette).
extern struct PrintedTextAnim *bmp_font_obj_print_c(struct BitmapFontOBJ *textObj, const char *string, u32 fontStyle, u32 palette); // Get Animation (Center-aligned).
extern struct PrintedTextAnim *bmp_font_obj_print_l_default(struct BitmapFontOBJ *textObj, const char *string); // Get Animation (Left-aligned, default FontStyle and Palette).
extern struct PrintedTextAnim *bmp_font_obj_print_l(struct BitmapFontOBJ *textObj, const char *string, u32 fontStyle, u32 palette); // Get Animation (Left-aligned).
extern struct PrintedTextAnim *bmp_font_obj_print_r_default(struct BitmapFontOBJ *textObj, const char *string); // Get Animation (Right-aligned, default FontStyle and Palette).
extern struct PrintedTextAnim *bmp_font_obj_print_r(struct BitmapFontOBJ *textObj, const char *string, u32 fontStyle, u32 palette); // Get Animation (Right-aligned).
extern struct PrintedTextAnim *bmp_font_obj_print_to_xy_default(struct BitmapFontOBJ *textObj, const char *string, s16 x, s16 y); // Get Animation (Shift to XY, default FontStyle and Palette).
extern struct PrintedTextAnim *bmp_font_obj_print_to_xy(struct BitmapFontOBJ *textObj, const char *string, s16 x, s16 y, u32 fontStyle, u32 palette); // Get Animation (Shift to XY).
extern void bmp_font_obj_delete_printed_anim(struct BitmapFontOBJ *textObj, struct Animation *anim); // Delete printed BitmapFontOBJ.
extern struct BitmapFontOBJPrinter *bmp_font_obj_init_multi_printer(struct BitmapFontOBJPrinter *inputs); // Init. BitmapFontOBJPrinter task.
extern u32 bmp_font_obj_update_multi_printer(struct BitmapFontOBJPrinter *info); // Update BitmapFontOBJPrinter task.
extern s32 bmp_font_obj_print_multiple(u16 memID, struct BitmapFontOBJ *textObj, struct PrintedTextAnim **animTable, struct BitmapFontQueuedText *queue); // Start new BitmapFontOBJPrinter task.
extern void bmp_font_obj_delete_multi_printed_anim(struct BitmapFontOBJ *textObj, struct PrintedTextAnim **animTable, struct BitmapFontQueuedText *queue); // Delete all animations printed by a BitmapFontOBJ.
extern struct WobblyPrintedTextAnim *bmp_font_obj_print_wobbly(struct BitmapFontOBJ *textObj, struct PrintedTextAnim *anim, u8 frameDuration); // Create "wobbly" animation for printed text.
extern void bmp_font_obj_wobble_printed_anim(struct BitmapFontOBJ *textObj, struct PrintedTextAnim **anim, u8 frameDuration); // Replace printed text animation with a wobbly one.
extern void bmp_font_obj_curve_anim_y(struct Animation *anim, s16 vel); // Shift TextObject animation Y position along some sort of curve.
extern void bmp_font_obj_move_anim_xy(struct Animation *anim, s16 x, s16 y); // Shift TextObject animation position.

extern struct BitmapFontBG *create_new_bmp_font_bg(u16 memID, const struct BitmapFontData *fonts, u8 arg2, u16 baseTileNum, u8 maxTileRows); // Create new BitmapFontBG.
extern void delete_bmp_font_bg(struct BitmapFontBG *textObj); // Delete BitmapFontBG.
extern void bmp_font_bg_set_data(struct BitmapFontBG *textObj, const struct BitmapFontData *fonts, u8 arg2, u16 baseTileNum, u8 maxTileRows, u16 *printedGlyphs, u8 *printedGlyphCounts); // Set BitmapFontBG data.
extern void bmp_font_bg_clear_print_data(struct BitmapFontBG *textObj); // Clear BitmapFontBG printed glyph data.
extern void bmp_font_bg_write_glyph(const u16 *texture, u16 *dest); // Print glyph.
extern u16 bmp_font_bg_print_glyph(struct BitmapFontBG *textObj, const char *string); // Print glyph, returning the tileID.
extern u8 bmp_font_bg_get_style_value(char c); // Get value for FontStyle/Palette.
extern void bmp_font_bg_print_text(struct BitmapFontBG *textObj, u16 *bgMap, u32 mapWidth, const char *string, u32 palette); // Print to BG Map.
extern void bmp_font_bg_delete_printed_data(struct BitmapFontBG *textObj, const char *string); // Delete printed BitmapFontBG.
extern struct BitmapFontBGPrinter *bmp_font_bg_init_printer(struct BitmapFontBGPrinter *inputs); // Init. BitmapFontBGPrinter task.
extern u32 bmp_font_bg_update_printer(struct BitmapFontBGPrinter *info); // Update BitmapFontBGPrinter task.
extern s32 start_bmp_font_bg_printer_task(u16 memID, struct BitmapFontBG *textObj, u16 *bgMapDest, u32 bgMapWidth, const char *string, u32 palette, u32 processLimit); // Start new BitmapFontBGPrinter task.
extern u32 bmp_font_bg_get_total_printable_chars(const char *string); // Count the total printable characters in a string (including characters not supported by the font).


union SceneObject {
    u8 *type;
    struct SceneSprite {
        u8 type;
        s8 poolID;
        struct Animation *anim;
        s8 unk8;
        s16 x;
        s16 y;
        u16 z;
        s8 unk10;
        s8 unk11;
        u16 unk12;
        u32 unk14;
    } *sprite;
    struct SceneSpriteVecXY {
        u8 type;
        s8 poolID;
        struct Animation *anim;
        s8 unk8;
        struct Vector2 *pos;
        u16 z;
        s8 unk12;
        s8 unk13;
        u16 unk14;
        u32 unk18;
    } *spriteVecXY;
    struct SceneText {
        u8 type;
        s8 poolID;
        const char **textTable;
        u8 alignment;
        u8 fontStyle;
        u8 palette;
        u8 display:1;
        u8 wobbly:7;
        s16 x;
        s16 y;
        u16 z;
        u32 unk14;
    } *text;
};

struct SceneObjectRenderer {
    struct SpriteHandler *spriteHandler;
    struct BitmapFontOBJ *bitmapFontOBJ;
    const union SceneObject *objects;
    s16 *spritePool;
};

enum SceneObjectTypesEnum {
    SCENE_OBJECT_TYPE_IMM_XY,
    SCENE_OBJECT_TYPE_VEC_XY,
    SCENE_OBJECT_TYPE_TEXT
};


extern void import_scene_object(struct SpriteHandler *spriteHandler, struct BitmapFontOBJ *bitmapFontOBJ, const union SceneObject object, s16 *spritePool); // Render SceneObject
extern u32 import_all_scene_objects(struct SpriteHandler *spriteHandler, struct BitmapFontOBJ *bitmapFontOBJ, const union SceneObject *objects, s16 *spritePool); // Render All SceneObjects
extern void set_scene_object_current_text_id(u32 textID); // Set D_03004ae8
extern struct SceneObjectRenderer *init_scene_object_importer(struct SceneObjectRenderer *inputs); // Init. SceneObjectRenderer Task
extern u32 update_scene_object_importer(struct SceneObjectRenderer *info); // Update SceneObjectRenderer Task
extern s32 start_new_scene_object_importer(u16 memID, struct SpriteHandler *spriteHandler, struct BitmapFontOBJ *bitmapFontOBJ, const union SceneObject *objects, s16 *spritePool); // Start New SceneObjectRenderer Task
extern void delete_all_scene_objects(struct SpriteHandler *spriteHandler, struct BitmapFontOBJ *bitmapFontOBJ, const union SceneObject *objects, s16 *spritePool); // Delete All SceneObjects
extern void display_all_scene_objects(struct SpriteHandler *spriteHandler, struct BitmapFontOBJ *bitmapFontOBJ, const union SceneObject *objects, s16 *spritePool, u32 show); // Show/Hide All SceneObjects
