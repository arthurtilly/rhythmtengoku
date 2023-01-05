#include "global.h"
#include "text.h"
#include "options_text.h"


/* Options Menu */


// Erase ALL data?
//　　　　　　　Erase
//　　　　　　　Cancel
const char D_08054950[] =
    "\x02\x33" "\x01\x33" "\x01\x43" "ホントに消すの？\n"
    "\x02\x31" "\x01\x31" "\x01\x4c" "　　　　　　　はい\n"
    "　　　　　　　いいえ";

// Clear Save Data
// Erase progress, gifts, drum lessons,
// <everything>! Think about it!
const char D_08054998[] =
    "\x02\x33" "\x01\x33" "\x01\x43" "データのクリア\n"
    "\x02\x31" "\x01\x31" "\x01\x4c" "いままでの記録を全部けして、はじめから\n"
    "やりなおします。よく考えてネ！";

// Sound Mode
// <Stereo>  For headphones, Nintendo DS, etc.
// <Mono>  For GBAs without headphones.
const char D_080549fc[] =
    "\x02\x33" "\x01\x33" "\x01\x43" "サウンドモード\n"
    "\x02\x31" "\x01\x31" "\x01\x4c" "ステレオ　　ヘッドホンならこっち！オススメ！\n"
    "モノラル　　本体のスピーカーならこっち。";
