asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b30c \n\
/* 0800b30c */ PUSH {LR} \n\
/* 0800b30e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b310 */ BEQ branch_0800b316 \n\
/* 0800b312 */ STR R1, [R0, 0x40] \n\
/* 0800b314 */ STR R2, [R0, 0x44] \n\
 \n\
branch_0800b316: \n\
/* 0800b316 */ POP {R0} \n\
/* 0800b318 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
