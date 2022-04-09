asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b408 \n\
/* 0800b408 */ PUSH {R4-R7, LR} \n\
/* 0800b40a */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800b40c */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0800b40e */ LSLS R1, R1, 0x10 \n\
/* 0800b410 */ LSRS R1, R1, 0x10 \n\
/* 0800b412 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800b414 */ BEQ branch_0800b448 \n\
/* 0800b416 */ LDR R5, =D_03005380 \n\
/* 0800b418 */ LDR R0, [R5] \n\
/* 0800b41a */ LSLS R4, R1, 0x10 \n\
/* 0800b41c */ ASRS R4, R4, 0x10 \n\
/* 0800b41e */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800b420 */ ADDS R2, 0x22 @ Add 0x22 to R2 \n\
/* 0800b422 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800b424 */ ADDS R3, 0x24 @ Add 0x24 to R3 \n\
/* 0800b426 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800b428 */ BL func_0804db44 \n\
/* 0800b42c */ LDR R0, [R5] \n\
/* 0800b42e */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0800b430 */ LDRSH R2, [R6, R1] \n\
/* 0800b432 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0800b434 */ LDRSH R1, [R6, R3] \n\
/* 0800b436 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0800b438 */ MULS R3, R1 @ Multiply R3 by R1 \n\
/* 0800b43a */ LDRH R6, [R6, 0xC] \n\
/* 0800b43c */ ADDS R3, R3, R6 @ Set R3 to R3 + R6 \n\
/* 0800b43e */ LSLS R3, R3, 0x10 \n\
/* 0800b440 */ ASRS R3, R3, 0x10 \n\
/* 0800b442 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800b444 */ BL func_0804d5d4 \n\
 \n\
branch_0800b448: \n\
/* 0800b448 */ POP {R4-R7} \n\
/* 0800b44a */ POP {R0} \n\
/* 0800b44c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
