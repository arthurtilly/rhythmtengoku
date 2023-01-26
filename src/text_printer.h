#pragma once

#include "global.h"
#include "graphics.h"


  //  //  //  TEXT PRINTER  //  //  //


struct TextPrinter {
    u16 memID;
    u8 mode;
    u8 currentlyPrinting;
    u8 unk4; // id for D_08938258 { 0..4 }
    u8 palette;
    u8 lineColors;
    u16 maxWidth;
    u8 font;
    u8 lineSpacing;
    s16 totalLines;
    s16 *lineSprites;
    s16 *lineWidths;
    u8 *lineAlignments;
    char **lineStrings;
    s16 *lineShadowSprites;
    u8 alignment;
    u8 indentWidth;
    u16 unk26;
    u16 unk28;
    u8 currentLine;
    s16 x;
    s16 y;
    u16 z;
    const char *string;
    u8 centerText;
    u8 finished;
    u8 canceled;
    void (*onFinish)();
    u32 onFinishArg;
    void (*onClear)();
    u32 onClearArg;
    s16 *xSrc;
    s16 *ySrc;
    u8 unk54;
    s8 shadowColors;
    u8 renderToScreen;
};

struct TextPrinterData {
    const char *string;
    u8 font;
    u8 colors;
    u8 alignment;
    u8 indentWidth;
};

enum TextPrinterModesEnum {
    TEXT_PRINTER_MODE_STANDARD,
    TEXT_PRINTER_MODE_STATIC_TABLE
};

enum TextPrinterAlignmentsEnum {
    TEXT_ALIGNMENT_LEFT,
    TEXT_ALIGNMENT_RIGHT,
    TEXT_ALIGNMENT_CENTER
};

enum TextAnimAnchorsEnum {
    TEXT_ANIM_ANCHOR_TOP_LEFT,
    TEXT_ANIM_ANCHOR_BOTTOM_CENTER,
    TEXT_ANIM_ANCHOR_BOTTOM_LEFT,
    TEXT_ANIM_ANCHOR_BOTTOM_RIGHT
};

enum TextPrinterFontsEnum {
    TEXT_PRINTER_FONT_SMALL,
    TEXT_PRINTER_FONT_MEDIUM,
    TEXT_PRINTER_FONT_LARGE,
};

#define TEXT_PRINTER_SHADOW_DISABLED -1

