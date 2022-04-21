asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a48c \n\
/* 0804a48c */ PUSH {R4-R6, LR} \n\
/* 0804a48e */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0804a490 */ NEGS R6, R6 @ Set R6 to -R6 \n\
/* 0804a492 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0804a494 */ LSLS R4, R4, 0x9 \n\
/* 0804a496 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804a498 */ LDR R0, =D_03005b8c \n\
/* 0804a49a */ LDRH R1, [R0] \n\
/* 0804a49c */ CMP R3, R1 @ Check R3 - R1 \n\
/* 0804a49e */ BGE branch_0804a4ce \n\
/* 0804a4a0 */ LDR R0, =D_030064bc \n\
/* 0804a4a2 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0804a4a4 */ LDR R2, [R0] \n\
 \n\
branch_0804a4a6: \n\
/* 0804a4a6 */ LDRB R0, [R2] \n\
/* 0804a4a8 */ LSLS R0, R0, 0x1F \n\
/* 0804a4aa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a4ac */ BEQ branch_0804a4c6 \n\
/* 0804a4ae */ LDR R0, [R2, 0xC] \n\
/* 0804a4b0 */ LDR R1, [R0, 0x8] \n\
/* 0804a4b2 */ LSLS R1, R1, 0xA \n\
/* 0804a4b4 */ LSRS R1, R1, 0x18 \n\
/* 0804a4b6 */ LDRB R0, [R2, 0x1] \n\
/* 0804a4b8 */ LSLS R0, R0, 0x19 \n\
/* 0804a4ba */ LSRS R0, R0, 0x19 \n\
/* 0804a4bc */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0804a4be */ CMP R1, R4 @ Check R1 - R4 \n\
/* 0804a4c0 */ BCS branch_0804a4c6 \n\
/* 0804a4c2 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804a4c4 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
 \n\
branch_0804a4c6: \n\
/* 0804a4c6 */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 0804a4c8 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804a4ca */ CMP R3, R5 @ Check R3 - R5 \n\
/* 0804a4cc */ BLT branch_0804a4a6 \n\
 \n\
branch_0804a4ce: \n\
/* 0804a4ce */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804a4d0 */ POP {R4-R6} \n\
/* 0804a4d2 */ POP {R1} \n\
/* 0804a4d4 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
