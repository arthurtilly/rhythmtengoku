asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018a24 \n\
/* 08018a24 */ PUSH {LR} \n\
/* 08018a26 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018a28 */ BL func_0800c604 \n\
/* 08018a2c */ BL func_0800c3b8 \n\
/* 08018a30 */ LSLS R0, R0, 0x10 \n\
/* 08018a32 */ LSRS R0, R0, 0x10 \n\
/* 08018a34 */ LDR R1, =D_089d7684 \n\
/* 08018a36 */ BL func_080087b4 \n\
/* 08018a3a */ LDR R1, =func_0800bd04 \n\
/* 08018a3c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018a3e */ BL func_08005d38 \n\
/* 08018a42 */ POP {R0} \n\
/* 08018a44 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
