#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_0805fea0[];
extern const struct BeatScript D_0805fef8[];
extern const struct BeatScript D_0805ff58[];
extern const char D_0805ff7c[];
extern const struct BeatScript D_0805ffb4[];
extern const char D_0805ffe4[];
extern const struct BeatScript D_08060014[];
extern const char D_08060080[];
extern const struct BeatScript D_080600c4[];
extern const char D_08060148[];
extern const struct BeatScript D_08060184[];
extern const char D_08060220[];
extern const struct BeatScript D_0806025c[];


/* Script Data - Drum Lesson (Short 5) */


const char D_0805fea0[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_0805fef8[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_0805ff58[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_0805ff7c[] =
    "\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：Rボタン";

const struct BeatScript D_0805ffb4[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(7),
    BS_REST(0x15),
    BS_RETURN
};

const char D_0805ffe4[] =
    "\n"
    "さらに１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08060014[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08060080[] =
    "またまた１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：" SHIFT_JIS_KANJI_JUU "字ボタン右";

const struct BeatScript D_080600c4[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(5),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08060148[] =
    "\n"
    "そしてまたなんと！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08060184[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(5),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};

const char D_08060220[] =
    "\n"
    "これまたなんと！！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0806025c[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(5),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RETURN
};
