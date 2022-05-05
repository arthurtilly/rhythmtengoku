asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a434 \n\
/* 0804a434 */ PUSH {R4-R6, LR} \n\
/* 0804a436 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0804a438 */ NEGS R5, R5 @ Set R5 to -R5 \n\
/* 0804a43a */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0804a43c */ LSLS R4, R4, 0x9 \n\
/* 0804a43e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804a440 */ LDR R0, =D_030064bc \n\
/* 0804a442 */ LDR R2, [R0] \n\
/* 0804a444 */ LDR R0, =D_03005b8c \n\
/* 0804a446 */ LDRH R0, [R0] \n\
/* 0804a448 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0804a44a */ BGE branch_0804a47c \n\
/* 0804a44c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
 \n\
branch_0804a44e: \n\
/* 0804a44e */ LDRB R0, [R2] \n\
/* 0804a450 */ LSLS R0, R0, 0x1F \n\
/* 0804a452 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a454 */ BEQ branch_0804a474 \n\
/* 0804a456 */ LDRB R0, [R2, 0x1C] \n\
/* 0804a458 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0804a45a */ BNE branch_0804a474 \n\
/* 0804a45c */ LDR R0, [R2, 0xC] \n\
/* 0804a45e */ LDR R1, [R0, 0x8] \n\
/* 0804a460 */ LSLS R1, R1, 0xA \n\
/* 0804a462 */ LSRS R1, R1, 0x18 \n\
/* 0804a464 */ LDRB R0, [R2, 0x1] \n\
/* 0804a466 */ LSLS R0, R0, 0x19 \n\
/* 0804a468 */ LSRS R0, R0, 0x19 \n\
/* 0804a46a */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0804a46c */ CMP R1, R4 @ Check R1 - R4 \n\
/* 0804a46e */ BCS branch_0804a474 \n\
/* 0804a470 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804a472 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
 \n\
branch_0804a474: \n\
/* 0804a474 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804a476 */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 0804a478 */ CMP R3, R6 @ Check R3 - R6 \n\
/* 0804a47a */ BLT branch_0804a44e \n\
 \n\
branch_0804a47c: \n\
/* 0804a47c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804a47e */ POP {R4-R6} \n\
/* 0804a480 */ POP {R1} \n\
/* 0804a482 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
