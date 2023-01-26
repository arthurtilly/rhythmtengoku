#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_0805f114[];
extern const struct BeatScript D_0805f16c[];
extern const struct BeatScript D_0805f1c0[];
extern const char D_0805f1e4[];
extern const struct BeatScript D_0805f20c[];
extern const char D_0805f278[];
extern const struct BeatScript D_0805f2a8[];
extern const char D_0805f32c[];
extern const struct BeatScript D_0805f35c[];
extern const char D_0805f3f8[];
extern const struct BeatScript D_0805f434[];
extern const char D_0805f470[];
extern const struct BeatScript D_0805f4ac[];


/* Script Data - Drum Lesson (Short 1) */


const char D_0805f114[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_0805f16c[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_0805f1c0[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_0805f1e4[] =
    "\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805f20c[] = {
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

const char D_0805f278[] =
    "\n"
    "さらに１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805f2a8[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_0805f32c[] =
    "\n"
    "またまた１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805f35c[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};

const char D_0805f3f8[] =
    "\n"
    "そしてまたなんと！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805f434[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x09),
    BS_RETURN
};

const char D_0805f470[] =
    "\n"
    "これまたなんと！！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805f4ac[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x0C),
    BS_RETURN
};
