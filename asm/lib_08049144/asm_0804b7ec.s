asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b7ec \n\
/* 0804b7ec */ PUSH {LR} \n\
/* 0804b7ee */ LSLS R2, R1, 0x10 \n\
/* 0804b7f0 */ LSRS R2, R2, 0x10 \n\
/* 0804b7f2 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0804b7f4 */ BL func_0804b734 \n\
/* 0804b7f8 */ POP {R0} \n\
/* 0804b7fa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
