#pragma once

/* Text Macros */

#define TEXT_LINE_STYLE_0 "\x01\x30"
#define TEXT_LINE_STYLE_1 "\x01\x31"
#define TEXT_LINE_STYLE_2 "\x01\x32"
#define TEXT_LINE_STYLE_5 "\x01\x35"
#define TEXT_LINE_STYLE_8 "\x01\x38"

#define TEXT_LINE_SIZE_L "\x01\x6c"
#define TEXT_LINE_SIZE_S "\x01\x73"

#define TEXT_SIZE_S "\x03\x30"
#define TEXT_SIZE_M "\x03\x31"
#define TEXT_SIZE_L "\x03\x32"

#define TEXT_STYLE_SHADOW_0 "\x05\x30"
#define TEXT_STYLE_SHADOW_1 "\x05\x31"
#define TEXT_STYLE_SHADOW_2 "\x05\x32"
#define TEXT_STYLE_SHADOW_3 "\x05\x33"
#define TEXT_STYLE_NORMAL "\x05\x34"

// Things that make it appear as if we might be using the wrong encoding:
#define SHIFT_JIS_WAVE_DASH "\x81\x60"
#define SHIFT_JIS_KANJI_JUU "\x8f\x5c"
#define SHIFT_JIS_KANJI_NOU "\x94\x5c"
