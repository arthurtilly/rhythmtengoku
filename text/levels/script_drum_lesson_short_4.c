#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_0805f560[];
extern const struct BeatScript D_0805f5b8[];
extern const struct BeatScript D_0805f624[];
extern const char D_0805f648[];
extern const struct BeatScript D_0805f670[];
extern const char D_0805f6ac[];
extern const struct BeatScript D_0805f6ec[];
extern const char D_0805f740[];
extern const struct BeatScript D_0805f770[];
extern const char D_0805f7f4[];
extern const struct BeatScript D_0805f840[];
extern const char D_0805f8dc[];
extern const struct BeatScript D_0805f918[];
extern const char D_0805f9cc[];
extern const char D_0805fa10[];
extern const char D_0805fa60[];


/* Script Data - Drum Lesson (Short 4) */


const char D_0805f560[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_0805f5b8[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_0805f624[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_0805f648[] =
    "\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805f670[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x12),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x03),
    BS_RETURN
};

const char D_0805f6ac[] =
    "さらに１つ、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：" SHIFT_JIS_KANJI_JUU "字ボタン上";

const struct BeatScript D_0805f6ec[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(4),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x03),
    BS_RETURN
};

const char D_0805f740[] =
    "\n"
    "またまた１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805f770[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_0805f7f4[] =
    "そしてまたなんと！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：" SHIFT_JIS_KANJI_JUU "字ボタン右";

const struct BeatScript D_0805f840[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(5),
    BS_REST(0x0C),
    BS_RETURN
};

const char D_0805f8dc[] =
    "\n"
    "これまたなんと！！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805f918[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(5),
    BS_REST(0x0C),
    BS_RETURN
};

const char D_0805f9cc[] =
    SHIFT_JIS_KANJI_JUU "字ボタンの上で\n"
    "たたいたパーツは\n"
    "ハイハットっていう\n"
    "シンバルです。";

const char D_0805fa10[] =
    "ドラムセットによって\n"
    SHIFT_JIS_KANJI_JUU "字ボタンの上は\n"
    "ハイハットだったり\n"
    "ロールだったりします。";

const char D_0805fa60[] =
    "\n"
    "では、つぎ行きまーす！";
