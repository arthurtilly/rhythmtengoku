asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a0f0 \n\
/* 0800a0f0 */ PUSH {R4, LR} \n\
/* 0800a0f2 */ SUB SP, 0x4 \n\
/* 0800a0f4 */ LDR R4, [SP, 0xC] \n\
/* 0800a0f6 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 0800a0f8 */ STR R4, [SP] \n\
/* 0800a0fa */ BL func_0800a090 \n\
/* 0800a0fe */ ADD SP, 0x4 \n\
/* 0800a100 */ POP {R4} \n\
/* 0800a102 */ POP {R0} \n\
/* 0800a104 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
