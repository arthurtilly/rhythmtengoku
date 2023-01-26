#pragma once

/* Text Macros */

#define PRINTER_COLOR_0 "\1" "0"
#define PRINTER_COLOR_1 "\1" "1"
#define PRINTER_COLOR_2 "\1" "2"
#define PRINTER_COLOR_3 "\1" "3"
#define PRINTER_SHADOW_0 "\1" "4"
#define PRINTER_SHADOW_1 "\1" "5"
#define PRINTER_SHADOW_2 "\1" "6"
#define PRINTER_SHADOW_3 "\1" "7"
#define PRINTER_SHADOW_NONE "\1" "8"
#define PRINTER_ALIGN_L "\1" "L"
#define PRINTER_ALIGN_C "\1" "C"
#define PRINTER_ALIGN_R "\1" "R"
#define PRINTER_SIZE_S "\1" "s"
#define PRINTER_SIZE_M "\1" "m"
#define PRINTER_SIZE_L "\1" "l"
#define PRINTER_INDENT_START "\1" "["
#define PRINTER_INDENT_END "\1" "]"

#define TEXT_COLOR_0 "\2" "0"
#define TEXT_COLOR_1 "\2" "1"
#define TEXT_COLOR_2 "\2" "2"
#define TEXT_COLOR_3 "\2" "3"

#define TEXT_SIZE_S "\3" "0"
#define TEXT_SIZE_M "\3" "1"
#define TEXT_SIZE_L "\3" "2"

#define TEXT_INSERT_PADDING(padding) "\4" #padding "."

#define TEXT_SHADOW_0 "\5" "0"
#define TEXT_SHADOW_1 "\5" "1"
#define TEXT_SHADOW_2 "\5" "2"
#define TEXT_SHADOW_3 "\5" "3"
#define TEXT_SHADOW_NONE "\5" "4"

// Because Shift JIS standards have changed since 2006:
#define SHIFT_JIS_WAVE_DASH "\x81\x60"
#define SHIFT_JIS_KATAKANA_SO "\x83\x5c"
#define SHIFT_JIS_KANJI_JUU "\x8f\x5c"
#define SHIFT_JIS_KANJI_NOU "\x94\x5c"
#define SHIFT_JIS_KANJI_HYOU "\x95\x5c"
