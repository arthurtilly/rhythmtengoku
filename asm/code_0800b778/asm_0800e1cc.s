asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e1cc \n\
/* 0800e1cc */ PUSH {R4-R6, LR} \n\
/* 0800e1ce */ SUB SP, 0x10 \n\
/* 0800e1d0 */ LDR R5, [SP, 0x20] \n\
/* 0800e1d2 */ LSLS R1, R1, 0x10 \n\
/* 0800e1d4 */ LSRS R1, R1, 0x10 \n\
/* 0800e1d6 */ ADD R4, SP, 0x4 \n\
/* 0800e1d8 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800e1da */ STRH R0, [R4] \n\
/* 0800e1dc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800e1de */ STRH R1, [R0, 0x2] \n\
/* 0800e1e0 */ STRH R2, [R0, 0x4] \n\
/* 0800e1e2 */ STRH R3, [R0, 0x6] \n\
/* 0800e1e4 */ STRH R5, [R0, 0x8] \n\
/* 0800e1e6 */ BL get_current_mem_id \n\
/* 0800e1ea */ LSLS R0, R0, 0x10 \n\
/* 0800e1ec */ LSRS R0, R0, 0x10 \n\
/* 0800e1ee */ LDR R1, =D_08936ba4 \n\
/* 0800e1f0 */ STR R6, [SP] \n\
/* 0800e1f2 */ ADD R2, SP, 0x4 \n\
/* 0800e1f4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e1f6 */ BL start_new_task \n\
/* 0800e1fa */ ADD SP, 0x10 \n\
/* 0800e1fc */ POP {R4-R6} \n\
/* 0800e1fe */ POP {R1} \n\
/* 0800e200 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
