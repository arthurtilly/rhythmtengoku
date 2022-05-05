asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d55c \n\
/* 0804d55c */ PUSH {R4-R7, LR} \n\
/* 0804d55e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0804d560 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0804d562 */ PUSH {R6, R7} \n\
/* 0804d564 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d566 */ LDR R0, [SP, 0x1C] \n\
/* 0804d568 */ LSLS R2, R2, 0x10 \n\
/* 0804d56a */ LSRS R7, R2, 0x10 \n\
/* 0804d56c */ LSLS R3, R3, 0x10 \n\
/* 0804d56e */ LSRS R3, R3, 0x10 \n\
/* 0804d570 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0804d572 */ LSLS R0, R0, 0x10 \n\
/* 0804d574 */ LSRS R0, R0, 0x10 \n\
/* 0804d576 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804d578 */ LDR R2, =D_03004428 \n\
/* 0804d57a */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0804d57c */ STRB R0, [R2] \n\
/* 0804d57e */ LSLS R1, R1, 0x10 \n\
/* 0804d580 */ ASRS R6, R1, 0x10 \n\
/* 0804d582 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d584 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804d586 */ BL func_0804cc68 \n\
/* 0804d58a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d58c */ BNE branch_0804d5c4 \n\
/* 0804d58e */ LDR R1, [R5, 0x8] \n\
/* 0804d590 */ LSLS R0, R6, 0x4 \n\
/* 0804d592 */ SUBS R0, R0, R6 @ Set R0 to R0 - R6 \n\
/* 0804d594 */ LSLS R4, R0, 0x2 \n\
/* 0804d596 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 0804d598 */ STRH R7, [R1, 0x2] \n\
/* 0804d59a */ LDR R0, [R5, 0x8] \n\
/* 0804d59c */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0804d59e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804d5a0 */ STRH R1, [R0, 0x4] \n\
/* 0804d5a2 */ LDR R0, [R5, 0x8] \n\
/* 0804d5a4 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0804d5a6 */ LDRH R0, [R0, 0x6] \n\
/* 0804d5a8 */ CMP R0, R8 @ Compare R0 and R8 \n\
/* 0804d5aa */ BEQ branch_0804d5c4 \n\
/* 0804d5ac */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d5ae */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804d5b0 */ BL func_0804d05c \n\
/* 0804d5b4 */ LDR R0, [R5, 0x8] \n\
/* 0804d5b6 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0804d5b8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804d5ba */ STRH R1, [R0, 0x6] \n\
/* 0804d5bc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d5be */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804d5c0 */ BL func_0804cf38 \n\
 \n\
branch_0804d5c4: \n\
/* 0804d5c4 */ POP {R3, R4} \n\
/* 0804d5c6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804d5c8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804d5ca */ POP {R4-R7} \n\
/* 0804d5cc */ POP {R0} \n\
/* 0804d5ce */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
