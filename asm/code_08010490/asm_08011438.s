asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011438 \n\
/* 08011438 */ PUSH {R4, LR} \n\
/* 0801143a */ SUB SP, 0xC \n\
/* 0801143c */ BL func_0800c3b8 \n\
/* 08011440 */ LSLS R0, R0, 0x10 \n\
/* 08011442 */ LSRS R0, R0, 0x10 \n\
/* 08011444 */ LDR R1, =func_08011408 \n\
/* 08011446 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011448 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801144a */ BL func_0800856c \n\
/* 0801144e */ BL func_0800e0ec \n\
/* 08011452 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08011454 */ STR R4, [SP] \n\
/* 08011456 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08011458 */ STR R0, [SP, 0x4] \n\
/* 0801145a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801145c */ STR R0, [SP, 0x8] \n\
/* 0801145e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08011460 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011462 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08011464 */ BL func_0800e0a0 \n\
/* 08011468 */ STR R4, [SP] \n\
/* 0801146a */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0801146c */ STR R0, [SP, 0x4] \n\
/* 0801146e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08011470 */ STR R0, [SP, 0x8] \n\
/* 08011472 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08011474 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011476 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08011478 */ BL func_0800e0a0 \n\
/* 0801147c */ ADD SP, 0xC \n\
/* 0801147e */ POP {R4} \n\
/* 08011480 */ POP {R0} \n\
/* 08011482 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
