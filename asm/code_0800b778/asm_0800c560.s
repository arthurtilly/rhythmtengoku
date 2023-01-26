asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c560 \n\
/* 0800c560 */ PUSH {R4-R7, LR} \n\
/* 0800c562 */ SUB SP, 0x14 \n\
/* 0800c564 */ LDR R7, [SP, 0x28] \n\
/* 0800c566 */ ADD R6, SP, 0x4 \n\
/* 0800c568 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
/* 0800c56a */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0800c56c */ LDRB R5, [R6] \n\
/* 0800c56e */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 0800c570 */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0800c572 */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 0800c574 */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0800c576 */ STRB R4, [R6] \n\
/* 0800c578 */ LDR R4, =0x7fff \n\
/* 0800c57a */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 0800c57c */ LSLS R4, R4, 0x2 \n\
/* 0800c57e */ LDR R0, [SP, 0x4] \n\
/* 0800c580 */ LDR R1, =0xfffe0003 \n\
/* 0800c582 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800c584 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0800c586 */ STR R0, [SP, 0x4] \n\
/* 0800c588 */ STR R2, [SP, 0x8] \n\
/* 0800c58a */ STR R3, [SP, 0xC] \n\
/* 0800c58c */ STR R7, [SP, 0x10] \n\
/* 0800c58e */ BL get_current_mem_id \n\
/* 0800c592 */ LSLS R0, R0, 0x10 \n\
/* 0800c594 */ LSRS R0, R0, 0x10 \n\
/* 0800c596 */ LDR R1, =D_08936c34 \n\
/* 0800c598 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c59a */ STR R2, [SP] \n\
/* 0800c59c */ ADD R2, SP, 0x4 \n\
/* 0800c59e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800c5a0 */ BL start_new_task \n\
/* 0800c5a4 */ ADD SP, 0x14 \n\
/* 0800c5a6 */ POP {R4-R7} \n\
/* 0800c5a8 */ POP {R1} \n\
/* 0800c5aa */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
