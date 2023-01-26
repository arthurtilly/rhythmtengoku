#include "global.h"
#include "text.h"
#include "bs_ext.h"

extern const char D_080613e4[];
extern const struct BeatScript D_0806143c[];
extern const struct BeatScript D_080614a8[];
extern const char D_080614cc[];
extern const struct BeatScript D_080614f4[];
extern const char D_08061578[];
extern const struct BeatScript D_080615a8[];
extern const char D_080615e4[];
extern const struct BeatScript D_08061614[];
extern const struct BeatScript D_080616b0[];
extern const char D_08061704[];
extern const char D_08061740[];
extern const char D_0806178c[];
extern const char D_080617bc[];
extern const char D_080617f0[];
extern const char D_0806183c[];
extern const char D_08061884[];
extern const char D_0806189c[];
extern const char D_080618d8[];
extern const char D_08061910[];
extern const char D_08061950[];
extern const char D_08061980[];


/* Script Data - Drum Lesson (Basic 1) */


const char D_080613e4[] =
    "よくきいてマネしてね。\n"
    "好きなタイミングでどうぞ。\n"
    "演奏を止めると、\n"
    "お手本がきけるヨ！";

const struct BeatScript D_0806143c[] = {
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x18),
    BS_RETURN
};

const struct BeatScript D_080614a8[] = {
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x15),
    BS_RETURN
};

const char D_080614cc[] =
    "\n"
    "１カ所、音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_080614f4[] = {
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x18),
    BS_RETURN
};

const char D_08061578[] =
    "\n"
    "さらに１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_080615a8[] = {
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x09),
    BS_RETURN
};

const char D_080615e4[] =
    "\n"
    "またまた１カ所、\n"
    "音がふえるヨ！\n"
    "わかるかな？\n";

const struct BeatScript D_08061614[] = {
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x18),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x0C),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x0C),
    BS_RETURN
};

const struct BeatScript D_080616b0[] = {
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(2),
    BS_REST(0x06),
    BS_RIQ_SPAWN_CUE(3),
    BS_REST(0x09),
    BS_RETURN
};

const char D_08061704[] =
    "\n"
    "今回は、スネアドラムという\n"
    "タイコをたたいてみましょう。\n";

const char D_08061740[] =
    "\n"
    "Aボタンと" SHIFT_JIS_KANJI_JUU "字ボタンの左、\n"
    "どちらでもスネアドラムを\n"
    "たたくことができるヨ！";

const char D_0806178c[] =
    "\n"
    "では　さっそくですが\n"
    "レッスンをはじめまーす！"
    "\n";

const char D_080617bc[] =
    "\n"
    "上で光っているランプは、\n"
    "タイミングランプです。";

const char D_080617f0[] =
    "\n"
    "まん中のミドリがジャスト！\n"
    "それより左はハシリ気味、\n"
    "右はモタリ気味です。";

const char D_0806183c[] =
    "\n"
    "うまく　できないときは、\n"
    "上のランプを見てズレを\n"
    "チェックしてみてネ！";

const char D_08061884[] =
    "\n"
    "では、つぎ行きまーす！";

const char D_0806189c[] =
    "\n"
    "演奏が速くて困ったら\n"
    "スタートボタンを\n"
    "押してネ！すると…";

const char D_080618d8[] =
    "\n"
    "演奏が、ゆっくりに\n"
    "なるんだヨ！\n"
    "参考にしてみてネ。\n";

const char D_08061910[] =
    "\n"
    "もとのテンポに戻るには\n"
    "再度スタートボタンを\n"
    "押せばＯＫです。";

const char D_08061950[] =
    "\n"
    "ちなみにスロー演奏中は\n"
    "レッスンが進まないヨ。";

const char D_08061980[] =
    "\n"
    "では、次いってみよう！";
