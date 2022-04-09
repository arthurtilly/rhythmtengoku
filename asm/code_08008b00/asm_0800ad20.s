asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ad20 \n\
/* 0800ad20 */ PUSH {LR} \n\
/* 0800ad22 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ad24 */ BEQ branch_0800ad2a \n\
/* 0800ad26 */ STR R1, [R0, 0x3C] \n\
/* 0800ad28 */ STR R2, [R0, 0x40] \n\
 \n\
branch_0800ad2a: \n\
/* 0800ad2a */ POP {R0} \n\
/* 0800ad2c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
