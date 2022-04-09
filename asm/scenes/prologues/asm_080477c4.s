asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080477c4 \n\
/* 080477c4 */ PUSH {LR} \n\
/* 080477c6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080477c8 */ BL func_0800c604 \n\
/* 080477cc */ BL func_0800c3b8 \n\
/* 080477d0 */ LSLS R0, R0, 0x10 \n\
/* 080477d2 */ LSRS R0, R0, 0x10 \n\
/* 080477d4 */ LDR R1, =D_089ed6b8 \n\
/* 080477d6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080477d8 */ LSLS R2, R2, 0x6 \n\
/* 080477da */ BL func_08002ee0 \n\
/* 080477de */ LDR R1, =func_080477b4 \n\
/* 080477e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080477e2 */ BL func_08005d38 \n\
/* 080477e6 */ POP {R0} \n\
/* 080477e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
