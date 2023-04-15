#pragma once


/* TEXT MACROS */


// Standard Text: Printer Settings
#define PRINTER_COLOR_0     "\1" "0"
#define PRINTER_COLOR_1     "\1" "1"
#define PRINTER_COLOR_2     "\1" "2"
#define PRINTER_COLOR_3     "\1" "3"
#define PRINTER_SHADOW_0    "\1" "4"
#define PRINTER_SHADOW_1    "\1" "5"
#define PRINTER_SHADOW_2    "\1" "6"
#define PRINTER_SHADOW_3    "\1" "7"
#define PRINTER_SHADOW_NONE "\1" "8"
#define PRINTER_ALIGN_L     "\1" "L"
#define PRINTER_ALIGN_C     "\1" "C"
#define PRINTER_ALIGN_R     "\1" "R"
#define PRINTER_SIZE_S      "\1" "s"
#define PRINTER_SIZE_M      "\1" "m"
#define PRINTER_SIZE_L      "\1" "l"
#define PRINTER_INDENT      "\1" "["
#define PRINTER_INDENT_END  "\1" "]"

// Standard Text: Single-String Options
#define TEXT_COLOR_0        "\2" "0"
#define TEXT_COLOR_1        "\2" "1"
#define TEXT_COLOR_2        "\2" "2"
#define TEXT_COLOR_3        "\2" "3"
#define TEXT_SIZE_S         "\3" "0"
#define TEXT_SIZE_M         "\3" "1"
#define TEXT_SIZE_L         "\3" "2"
#define TEXT_OFFSET(width)  "\4" #width "."
#define TEXT_SHADOW_0       "\5" "0"
#define TEXT_SHADOW_1       "\5" "1"
#define TEXT_SHADOW_2       "\5" "2"
#define TEXT_SHADOW_3       "\5" "3"
#define TEXT_SHADOW_NONE    "\5" "4"

// Bitmap Font: Color Settings
#define FONT_COLOR(x)   "." #x
#define FONT_COLOR_0    "." "0"
#define FONT_COLOR_1    "." "1"
#define FONT_COLOR_2    "." "2"
#define FONT_COLOR_3    "." "3"
#define FONT_COLOR_4    "." "4"
#define FONT_COLOR_5    "." "5"
#define FONT_COLOR_6    "." "6"
#define FONT_COLOR_7    "." "7"
#define FONT_COLOR_8    "." "8"
#define FONT_COLOR_9    "." "9"
#define FONT_COLOR_A    "." "a"
#define FONT_COLOR_B    "." "b"
#define FONT_COLOR_C    "." "c"
#define FONT_COLOR_D    "." "d"
#define FONT_COLOR_E    "." "e"
#define FONT_COLOR_F    "." "f"

// Bitmap Font: Font Styles
#define FONT_STYLE(x)       ":" #x
#define FONT_WW_OUTLINE_L   ":" "0"
#define FONT_WW_OUTLINE_S   ":" "1"
#define FONT_WW_OUTLINE_NUM ":" "2"
#define FONT_WW_BODY_TEXT   ":" "0"
#define FONT_WW_BODY_ICON   ":" "1"

// Shift JIS Encoding Support: (because the GCC compiler doesn't like the second byte being 0x5C, or '\')
#define KATAKANA_SO "\x83\x5C" // Should be ソ, now written as ソ\.
#define KANJI_JUU   "\x8F\x5C" // Should be 十, now written as 十\.
#define KANJI_NOU   "\x94\x5C" // Should be 能, now written as 能\.
#define KANJI_HYOU  "\x95\x5C" // Should be 表, now written as 表\.
