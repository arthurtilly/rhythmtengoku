asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c4b0 \n\
/* 0800c4b0 */ PUSH {R4-R7, LR} \n\
/* 0800c4b2 */ SUB SP, 0x14 \n\
/* 0800c4b4 */ LDR R7, [SP, 0x28] \n\
/* 0800c4b6 */ ADD R6, SP, 0x4 \n\
/* 0800c4b8 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
/* 0800c4ba */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0800c4bc */ LDRB R5, [R6] \n\
/* 0800c4be */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 0800c4c0 */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0800c4c2 */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 0800c4c4 */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0800c4c6 */ STRB R4, [R6] \n\
/* 0800c4c8 */ LDR R4, =0x7fff \n\
/* 0800c4ca */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 0800c4cc */ LSLS R4, R4, 0x2 \n\
/* 0800c4ce */ LDR R0, [SP, 0x4] \n\
/* 0800c4d0 */ LDR R1, =0xfffe0003 \n\
/* 0800c4d2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800c4d4 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0800c4d6 */ STR R0, [SP, 0x4] \n\
/* 0800c4d8 */ STR R2, [SP, 0x8] \n\
/* 0800c4da */ STR R3, [SP, 0xC] \n\
/* 0800c4dc */ STR R7, [SP, 0x10] \n\
/* 0800c4de */ BL get_current_mem_id \n\
/* 0800c4e2 */ LSLS R0, R0, 0x10 \n\
/* 0800c4e4 */ LSRS R0, R0, 0x10 \n\
/* 0800c4e6 */ LDR R1, =D_08936c14 \n\
/* 0800c4e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c4ea */ STR R2, [SP] \n\
/* 0800c4ec */ ADD R2, SP, 0x4 \n\
/* 0800c4ee */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800c4f0 */ BL start_new_task \n\
/* 0800c4f4 */ ADD SP, 0x14 \n\
/* 0800c4f6 */ POP {R4-R7} \n\
/* 0800c4f8 */ POP {R1} \n\
/* 0800c4fa */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
