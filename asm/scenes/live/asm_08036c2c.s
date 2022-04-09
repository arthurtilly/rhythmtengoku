asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036c2c \n\
/* 08036c2c */ PUSH {LR} \n\
/* 08036c2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036c30 */ BL func_0800c604 \n\
/* 08036c34 */ BL func_0800c3b8 \n\
/* 08036c38 */ LSLS R0, R0, 0x10 \n\
/* 08036c3a */ LSRS R0, R0, 0x10 \n\
/* 08036c3c */ LDR R1, =D_089e5c40 \n\
/* 08036c3e */ BL func_080087b4 \n\
/* 08036c42 */ LDR R1, =func_08036bfc \n\
/* 08036c44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036c46 */ BL func_08005d38 \n\
/* 08036c4a */ POP {R0} \n\
/* 08036c4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
