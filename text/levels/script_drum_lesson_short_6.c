#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_08060fa0[];
extern const struct BeatScript D_08060ff8[];
extern const struct BeatScript D_0806104c[];
extern const char D_08061070[];
extern const struct BeatScript D_080610b0[];
extern const char D_08061110[];
extern const struct BeatScript D_08061154[];
extern const char D_080611c0[];
extern const struct BeatScript D_08061204[];
extern const char D_08061288[];
extern const struct BeatScript D_080612c4[];
extern const char D_08061300[];
extern const struct BeatScript D_08061330[];


/* Script Data - Drum Lesson (Short 6) */


const char D_08060fa0[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_08060ff8[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_0806104c[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08061070[] =
    "\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：キックは前と同じ";

const struct BeatScript D_080610b0[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08061110[] =
    "さらに１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：キックは前と同じ";

const struct BeatScript D_08061154[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RETURN
};

const char D_080611c0[] =
    "またまた１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：" SHIFT_JIS_KANJI_JUU "字ボタン上";

const struct BeatScript D_08061204[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(4),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08061288[] =
    "\n"
    "そしてまたなんと！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_080612c4[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(4),
    BS_REST(0x09),
    BS_RETURN
};


const char D_08061300[] =
    "\n"
    "これまたなんと！\n"
    "ノリノリだヨ！\n"
    "できるかな？\n";

const struct BeatScript D_08061330[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(4),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(4),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(4),
    BS_REST(0x0C),
    BS_RETURN
};
