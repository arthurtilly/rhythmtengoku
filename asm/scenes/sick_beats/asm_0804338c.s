asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804338c \n\
/* 0804338c */ PUSH {LR} \n\
/* 0804338e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08043390 */ BL func_0800c604 \n\
/* 08043394 */ BL func_0800c3b8 \n\
/* 08043398 */ LSLS R0, R0, 0x10 \n\
/* 0804339a */ LSRS R0, R0, 0x10 \n\
/* 0804339c */ LDR R1, =D_089e9104 \n\
/* 0804339e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080433a0 */ LSLS R2, R2, 0x6 \n\
/* 080433a2 */ BL func_08002ee0 \n\
/* 080433a6 */ LDR R1, =func_0804337c \n\
/* 080433a8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080433aa */ BL func_08005d38 \n\
/* 080433ae */ POP {R0} \n\
/* 080433b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
