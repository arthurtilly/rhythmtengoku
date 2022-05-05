asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003e64 \n\
/* 08003e64 */ PUSH {R4, LR} \n\
/* 08003e66 */ SUB SP, 0x4 \n\
/* 08003e68 */ LDR R0, =func_08000a00 \n\
/* 08003e6a */ LDR R4, =D_030005c8 \n\
/* 08003e6c */ LDR R2, =func_08000a00_end \n\
/* 08003e6e */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 08003e70 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08003e72 */ LSLS R1, R1, 0x1 \n\
/* 08003e74 */ STR R1, [SP] \n\
/* 08003e76 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08003e78 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08003e7a */ BL func_0800186c \n\
/* 08003e7e */ LDR R0, =D_03004af0 \n\
/* 08003e80 */ STR R4, [R0] \n\
/* 08003e82 */ LDR R1, =D_030053b0 \n\
/* 08003e84 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08003e86 */ STRB R0, [R1] \n\
/* 08003e88 */ ADD SP, 0x4 \n\
/* 08003e8a */ POP {R4} \n\
/* 08003e8c */ POP {R0} \n\
/* 08003e8e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
