#include "global.h"
#include "library.h"

asm(".include \"include/gba.inc\"");//Temporary


/* RHYTHM LIBRARY (ARRIVAL) */


#include "asm/library/asm_08010490.s"

#include "asm/library/asm_08010494.s"

#include "asm/library/asm_080104c0.s"

#include "asm/library/asm_080104f0.s"

#include "asm/library/asm_0801052c.s"

#include "asm/library/asm_08010688.s"

#include "asm/library/asm_0801068c.s"

#include "asm/library/asm_0801075c.s"

#include "asm/library/asm_08010778.s"

#include "asm/library/asm_08010788.s"


/* DATA */


// "Notification from the Rhythm Reference Room"
const char D_0804f384[] = "　リズム資料室からお知らせ";

// "You have received [_______]."
const char D_0804f3a0[] = "　　　　　　　　　　　　　　　　　　　　を入荷しました。";

// Reward Title Open Bracket
const char D_0804f3dc[] = "「　";

// Reward Title Close Bracket
const char D_0804f3e4[] = "　」";
