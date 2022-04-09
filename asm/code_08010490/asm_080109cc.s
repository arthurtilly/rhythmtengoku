asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080109cc \n\
/* 080109cc */ PUSH {R4, LR} \n\
/* 080109ce */ MOVS R0, 0xE1 @ Set R0 to 0xE1 \n\
/* 080109d0 */ LSLS R0, R0, 0x4 \n\
/* 080109d2 */ BL func_0800b60c \n\
/* 080109d6 */ LDR R4, =D_030046a4 \n\
/* 080109d8 */ LDR R3, [R4] \n\
/* 080109da */ LDR R2, =D_030055a0 \n\
/* 080109dc */ LDRH R1, [R2, 0x2C] \n\
/* 080109de */ SUBS R1, R0, R1 @ Set R1 to R0 - R1 \n\
/* 080109e0 */ STRH R1, [R3, 0x16] \n\
/* 080109e2 */ STRH R0, [R2, 0x2C] \n\
/* 080109e4 */ STRH R0, [R3, 0x18] \n\
/* 080109e6 */ LDR R0, =0x80000e10 \n\
/* 080109e8 */ BL func_0800b60c \n\
/* 080109ec */ LDR R1, [R4] \n\
/* 080109ee */ STRH R0, [R1, 0x1A] \n\
/* 080109f0 */ POP {R4} \n\
/* 080109f2 */ POP {R0} \n\
/* 080109f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
