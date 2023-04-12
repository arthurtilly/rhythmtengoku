asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c55c \n\
/* 0802c55c */ PUSH {R4-R7, LR} \n\
/* 0802c55e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0802c560 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802c562 */ PUSH {R6, R7} \n\
/* 0802c564 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802c566 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0802c568 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0802c56a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802c56c */ LDR R7, [SP, 0x1C] \n\
/* 0802c56e */ LSLS R0, R6, 0x8 \n\
/* 0802c570 */ LSLS R1, R4, 0x8 \n\
/* 0802c572 */ LDR R2, [SP, 0x20] \n\
/* 0802c574 */ LDR R3, [SP, 0x24] \n\
/* 0802c576 */ BL math_lerp \n\
/* 0802c57a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802c57c */ ADDS R0, R6, R4 @ Set R0 to R6 + R4 \n\
/* 0802c57e */ LSLS R0, R0, 0x8 \n\
/* 0802c580 */ ASRS R0, R0, 0x1 \n\
/* 0802c582 */ SUBS R2, R0, R5 @ Set R2 to R0 - R5 \n\
/* 0802c584 */ SUBS R4, R4, R6 @ Set R4 to R4 - R6 \n\
/* 0802c586 */ LSLS R4, R4, 0x8 \n\
/* 0802c588 */ ASRS R1, R4, 0x1 \n\
/* 0802c58a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c58c */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0802c58e */ ASRS R2, R0, 0x8 \n\
/* 0802c590 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802c592 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802c594 */ ASRS R1, R0, 0x8 \n\
/* 0802c596 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0802c598 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0802c59a */ BL __divsi3 \n\
/* 0802c59e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802c5a0 */ SUBS R4, R4, R7 @ Set R4 to R4 - R7 \n\
/* 0802c5a2 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802c5a4 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802c5a6 */ LDR R2, [SP, 0x20] \n\
/* 0802c5a8 */ LDR R3, [SP, 0x24] \n\
/* 0802c5aa */ BL math_lerp \n\
/* 0802c5ae */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802c5b0 */ ASRS R5, R5, 0x8 \n\
/* 0802c5b2 */ LDR R0, [SP, 0x28] \n\
/* 0802c5b4 */ STR R5, [R0] \n\
/* 0802c5b6 */ LDR R0, [SP, 0x2C] \n\
/* 0802c5b8 */ STR R4, [R0] \n\
/* 0802c5ba */ POP {R3, R4} \n\
/* 0802c5bc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802c5be */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802c5c0 */ POP {R4-R7} \n\
/* 0802c5c2 */ POP {R0} \n\
/* 0802c5c4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
