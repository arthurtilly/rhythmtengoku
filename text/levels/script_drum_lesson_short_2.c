#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_08061e24[];
extern const struct BeatScript D_08061e7c[];
extern const struct BeatScript D_08061ed0[];
extern const char D_08061ef4[];
extern const struct BeatScript D_08061f24[];
extern const struct BeatScript D_08061fc0[];
extern const char D_08061ffc[];
extern const struct BeatScript D_0806203c[];
extern const char D_080620e4[];
extern const struct BeatScript D_08062114[];
extern const char D_080621d4[];
extern const struct BeatScript D_08062200[];


/* Script Data - Drum Lesson (Short 2) */


const char D_08061e24[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_08061e7c[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_08061ed0[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08061ef4[] =
    "\n"
    "バスとスネアを\n"
    "交互にたたくヨ！\n"
    "できるかな？";

const struct BeatScript D_08061f24[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};

const struct BeatScript D_08061fc0[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x09),
    BS_RETURN
};

const char D_08061ffc[] =
    "\n"
    "バスドラムのタイミングを\n"
    "１カ所、ずらしてみるヨ。\n"
    "わかるかな？";

const struct BeatScript D_0806203c[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};

const char D_080620e4[] =
    "\n"
    "こんどは１つ、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08062114[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};

const char D_080621d4[] =
    "\n"
    "さらに１つ、\n"
    "音がふえるヨ！\n"
    "わかるかな？";

const struct BeatScript D_08062200[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};
