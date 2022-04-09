asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ae0c \n\
/* 0800ae0c */ PUSH {LR} \n\
/* 0800ae0e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ae10 */ BEQ branch_0800ae16 \n\
/* 0800ae12 */ ADDS R0, 0x55 @ Add 0x55 to R0 \n\
/* 0800ae14 */ STRB R1, [R0] \n\
 \n\
branch_0800ae16: \n\
/* 0800ae16 */ POP {R0} \n\
/* 0800ae18 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
