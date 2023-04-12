#include "global.h"
#include "perfect.h"

asm(".include \"include/gba.inc\"");//Temporary


/* PERFECT CERTIFICATE */


#include "asm/perfect_certificate/asm_08016a54.s"

#include "asm/perfect_certificate/asm_08016a58.s"

#include "asm/perfect_certificate/asm_08016a84.s"

#include "asm/perfect_certificate/asm_08016ab4.s"

#include "asm/perfect_certificate/asm_08016af0.s"

#include "asm/perfect_certificate/asm_08016d5c.s"

#include "asm/perfect_certificate/asm_08016d90.s"

#include "asm/perfect_certificate/asm_08016d94.s"

#include "asm/perfect_certificate/asm_08016dd8.s"

#include "asm/perfect_certificate/asm_08016df4.s"


/* DATA */


//
const char D_08054acc[] = "\0021" "\0011" "\001C" "\0030" "\001s" "\0054" "\0018" "「";


//
const char D_08054ae0[] = "」";


//
const char D_08054ae4[] = "の曲";


// You've earned a gift!
const char D_08054aec[] = "\0020" "\0010" "をプレゼント！\n";


//
const char D_08054b00[] = "プレゼントは　あと　" "\0021" "\0011";


// gifts
// left to get. Keep going!
const char D_08054b1c[] = "コ" "\0020" "\0010" "　あるから、\n"
    "他のキャンペーンにもチャレンジしてみてネ！";


// 0 gifts left.
// You finally got them all!
const char D_08054b5c[] = "プレゼントは　これで" "\0021" "\0011" "オシマイ" "\0020" "\0010" "です。\n";


// Congratulations!
const char D_08054b88[] = "パーフェクトキャンペーン、コンプリートです！";
