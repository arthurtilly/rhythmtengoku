asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080029b0 \n\
/* 080029b0 */ PUSH {LR} \n\
/* 080029b2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080029b4 */ BEQ branch_080029bc \n\
/* 080029b6 */ BL func_0804b5a0 \n\
/* 080029ba */ B branch_080029be \n\
 \n\
branch_080029bc: \n\
/* 080029bc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080029be: \n\
/* 080029be */ POP {R1} \n\
/* 080029c0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
