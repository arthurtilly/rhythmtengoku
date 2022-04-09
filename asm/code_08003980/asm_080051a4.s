asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080051a4 \n\
/* 080051a4 */ PUSH {R4-R6, LR} \n\
/* 080051a6 */ LDR R4, [SP, 0x10] \n\
/* 080051a8 */ LDR R5, [SP, 0x14] \n\
/* 080051aa */ LDR R6, [SP, 0x18] \n\
/* 080051ac */ STR R1, [R0] \n\
/* 080051ae */ STRB R2, [R0, 0x6] \n\
/* 080051b0 */ STRH R3, [R0, 0x4] \n\
/* 080051b2 */ STRB R4, [R0, 0x7] \n\
/* 080051b4 */ STR R5, [R0, 0x8] \n\
/* 080051b6 */ STR R6, [R0, 0xC] \n\
/* 080051b8 */ BL func_080051c4 \n\
/* 080051bc */ POP {R4-R6} \n\
/* 080051be */ POP {R0} \n\
/* 080051c0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
