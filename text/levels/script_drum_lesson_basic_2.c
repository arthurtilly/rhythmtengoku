#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_08061998[];
extern const struct BeatScript D_080619f0[];
extern const struct BeatScript D_08061a44[];
extern const char D_08061a68[];
extern const struct BeatScript D_08061a90[];
extern const char D_08061ae4[];
extern const struct BeatScript D_08061b10[];
extern const char D_08061b64[];
extern const struct BeatScript D_08061b94[];
extern const char D_08061c00[];
extern const struct BeatScript D_08061c2c[];
extern const char D_08061cb0[];
extern const struct BeatScript D_08061cdc[];
extern const char D_08061d18[];
extern const char D_08061d70[];
extern const char D_08061dbc[];
extern const char D_08061e04[];


/* Script Data - Drum Lesson (Basic 2) */


const char D_08061998[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_080619f0[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_08061a44[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x15),
    BS_RETURN
};

const char D_08061a68[] =
    "\n"
    "１カ所、音が変わるヨ！\n"
    "わかるかな？";

const struct BeatScript D_08061a90[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08061ae4[] =
    "\n"
    "さらに１カ所、\n"
    "音が変わるヨ！\n"
    "わかるかな？";

const struct BeatScript D_08061b10[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08061b64[] =
    "\n"
    "こんどは１つ、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08061b94[] = {
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

const char D_08061c00[] =
    "\n"
    "さらに１つ、\n"
    "音がふえるヨ！\n"
    "わかるかな？";

const struct BeatScript D_08061c2c[] = {
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(0),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08061cb0[] =
    "\n"
    "またまた１つ、\n"
    "音がふえるヨ！\n"
    "わかるかな？";

const struct BeatScript D_08061cdc[] = {
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(1),
    BS_REST(0x09),
    BS_RETURN
};

const char D_08061d18[] =
    "今回は、バスドラムと\n"
    "スネアドラムという、\n"
    "２つのタイコを使って\n"
    "レッスンをしましょう。";

const char D_08061d70[] =
    "\n"
    "Bボタンと" SHIFT_JIS_KANJI_JUU "字ボタンの下、\n"
    "どちらでもバスドラムを\n"
    "たたくことができるヨ！";

const char D_08061dbc[] =
    "\n"
    "しってると思うけど\n"
    "スネアドラムはAボタンと\n"
    SHIFT_JIS_KANJI_JUU "字ボタンの左だからネ。";

const char D_08061e04[] =
    "\n"
    "では　ぼちぼち\n"
    "はじめますネ" SHIFT_JIS_WAVE_DASH "\n"
    "";
