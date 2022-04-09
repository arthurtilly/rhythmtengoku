asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018a50 \n\
/* 08018a50 */ PUSH {LR} \n\
/* 08018a52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018a54 */ BL func_0800c604 \n\
/* 08018a58 */ BL func_0800c3b8 \n\
/* 08018a5c */ LSLS R0, R0, 0x10 \n\
/* 08018a5e */ LSRS R0, R0, 0x10 \n\
/* 08018a60 */ LDR R1, =D_089d7654 \n\
/* 08018a62 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08018a64 */ LSLS R2, R2, 0x6 \n\
/* 08018a66 */ BL func_08002ee0 \n\
/* 08018a6a */ LDR R1, =func_08018a24 \n\
/* 08018a6c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018a6e */ BL func_08005d38 \n\
/* 08018a72 */ POP {R0} \n\
/* 08018a74 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
