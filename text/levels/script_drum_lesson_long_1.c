#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_080639f8[];
extern const struct BeatScript D_08063a50[];
extern const struct BeatScript D_08063b34[];
extern const char D_08063b58[];
extern const struct BeatScript D_08063b98[];
extern const char D_08063bc8[];
extern const struct BeatScript D_08063bf0[];
extern const char D_08063cd4[];
extern const struct BeatScript D_08063d14[];


/* Script Data - Drum Lesson (Long 1) */


const char D_080639f8[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_08063a50[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
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

const struct BeatScript D_08063b34[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08063b58[] =
    "\n"
    "シンバルでキッチリと\n"
    "まとめておこうネ！\n"
    "これは、できるよネ？\n";

const struct BeatScript D_08063b98[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(7),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08063bc8[] =
    "\n"
    "チョットだけ　かえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08063bf0[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08063cd4[] =
    "\n"
    "１つだけ、音がふえるヨ！\n"
    "わりとカンタンだから\n"
    "がんばってネ！\n";

const struct BeatScript D_08063d14[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};
