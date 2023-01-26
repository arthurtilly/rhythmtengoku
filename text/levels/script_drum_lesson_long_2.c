#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_08062d98[];
extern const struct BeatScript D_08062df0[];
extern const struct BeatScript D_08062ebc[];
extern const char D_08062ee0[];
extern const struct BeatScript D_08062f10[];
extern const struct BeatScript D_08062ff4[];
extern const char D_08063024[];
extern const struct BeatScript D_08063058[];
extern const char D_08063184[];
extern const struct BeatScript D_080631c4[];


/* Script Data - Drum Lesson (Long 2) */


const char D_08062d98[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_08062df0[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_08062ebc[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08062ee0[] =
    "\n"
    "シンバルとスネアで\n"
    "キメてみよう！\n"
    "できるかな？";

const struct BeatScript D_08062f10[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};

const struct BeatScript D_08062ff4[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(7),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08063024[] =
    "\n"
    "バスドラムを\n"
    "チョットかえてみるネ。\n"
    "できるかな？\n";

const struct BeatScript D_08063058[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};

const char D_08063184[] =
    "バスドラムを\n"
    "もうチョットだけ\n"
    "かえてみるネ。\n"
    "がんばって！！\n";

const struct BeatScript D_080631c4[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};
