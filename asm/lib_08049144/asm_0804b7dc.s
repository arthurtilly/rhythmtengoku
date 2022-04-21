asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b7dc \n\
/* 0804b7dc */ PUSH {LR} \n\
/* 0804b7de */ LSLS R2, R1, 0x10 \n\
/* 0804b7e0 */ LSRS R2, R2, 0x10 \n\
/* 0804b7e2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0804b7e4 */ BL func_0804b734 \n\
/* 0804b7e8 */ POP {R0} \n\
/* 0804b7ea */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
