asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045984 \n\
/* 08045984 */ PUSH {LR} \n\
/* 08045986 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045988 */ BL func_0800c604 \n\
/* 0804598c */ BL func_08006d80 \n\
/* 08045990 */ BL func_0800c3b8 \n\
/* 08045994 */ LSLS R0, R0, 0x10 \n\
/* 08045996 */ LSRS R0, R0, 0x10 \n\
/* 08045998 */ LDR R1, =D_089eaadc \n\
/* 0804599a */ BL func_080087b4 \n\
/* 0804599e */ LDR R1, =func_08045954 \n\
/* 080459a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080459a2 */ BL func_08005d38 \n\
/* 080459a6 */ POP {R0} \n\
/* 080459a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
