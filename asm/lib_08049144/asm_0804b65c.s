asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b65c \n\
/* 0804b65c */ PUSH {LR} \n\
/* 0804b65e */ LDR R0, [R0, 0x4] \n\
/* 0804b660 */ LSLS R1, R2, 0x10 \n\
/* 0804b662 */ ASRS R1, R1, 0x10 \n\
/* 0804b664 */ BL func_0804ade4 \n\
/* 0804b668 */ POP {R0} \n\
/* 0804b66a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
