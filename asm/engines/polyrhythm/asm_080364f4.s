asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080364f4 \n\
/* 080364f4 */ PUSH {R4-R7, LR} \n\
/* 080364f6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080364f8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080364fa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080364fc */ PUSH {R5-R7} \n\
/* 080364fe */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08036500 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08036502 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036504 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08036506 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08036508 */ BLT branch_0803655c \n\
/* 0803650a */ LDR R1, =gCurrentEngineData \n\
/* 0803650c */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0803650e */ MOVS R7, 0x84 @ Set R7 to 0x84 \n\
/* 08036510 */ LSLS R7, R7, 0x1 \n\
/* 08036512 */ MOVS R6, 0x7 @ Set R6 to 0x7 \n\
 \n\
branch_08036514: \n\
/* 08036514 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08036516 */ LDR R0, [R1] \n\
/* 08036518 */ ADDS R4, R0, R7 @ Set R4 to R0 + R7 \n\
/* 0803651a */ LDRB R1, [R4] \n\
/* 0803651c */ LSLS R0, R1, 0x1F \n\
/* 0803651e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036520 */ BEQ branch_08036552 \n\
/* 08036522 */ LSRS R0, R1, 0x7 \n\
/* 08036524 */ CMP R0, R9 @ Compare R0 and R9 \n\
/* 08036526 */ BNE branch_08036552 \n\
/* 08036528 */ LDR R1, [R4, 0x14] \n\
/* 0803652a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803652c */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0803652e */ ASRS R0, R0, 0x4 \n\
/* 08036530 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08036532 */ BEQ branch_08036548 \n\
/* 08036534 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08036536 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08036538 */ BNE branch_08036552 \n\
/* 0803653a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803653c */ BL func_080365f8 \n\
/* 08036540 */ STR R0, [R4, 0x10] \n\
/* 08036542 */ B branch_08036552 \n\
\n\
.ltorg \n\
 \n\
branch_08036548: \n\
/* 08036548 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803654a */ BL func_08036b48 \n\
/* 0803654e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08036550 */ ADD R8, R0 @ Add R0 to R8 \n\
 \n\
branch_08036552: \n\
/* 08036552 */ ADDS R7, 0x3C @ Add 0x3C to R7 \n\
/* 08036554 */ SUBS R6, 0x1 @ Subtract 0x1 from R6 \n\
/* 08036556 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08036558 */ BGE branch_08036514 \n\
/* 0803655a */ MOV R0, R8 @ Set R0 to R8 \n\
 \n\
branch_0803655c: \n\
/* 0803655c */ POP {R3-R5} \n\
/* 0803655e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08036560 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08036562 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08036564 */ POP {R4-R7} \n\
/* 08036566 */ POP {R1} \n\
/* 08036568 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
