asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e980 \n\
/* 0801e980 */ PUSH {LR} \n\
/* 0801e982 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e984 */ BL func_0800c604 \n\
/* 0801e988 */ BL func_0800c3b8 \n\
/* 0801e98c */ LSLS R0, R0, 0x10 \n\
/* 0801e98e */ LSRS R0, R0, 0x10 \n\
/* 0801e990 */ LDR R1, =D_089de07c \n\
/* 0801e992 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801e994 */ LSLS R2, R2, 0x6 \n\
/* 0801e996 */ BL func_08002ee0 \n\
/* 0801e99a */ LDR R1, =func_0801e954 \n\
/* 0801e99c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e99e */ BL func_08005d38 \n\
/* 0801e9a2 */ POP {R0} \n\
/* 0801e9a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
