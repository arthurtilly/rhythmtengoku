asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a1f4 \n\
/* 0804a1f4 */ PUSH {LR} \n\
/* 0804a1f6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804a1f8 */ LDR R0, [R2, 0xC] \n\
/* 0804a1fa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a1fc */ BEQ branch_0804a214 \n\
/* 0804a1fe */ LDR R1, [R0, 0x8] \n\
/* 0804a200 */ LSLS R1, R1, 0xA \n\
/* 0804a202 */ LSRS R1, R1, 0x18 \n\
/* 0804a204 */ LDRB R0, [R2, 0x1] \n\
/* 0804a206 */ LSLS R0, R0, 0x19 \n\
/* 0804a208 */ LSRS R0, R0, 0x19 \n\
/* 0804a20a */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0804a20c */ LDRB R0, [R2, 0x1F] \n\
/* 0804a20e */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0804a210 */ LSRS R0, R0, 0xE \n\
/* 0804a212 */ B branch_0804a220 \n\
 \n\
branch_0804a214: \n\
/* 0804a214 */ LDRB R0, [R2, 0x1] \n\
/* 0804a216 */ LSLS R0, R0, 0x19 \n\
/* 0804a218 */ LSRS R0, R0, 0x19 \n\
/* 0804a21a */ LDRB R1, [R2, 0x1F] \n\
/* 0804a21c */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0804a21e */ ASRS R0, R0, 0x7 \n\
 \n\
branch_0804a220: \n\
/* 0804a220 */ POP {R1} \n\
/* 0804a222 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
