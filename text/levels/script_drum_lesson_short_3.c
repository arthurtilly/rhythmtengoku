#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_080622d8[];
extern const struct BeatScript D_08062330[];
extern const struct BeatScript D_0806239c[];
extern const char D_080623c0[];
extern const struct BeatScript D_08062404[];
extern const char D_08062488[];
extern const struct BeatScript D_080624d4[];
extern const char D_08062558[];
extern const struct BeatScript D_08062598[];


/* Script Data - Drum Lesson (Short 3) */


const char D_080622d8[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_08062330[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_0806239c[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_080623c0[] =
    "タムっていうのを\n"
    "たたいてみよう！\n"
    SHIFT_JIS_KANJI_JUU "字ボタンの右で\n"
    "タムをたたくヨ！";

const struct BeatScript D_08062404[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(5),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08062488[] =
    "タムだったところを\n"
    SHIFT_JIS_KANJI_JUU "字ボタンの上に\n"
    "かえてみるヨ！\n"
    "(ロールっていうみたい)";

const struct BeatScript D_080624d4[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(8),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08062558[] =
    "\n"
    "さっきと　ちがうところに\n"
    "タムを１つ、ふやすヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08062598[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(8),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(5),
    BS_REST(0x0C),
    BS_RETURN
};
