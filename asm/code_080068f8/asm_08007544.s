asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007544 \n\
/* 08007544 */ PUSH {R4, R5, LR} \n\
/* 08007546 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08007548 */ LDRSH R1, [R0, R2] \n\
/* 0800754a */ LDR R2, [R0, 0x8] \n\
/* 0800754c */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0800754e */ STR R2, [R0, 0x8] \n\
/* 08007550 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08007552 */ LDRSH R1, [R0, R3] \n\
/* 08007554 */ LDR R3, [R0, 0xC] \n\
/* 08007556 */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 08007558 */ STR R3, [R0, 0xC] \n\
/* 0800755a */ LDR R1, =D_03005380 \n\
/* 0800755c */ LDR R4, [R1] \n\
/* 0800755e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08007560 */ LDRSH R1, [R0, R5] \n\
/* 08007562 */ LSLS R2, R2, 0x8 \n\
/* 08007564 */ ASRS R2, R2, 0x10 \n\
/* 08007566 */ LSLS R3, R3, 0x8 \n\
/* 08007568 */ ASRS R3, R3, 0x10 \n\
/* 0800756a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800756c */ BL func_0804d5d4 \n\
/* 08007570 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08007572 */ POP {R4, R5} \n\
/* 08007574 */ POP {R1} \n\
/* 08007576 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
