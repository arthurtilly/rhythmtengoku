asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045ef8 \n\
/* 08045ef8 */ PUSH {LR} \n\
/* 08045efa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045efc */ BL func_0800c604 \n\
/* 08045f00 */ BL func_0800c3b8 \n\
/* 08045f04 */ LSLS R0, R0, 0x10 \n\
/* 08045f06 */ LSRS R0, R0, 0x10 \n\
/* 08045f08 */ LDR R1, =D_089eb1cc \n\
/* 08045f0a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08045f0c */ LSLS R2, R2, 0x6 \n\
/* 08045f0e */ BL func_08002ee0 \n\
/* 08045f12 */ LDR R1, =func_08045ee8 \n\
/* 08045f14 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045f16 */ BL func_08005d38 \n\
/* 08045f1a */ POP {R0} \n\
/* 08045f1c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
