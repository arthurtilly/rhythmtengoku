asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004cac \n\
/* 08004cac */ PUSH {R4, LR} \n\
/* 08004cae */ SUB SP, 0x8 \n\
/* 08004cb0 */ LSLS R2, R2, 0x10 \n\
/* 08004cb2 */ ASRS R2, R2, 0x10 \n\
/* 08004cb4 */ LSLS R3, R3, 0x10 \n\
/* 08004cb6 */ ASRS R3, R3, 0x10 \n\
/* 08004cb8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08004cba */ STR R4, [SP] \n\
/* 08004cbc */ STR R4, [SP, 0x4] \n\
/* 08004cbe */ BL func_08004ccc \n\
/* 08004cc2 */ ADD SP, 0x8 \n\
/* 08004cc4 */ POP {R4} \n\
/* 08004cc6 */ POP {R1} \n\
/* 08004cc8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
