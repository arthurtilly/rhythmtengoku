#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_08062634[];
extern const struct BeatScript D_0806268c[];
extern const struct BeatScript D_08062770[];
extern const char D_08062794[];
extern const struct BeatScript D_080627c4[];
extern const struct BeatScript D_080628c0[];
extern const char D_080628f0[];
extern const struct BeatScript D_08062950[];
extern const char D_08062a64[];
extern const struct BeatScript D_08062aa0[];
extern const char D_08062be4[];
extern const struct BeatScript D_08062c24[];


/* Script Data - Drum Lesson (Long 4) */


const char D_08062634[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_0806268c[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
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

const struct BeatScript D_08062770[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08062794[] =
    "\n"
    "シンバルとスネアで\n"
    "キメてみよう！\n"
    "できるかな？";

const struct BeatScript D_080627c4[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_080628c0[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(7),
    BS_REST(0x15),
    BS_RETURN
};

const char D_080628f0[] =
    "たったの１つ、音がふえるヨ。\n"
    "でも　わりと　フクザツな\n"
    "カンジに　なるんだ！\n"
    "ついてこれるかな？";

const struct BeatScript D_08062950[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),

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
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08062a64[] =
    "\n"
    "おわりのところを\n"
    "カッコよくしてみるネ！\n"
    "がんばってみて！\n";

const struct BeatScript D_08062aa0[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
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
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RETURN
};

const char D_08062be4[] =
    "\n"
    "アクセントをつけるヨ。\n"
    "けっこうシブいかも" SHIFT_JIS_WAVE_DASH "！\n"
    "やるしかない！！";

const struct BeatScript D_08062c24[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(7),
    BS_REST(0x06),
    BS_REST(0x0C),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
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
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RETURN
};
