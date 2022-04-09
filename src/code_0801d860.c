#include "global.h"
#include "code_0801d860.h"

// Might need more splitting

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_0300155c; // unknown type
static s8 D_03001560; // unknown type
static s8 D_03001561; // unknown type

// Beatscript related stuff

#include "asm/code_0801d860/asm_0801d860.s"

#include "asm/code_0801d860/asm_0801d86c.s"

#include "asm/code_0801d860/asm_0801d8d8.s"

#include "asm/code_0801d860/asm_0801d95c.s"

#include "asm/code_0801d860/asm_0801d968.s"

#include "asm/code_0801d860/asm_0801d978.s"

#include "asm/code_0801d860/asm_0801d98c.s"

#include "asm/code_0801d860/asm_0801d9cc.s"

// Pausing stuff

#include "asm/code_0801d860/asm_0801d9d0.s"

#include "asm/code_0801d860/asm_0801da48.s"

#include "asm/code_0801d860/asm_0801dabc.s"

#include "asm/code_0801d860/asm_0801daf8.s"

#include "asm/code_0801d860/asm_0801db04.s"

// ??? (debug related?)

#include "asm/code_0801d860/asm_0801db1c.s"

#include "asm/code_0801d860/asm_0801db74.s"

#include "asm/code_0801d860/asm_0801dbe8.s"

#include "asm/code_0801d860/asm_0801dcb0.s"

#include "asm/code_0801d860/asm_0801dd58.s"

#include "asm/code_0801d860/asm_0801de38.s"

#include "asm/code_0801d860/asm_0801de6c.s"

#include "asm/code_0801d860/asm_0801debc.s"

#include "asm/code_0801d860/asm_0801dec0.s"

#include "asm/code_0801d860/asm_0801dec4.s"

#include "asm/code_0801d860/asm_0801decc.s"

#include "asm/code_0801d860/asm_0801ded4.s"

// Soft reset

#include "asm/code_0801d860/asm_0801dedc.s"

#include "asm/code_0801d860/asm_0801def4.s"

#include "asm/code_0801d860/asm_0801df1c.s"

// Safety screen

#include "asm/code_0801d860/asm_0801dfac.s"

#include "asm/code_0801d860/asm_0801dfdc.s"

#include "asm/code_0801d860/asm_0801dfe8.s"

#include "asm/code_0801d860/asm_0801e030.s"

#include "asm/code_0801d860/asm_0801e060.s"

#include "asm/code_0801d860/asm_0801e09c.s"

#include "asm/code_0801d860/asm_0801e0c8.s"

// Debug Menu

#include "asm/code_0801d860/asm_0801e100.s"

#include "asm/code_0801d860/asm_0801e154.s"

#include "asm/code_0801d860/asm_0801e174.s"

#include "asm/code_0801d860/asm_0801e1a0.s"

#include "asm/code_0801d860/asm_0801e1d0.s"

#include "asm/code_0801d860/asm_0801e1f0.s"

#include "asm/code_0801d860/asm_0801e3b4.s"

#include "asm/code_0801d860/asm_0801e3b8.s"

#include "asm/code_0801d860/asm_0801e4c4.s"

#include "asm/code_0801d860/asm_0801e4e0.s"

#include "asm/code_0801d860/asm_0801e4f4.s"

#include "asm/code_0801d860/asm_0801e704.s"

// Flash Memory Check

#include "asm/code_0801d860/asm_0801e708.s"

#include "asm/code_0801d860/asm_0801e734.s"

#include "asm/code_0801d860/asm_0801e764.s"

#include "asm/code_0801d860/asm_0801e780.s"

#include "asm/code_0801d860/asm_0801e80c.s"

#include "asm/code_0801d860/asm_0801e810.s"

#include "asm/code_0801d860/asm_0801e90c.s"

#include "asm/code_0801d860/asm_0801e928.s"

#include "asm/code_0801d860/asm_0801e940.s"

#include "asm/code_0801d860/asm_0801e950.s"

// Data Clear

#include "asm/code_0801d860/asm_0801e954.s"

#include "asm/code_0801d860/asm_0801e980.s"

#include "asm/code_0801d860/asm_0801e9b0.s"

#include "asm/code_0801d860/asm_0801e9cc.s"

#include "asm/code_0801d860/asm_0801ea50.s"

#include "asm/code_0801d860/asm_0801ea54.s"

#include "asm/code_0801d860/asm_0801ea58.s"

#include "asm/code_0801d860/asm_0801ea74.s"

#include "asm/code_0801d860/asm_0801ea84.s"

// Ending???

#include "asm/code_0801d860/asm_0801ea88.s"

#include "asm/code_0801d860/asm_0801eab4.s"

#include "asm/code_0801d860/asm_0801eae4.s"

#include "asm/code_0801d860/asm_0801eb20.s"

#include "asm/code_0801d860/asm_0801eb90.s"

#include "asm/code_0801d860/asm_0801eb94.s"

#include "asm/code_0801d860/asm_0801ed20.s"

#include "asm/code_0801d860/asm_0801ed3c.s"

#include "asm/code_0801d860/asm_0801ed4c.s"

// ???

#include "asm/code_0801d860/asm_0801ed50.s"

#include "asm/code_0801d860/asm_0801ed7c.s"

#include "asm/code_0801d860/asm_0801edac.s"

#include "asm/code_0801d860/asm_0801edc8.s"

#include "asm/code_0801d860/asm_0801ee38.s"

#include "asm/code_0801d860/asm_0801ee3c.s"

#include "asm/code_0801d860/asm_0801ee6c.s"

#include "asm/code_0801d860/asm_0801ee88.s"
