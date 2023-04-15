#include "global.h"
#include "data_check.h"

asm(".include \"include/gba.inc\"");//Temporary


/* DATA CHECK */


#include "asm/data/asm_08011530.s"

#include "asm/data/asm_08011534.s"

#include "asm/data/asm_08011580.s"

#include "asm/data/asm_080115b0.s"

#include "asm/data/asm_080115d0.s"

#include "asm/data/asm_08011690.s"

#include "asm/data/asm_08011694.s"

#include "asm/data/asm_08011728.s"

#include "asm/data/asm_08011744.s"

#include "asm/data/asm_08011820.s"

#include "asm/data/asm_08011a08.s"


/* DATA */


// Gameplay Logs
const char D_08050b38[] = "ƒQ[ƒ€ƒvƒŒƒC—š—ğ";

//
const char D_08050b4c[] = "  ";

//
const char D_08050b50[] = "No. ";

//
const char D_08050b58[] = "---";

// Average points:
const char D_08050b5c[] = "•½‹Ï“_ ";

// (Out of 1000 points)
const char D_08050b64[] = " (1000“_–“_)";

// Number of times played:
const char D_08050b74[] = "—V‚ñ‚¾‰ñ” ";

// (x) times
const char D_08050b80[] = "‰ñ";

// (First OK:
const char D_08050b84[] = "  ( ‰‡Ši: ";

// not yet
const char D_08050b94[] = "‚Ü‚¾";

// th time
const char D_08050b9c[] = "‰ñ–Ú";

// First Superb:
const char D_08050ba4[] = "  ‰‘å‡Ši: ";

// not yet )
const char D_08050bb4[] = "‚Ü‚¾ )";

// th time )
const char D_08050bbc[] = "‰ñ–Ú )";

// Blank
const char D_08050bc4[] = "";

// ???
const char D_08050bc8[] = "???";
