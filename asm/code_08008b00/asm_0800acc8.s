asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800acc8 \n\
/* 0800acc8 */ PUSH {LR} \n\
/* 0800acca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800accc */ BEQ branch_0800acd2 \n\
/* 0800acce */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0800acd0 */ STRB R1, [R0] \n\
 \n\
branch_0800acd2: \n\
/* 0800acd2 */ POP {R0} \n\
/* 0800acd4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