extern void text_printer_init(void); // Init. Static Variables
extern s32 text_font_get_spacing(s32 font); // Get Spacing Width
extern s32 text_font_get_glyph_width(s32 font, s32 glyphID); // Get Glyph Width
extern s32 text_font_get_next_glyph_width(s32 font, const char **stream); // Get Glyph Width
extern s32 text_font_calculate_string_width(s32 font, const char *string); // Get Width of a String
extern void text_printer_print_glyph(s32 tileOfsX, s32 tileOfsY, s32 font, s32 glyphID, s32 lineColors); // Print Character to VRAM
extern s32 text_printer_print_unformatted_line(s32 tileBaseX, s32 tileBaseY, s32 font, const char *string, s32 maxWidth, s32 lineColors); // Print Non-Formatted Line to VRAM (return width in pixels)
extern s32 text_glyph_is_open_bracket(const char *c); // Check if Character is Any Sort of Open Bracket
extern s32 text_glyph_is_end_punctuation(const char *c); // Check if Character is Any Sort of Ending Punctuation
extern s32 text_printer_print_formatted_line(s32 tileBaseX, s32 tileBaseY, s32 font, const char **charStream, s32 maxWidth, s32 lineColors, s32 indentWidth, s32 shadowColors); // Print Formatted Line to VRAM (return width in pixels)
extern struct Animation *func_08009de4(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char **string, u32 anchor, s32 lineColors, s32 maxWidth, s32 ignoreFormatting, s32 indentWidth, s32 shadowColors);
extern struct Animation *text_printer_get_unformatted_line_anim(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char *string, u32 anchor, s32 lineColors, s32 maxWidth);
extern struct Animation *text_printer_get_formatted_line_anim(u32 memID, s32 tileBaseX, s32 tileBaseY, s32 font, const char **string, u32 anchor, s32 lineColors, s32 maxWidth, s32 indentWidth, s32 shadowColors);
extern s32 text_printer_get_current_line_width(void); // Get sCurrentLineWidth
extern void text_printer_delete_anim(struct StaticAnimation *anim); // Delete Text Animation
extern void text_printer_set_format_func(void *func); // Set sModifyPrinterSettings
extern void text_printer_clear_tiles(u32 tileBaseX, u32 tileBaseY, u32 allocatedTiles, u32 unused, u32 color); // Fill Allocated Space With Given Pixel
extern void text_printer_fill_vram_tiles(u32 tileBaseX, u32 tileBaseY, u32 allocatedTiles, u32 unused, u32 color); // Fill Allocated Space With Given Pixel
extern s32 text_printer_get_glyph_id(const char **string); // Get Glyph ID
extern u32 func_0800a1ac(u32 maxWidth);
extern s32 func_0800a1d4(u32 totalLines, u32 id);
extern struct TextPrinter *text_printer_create_new(u16 memID, u32 totalLines, u32 maxWidth, u32 arg3); // Create New
extern void text_printer_format_func(u32 arg, s32 xOffset); // Format Function for Escape Character '\1'
extern const char *text_printer_process_next_line(struct TextPrinter *textPrinter, u32 currentLine, const char *string);
extern void text_printer_align_sprites(struct TextPrinter *textPrinter); // Align Sprites
extern void text_printer_show_text_now(struct TextPrinter *textPrinter, u32 show); // Show/Hide Text
extern void text_printer_show_text(struct TextPrinter *textPrinter, u32 show); // Show/Hide Text On Render
extern void text_printer_update_standard(struct TextPrinter *textPrinter); // Update Single-String
extern void text_printer_update_split_table(struct TextPrinter *textPrinter); // Update Multi-String
extern void text_printer_update(struct TextPrinter *); // Update
extern void text_printer_clear(struct TextPrinter *textPrinter); // Remove Text
extern void text_printer_delete(struct TextPrinter *textPrinter); // Delete Text Printer
extern void text_printer_set_string(struct TextPrinter *textPrinter, const char *text); // Set Text
extern const char *text_printer_get_text(struct TextPrinter *textPrinter); // Get Text
extern void text_printer_resume(struct TextPrinter *textPrinter); // Reinsert Text ("Continue"?)
// extern ? func_0800aac0(?);
extern void func_0800abb0(void *printer, s32 line);
extern s32 text_printer_is_printing(struct TextPrinter *textPrinter); // Get Active Printing Status
extern void text_printer_set_x_y(struct TextPrinter *textPrinter, s16 x, s16 y); // Set X & Y
extern void text_printer_set_x(struct TextPrinter *textPrinter, s16 x); // Set X
extern void text_printer_set_y(struct TextPrinter *textPrinter, s16 y); // Set Y
extern void text_printer_set_layer(struct TextPrinter *textPrinter, u16 z); // Set Z (Sprite Depth/Layer)
extern void text_printer_set_palette(struct TextPrinter *textPrinter, u32 palette); // Set Palette
extern void text_printer_set_colors(struct TextPrinter *textPrinter, u32 colors); // Set Colors
extern void text_printer_set_alignment(struct TextPrinter *textPrinter, u32 alignment); // Set Alignment
extern void text_printer_center_by_content(struct TextPrinter *textPrinter, u32 center); // Set Center Text
extern s32 func_0800ace8(struct TextPrinter *textPrinter); // Get unk26
extern void text_printer_get_x_y(struct TextPrinter *textPrinter, s16 *vx, s16 *vy); // Store Centred X & Y to Vector
extern void text_printer_run_func_on_finish(struct TextPrinter *textPrinter, void *onPrint, s32 param); // Set On-Print Function and Parameter
extern void text_printer_run_func_on_clear(struct TextPrinter *textPrinter, void *onClear, s32 param); // Set On-Clear Function and Parameter
extern void text_printer_export_data(struct TextPrinter *textPrinter, struct TextPrinterData *data); // Export Text Printer Data
extern void text_printer_import_data(struct TextPrinter *textPrinter, struct TextPrinterData *data); // Import Text Printer Data
extern void text_printer_set_x_y_controller(struct TextPrinter *textPrinter, s16 *xSrc, s16 *ySrc); // Set X & Y Sources
extern void text_printer_set_x_controller(struct TextPrinter *textPrinter, s16 *xSrc); // Set X Source
extern void text_printer_set_y_controller(struct TextPrinter *textPrinter, s16 *ySrc); // Set Y Source
extern void text_printer_set_mode(struct TextPrinter *textPrinter, u32 mode); // Set Print Mode
extern s16 text_printer_get_line_sprite(struct TextPrinter *textPrinter, s32 line); // Get Line Sprite
extern void text_printer_set_line_spacing(struct TextPrinter *textPrinter, u32 lineSpacing); // Set Line Spacing
extern void text_printer_set_shadow_colors(struct TextPrinter *textPrinter, s32 shadowColors); // Set Shadow Colors
