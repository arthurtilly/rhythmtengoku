asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b5e4 \n\
/* 0804b5e4 */ PUSH {LR} \n\
/* 0804b5e6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804b5e8 */ BL func_0804b574 \n\
/* 0804b5ec */ POP {R0} \n\
/* 0804b5ee */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
