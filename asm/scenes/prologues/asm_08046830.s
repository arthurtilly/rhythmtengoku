asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046830 \n\
/* 08046830 */ PUSH {LR} \n\
/* 08046832 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046834 */ BL func_0800c604 \n\
/* 08046838 */ BL func_0800c3b8 \n\
/* 0804683c */ LSLS R0, R0, 0x10 \n\
/* 0804683e */ LSRS R0, R0, 0x10 \n\
/* 08046840 */ LDR R1, =D_089ec048 \n\
/* 08046842 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046844 */ LSLS R2, R2, 0x6 \n\
/* 08046846 */ BL func_08002ee0 \n\
/* 0804684a */ LDR R1, =func_08046820 \n\
/* 0804684c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804684e */ BL func_08005d38 \n\
/* 08046852 */ POP {R0} \n\
/* 08046854 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
