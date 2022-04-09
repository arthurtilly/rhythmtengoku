asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c508 \n\
/* 0800c508 */ PUSH {R4-R7, LR} \n\
/* 0800c50a */ SUB SP, 0x14 \n\
/* 0800c50c */ LDR R7, [SP, 0x28] \n\
/* 0800c50e */ ADD R6, SP, 0x4 \n\
/* 0800c510 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
/* 0800c512 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0800c514 */ LDRB R5, [R6] \n\
/* 0800c516 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 0800c518 */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0800c51a */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 0800c51c */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0800c51e */ STRB R4, [R6] \n\
/* 0800c520 */ LDR R4, =0x7fff \n\
/* 0800c522 */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 0800c524 */ LSLS R4, R4, 0x2 \n\
/* 0800c526 */ LDR R0, [SP, 0x4] \n\
/* 0800c528 */ LDR R1, =0xfffe0003 \n\
/* 0800c52a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800c52c */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0800c52e */ STR R0, [SP, 0x4] \n\
/* 0800c530 */ STR R2, [SP, 0x8] \n\
/* 0800c532 */ STR R3, [SP, 0xC] \n\
/* 0800c534 */ STR R7, [SP, 0x10] \n\
/* 0800c536 */ BL func_0800c3b8 \n\
/* 0800c53a */ LSLS R0, R0, 0x10 \n\
/* 0800c53c */ LSRS R0, R0, 0x10 \n\
/* 0800c53e */ LDR R1, =D_08936c24 \n\
/* 0800c540 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c542 */ STR R2, [SP] \n\
/* 0800c544 */ ADD R2, SP, 0x4 \n\
/* 0800c546 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800c548 */ BL func_08005b20 \n\
/* 0800c54c */ ADD SP, 0x14 \n\
/* 0800c54e */ POP {R4-R7} \n\
/* 0800c550 */ POP {R1} \n\
/* 0800c552 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
