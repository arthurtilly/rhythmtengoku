asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c5b8 \n\
/* 0800c5b8 */ PUSH {R4-R7, LR} \n\
/* 0800c5ba */ SUB SP, 0x14 \n\
/* 0800c5bc */ LDR R7, [SP, 0x28] \n\
/* 0800c5be */ ADD R6, SP, 0x4 \n\
/* 0800c5c0 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
/* 0800c5c2 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0800c5c4 */ LDRB R5, [R6] \n\
/* 0800c5c6 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 0800c5c8 */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0800c5ca */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 0800c5cc */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0800c5ce */ STRB R4, [R6] \n\
/* 0800c5d0 */ STR R2, [SP, 0xC] \n\
/* 0800c5d2 */ LSLS R3, R3, 0x2 \n\
/* 0800c5d4 */ LDR R0, [SP, 0x4] \n\
/* 0800c5d6 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0800c5d8 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800c5da */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 0800c5dc */ STR R0, [SP, 0x4] \n\
/* 0800c5de */ STR R7, [SP, 0x8] \n\
/* 0800c5e0 */ STR R1, [SP, 0x10] \n\
/* 0800c5e2 */ BL get_current_mem_id \n\
/* 0800c5e6 */ LSLS R0, R0, 0x10 \n\
/* 0800c5e8 */ LSRS R0, R0, 0x10 \n\
/* 0800c5ea */ LDR R1, =D_08936c44 \n\
/* 0800c5ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c5ee */ STR R2, [SP] \n\
/* 0800c5f0 */ ADD R2, SP, 0x4 \n\
/* 0800c5f2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800c5f4 */ BL start_new_task \n\
/* 0800c5f8 */ ADD SP, 0x14 \n\
/* 0800c5fa */ POP {R4-R7} \n\
/* 0800c5fc */ POP {R1} \n\
/* 0800c5fe */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
