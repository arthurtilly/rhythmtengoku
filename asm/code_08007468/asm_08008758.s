asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start update_texture_loader_task \n\
/* 08008758 */ PUSH {R4, R5, LR} \n\
/* 0800875a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800875c */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0800875e */ LDRB R0, [R0] \n\
/* 08008760 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08008762 */ BNE branch_08008798 \n\
 \n\
branch_08008764: \n\
/* 08008764 */ LDR R0, [R5] \n\
/* 08008766 */ LDMIA R0!, {R4} \n\
/* 08008768 */ STR R0, [R5] \n\
/* 0800876a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800876c */ BEQ branch_08008794 \n\
/* 0800876e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08008770 */ BL func_080086c4 \n\
/* 08008774 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08008776 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08008778 */ BEQ branch_08008764 \n\
/* 0800877a */ LDR R0, [R4] \n\
/* 0800877c */ LDR R1, [R1, 0x4] \n\
/* 0800877e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08008780 */ LSLS R2, R2, 0x5 \n\
/* 08008782 */ ADDS R3, R5, 0x4 @ Set R3 to R5 + 0x4 \n\
/* 08008784 */ BL func_08008594 \n\
/* 08008788 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800878a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800878c */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0800878e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08008790 */ STRB R0, [R1] \n\
/* 08008792 */ B branch_080087a0 \n\
 \n\
branch_08008794: \n\
/* 08008794 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08008796 */ B branch_080087ae \n\
 \n\
branch_08008798: \n\
/* 08008798 */ ADDS R0, R5, 0x4 @ Set R0 to R5 + 0x4 \n\
/* 0800879a */ BL func_080085e4 \n\
/* 0800879e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
 \n\
branch_080087a0: \n\
/* 080087a0 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080087a2 */ BEQ branch_080087ac \n\
/* 080087a4 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080087a6 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 080087a8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080087aa */ STRB R0, [R1] \n\
 \n\
branch_080087ac: \n\
/* 080087ac */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080087ae: \n\
/* 080087ae */ POP {R4, R5} \n\
/* 080087b0 */ POP {R1} \n\
/* 080087b2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
