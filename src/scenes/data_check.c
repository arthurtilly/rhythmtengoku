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
const char D_08050b38[] = "�Q�[���v���C����";

//
const char D_08050b4c[] = "  ";

//
const char D_08050b50[] = "No. ";

//
const char D_08050b58[] = "---";

// Average points:
const char D_08050b5c[] = "���ϓ_ ";

// (Out of 1000 points)
const char D_08050b64[] = " (1000�_���_)";

// Number of times played:
const char D_08050b74[] = "�V�񂾉� ";

// (x) times
const char D_08050b80[] = "��";

// (First OK:
const char D_08050b84[] = "  ( �����i: ";

// not yet
const char D_08050b94[] = "�܂�";

// th time
const char D_08050b9c[] = "���";

// First Superb:
const char D_08050ba4[] = "  ���升�i: ";

// not yet )
const char D_08050bb4[] = "�܂� )";

// th time )
const char D_08050bbc[] = "��� )";

// Blank
const char D_08050bc4[] = "";

// ???
const char D_08050bc8[] = "???";
