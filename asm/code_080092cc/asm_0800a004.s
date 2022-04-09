asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a004 \n\
/* 0800a004 */ PUSH {R4-R7, LR} \n\
/* 0800a006 */ SUB SP, 0x1C \n\
/* 0800a008 */ LDR R4, [SP, 0x34] \n\
/* 0800a00a */ LDR R5, [SP, 0x38] \n\
/* 0800a00c */ LDR R6, [SP, 0x3C] \n\
/* 0800a00e */ ADD R7, SP, 0x30 \n\
/* 0800a010 */ STR R7, [SP] \n\
/* 0800a012 */ STR R4, [SP, 0x4] \n\
/* 0800a014 */ STR R5, [SP, 0x8] \n\
/* 0800a016 */ STR R6, [SP, 0xC] \n\
/* 0800a018 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0800a01a */ STR R4, [SP, 0x10] \n\
/* 0800a01c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800a01e */ STR R4, [SP, 0x14] \n\
/* 0800a020 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 0800a022 */ STR R4, [SP, 0x18] \n\
/* 0800a024 */ BL func_08009de4 \n\
/* 0800a028 */ ADD SP, 0x1C \n\
/* 0800a02a */ POP {R4-R7} \n\
/* 0800a02c */ POP {R1} \n\
/* 0800a02e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
