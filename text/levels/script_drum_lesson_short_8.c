#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_0805fa78[];
extern const struct BeatScript D_0805fad0[];
extern const struct BeatScript D_0805fb3c[];
extern const char D_0805fb60[];
extern const struct BeatScript D_0805fb94[];
extern const char D_0805fc24[];
extern const struct BeatScript D_0805fc54[];
extern const char D_0805fc90[];
extern const struct BeatScript D_0805fcc0[];
extern const char D_0805fd14[];
extern const struct BeatScript D_0805fd50[];
extern const char D_0805fdbc[];
extern const struct BeatScript D_0805fdf8[];


/* Script Data - Drum Lesson (Short 8) */


const char D_0805fa78[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_0805fad0[] = {
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

const struct BeatScript D_0805fb3c[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_0805fb60[] =
    "\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：両手";

const struct BeatScript D_0805fb94[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0B),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x01),
    BS_REST(0x01),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x17),
    BS_RETURN
};

const char D_0805fc24[] =
    "\n"
    "さらに１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805fc54[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x09),
    BS_RETURN
};

const char D_0805fc90[] =
    "\n"
    "またまた１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805fcc0[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(0),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x03),
    BS_RETURN
};

const char D_0805fd14[] =
    "\n"
    "そしてまたなんと！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805fd50[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x04),
    BS_RIQ_SPAWN_CUE(0),
    BS_REST(0x04),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x01),
    BS_RETURN
};

const char D_0805fdbc[] =
    "\n"
    "これまたなんと！！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0805fdf8[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x12),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0B),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x01),
    BS_REST(0x01),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x17),
    BS_RETURN
};
