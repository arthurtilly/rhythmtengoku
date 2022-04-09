asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018a80 \n\
/* 08018a80 */ PUSH {LR} \n\
/* 08018a82 */ BL func_0800c3b8 \n\
/* 08018a86 */ LSLS R0, R0, 0x10 \n\
/* 08018a88 */ LSRS R0, R0, 0x10 \n\
/* 08018a8a */ LDR R1, =func_08018a50 \n\
/* 08018a8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018a8e */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08018a90 */ BL func_0800856c \n\
/* 08018a94 */ BL func_0800e0ec \n\
/* 08018a98 */ POP {R0} \n\
/* 08018a9a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
