asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b5d8 \n\
/* 0804b5d8 */ PUSH {LR} \n\
/* 0804b5da */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804b5dc */ BL func_0804b574 \n\
/* 0804b5e0 */ POP {R0} \n\
/* 0804b5e2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
