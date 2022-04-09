asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045aa0 \n\
/* 08045aa0 */ PUSH {LR} \n\
/* 08045aa2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045aa4 */ BL func_0800c604 \n\
/* 08045aa8 */ BL func_0800c3b8 \n\
/* 08045aac */ LSLS R0, R0, 0x10 \n\
/* 08045aae */ LSRS R0, R0, 0x10 \n\
/* 08045ab0 */ LDR R1, =D_089eac1c \n\
/* 08045ab2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08045ab4 */ LSLS R2, R2, 0x6 \n\
/* 08045ab6 */ BL func_08002ee0 \n\
/* 08045aba */ LDR R1, =func_08045a90 \n\
/* 08045abc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045abe */ BL func_08005d38 \n\
/* 08045ac2 */ POP {R0} \n\
/* 08045ac4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
