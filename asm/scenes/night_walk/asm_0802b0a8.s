asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b0a8 \n\
/* 0802b0a8 */ PUSH {LR} \n\
/* 0802b0aa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802b0ac */ BL func_0800c604 \n\
/* 0802b0b0 */ BL func_0800c3b8 \n\
/* 0802b0b4 */ LSLS R0, R0, 0x10 \n\
/* 0802b0b6 */ LSRS R0, R0, 0x10 \n\
/* 0802b0b8 */ LDR R1, =D_089e3384 \n\
/* 0802b0ba */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802b0bc */ LSLS R2, R2, 0x6 \n\
/* 0802b0be */ BL func_08002ee0 \n\
/* 0802b0c2 */ LDR R1, =func_0802b098 \n\
/* 0802b0c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b0c6 */ BL func_08005d38 \n\
/* 0802b0ca */ POP {R0} \n\
/* 0802b0cc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
