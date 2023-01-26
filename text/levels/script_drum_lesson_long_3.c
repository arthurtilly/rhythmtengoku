#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_08063308[];
extern const struct BeatScript D_08063360[];
extern const struct BeatScript D_08063414[];
extern const char D_08063438[];
extern const struct BeatScript D_08063468[];
extern const char D_0806354c[];
extern const struct BeatScript D_0806358c[];
extern const char D_080635bc[];
extern const struct BeatScript D_08063600[];
extern const char D_08063708[];
extern const struct BeatScript D_08063744[];
extern const char D_08063870[];
extern const struct BeatScript D_080638a8[];


/* Script Data - Drum Lesson (Long 3) */


const char D_08063308[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_08063360[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_08063414[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08063438[] =
    "\n"
    "スネアドラムを\n"
    "かさねてみるネ！\n"
    "ノリノリだヨ！";

const struct BeatScript D_08063468[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_0806354c[] =
    "\n"
    "シンバルでキッチリと\n"
    "まとめておこうネ！\n"
    "これは、できるよネ？\n";

const struct BeatScript D_0806358c[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(7),
    BS_REST(0x15),
    BS_RETURN
};

const char D_080635bc[] =
    "スネアのパターンを\n"
    "ちょっとかえるネ。\n"
    "できると楽しいヨ！\n"
    "きっと。\n";

const struct BeatScript D_08063600[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
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

const char D_08063708[] =
    "\n"
    "１つだけ、音がふえるヨ。\n"
    "いがいとムズい！！\n"
    "がんばってネ！";

const struct BeatScript D_08063744[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
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

const char D_08063870[] =
    "\n"
    "またまた１つ、\n"
    "音がふえるヨ！\n"
    "できたらカッコよすぎ！";

const struct BeatScript D_080638a8[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),

    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
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
