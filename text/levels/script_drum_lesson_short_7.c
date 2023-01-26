#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_08060310[];
extern const struct BeatScript D_08060368[];
extern const struct BeatScript D_080603c8[];
extern const char D_080603ec[];
extern const struct BeatScript D_08060424[];
extern const char D_08060454[];
extern const struct BeatScript D_08060484[];
extern const char D_080604f0[];
extern const struct BeatScript D_08060520[];
extern const char D_08060568[];
extern const struct BeatScript D_080605a4[];
extern const char D_08060628[];
extern const struct BeatScript D_08060664[];
extern const char D_08060700[];
extern const struct BeatScript D_0806073c[];
extern const char D_080607f0[];
extern const struct BeatScript D_08060834[];


/* Script Data - Drum Lesson (Short 7) */


const char D_08060310[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_08060368[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_080603c8[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};


const char D_080603ec[] =
    "\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：Rボタン";

const struct BeatScript D_08060424[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(7),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08060454[] =
    "\n"
    "さらに１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08060484[] = {
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

const char D_080604f0[] =
    "\n"
    "またまた１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08060520[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(7),
    BS_REST(0x12),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x03),
    BS_RETURN
};

const char D_08060568[] =
    "\n"
    "そしてまたなんと！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_080605a4[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x12),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08060628[] =
    "\n"
    "これまたなんと！！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08060664[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08060700[] =
    "\n"
    "またまたなんと！！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_0806073c[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(0),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x18),
    BS_RETURN
};

const char D_080607f0[] =
    "これでさいご！！\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n"
    "ヒント：両手";

const struct BeatScript D_08060834[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(0),
    BS_REST(0x0B),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x01),
    BS_REST(0x01),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x17),
    BS_RETURN
};
