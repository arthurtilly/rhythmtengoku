asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a030 \n\
/* 0800a030 */ PUSH {R4-R7, LR} \n\
/* 0800a032 */ SUB SP, 0x1C \n\
/* 0800a034 */ LDR R4, [SP, 0x30] \n\
/* 0800a036 */ LDR R5, [SP, 0x34] \n\
/* 0800a038 */ LDR R6, [SP, 0x38] \n\
/* 0800a03a */ LDR R7, [SP, 0x3C] \n\
/* 0800a03c */ STR R7, [SP, 0xC] \n\
/* 0800a03e */ LDR R7, [SP, 0x40] \n\
/* 0800a040 */ STR R7, [SP, 0x14] \n\
/* 0800a042 */ LDR R7, [SP, 0x44] \n\
/* 0800a044 */ STR R7, [SP, 0x18] \n\
/* 0800a046 */ STR R4, [SP] \n\
/* 0800a048 */ STR R5, [SP, 0x4] \n\
/* 0800a04a */ STR R6, [SP, 0x8] \n\
/* 0800a04c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800a04e */ STR R4, [SP, 0x10] \n\
/* 0800a050 */ BL func_08009de4 \n\
/* 0800a054 */ ADD SP, 0x1C \n\
/* 0800a056 */ POP {R4-R7} \n\
/* 0800a058 */ POP {R1} \n\
/* 0800a05a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
