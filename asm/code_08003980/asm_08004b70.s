asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004b70 \n\
/* 08004b70 */ PUSH {R4, LR} \n\
/* 08004b72 */ SUB SP, 0x4 \n\
/* 08004b74 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08004b76 */ STR R3, [SP] \n\
/* 08004b78 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004b7a */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08004b7c */ BL func_080049f0 \n\
/* 08004b80 */ ADD SP, 0x4 \n\
/* 08004b82 */ POP {R4} \n\
/* 08004b84 */ POP {R1} \n\
/* 08004b86 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
