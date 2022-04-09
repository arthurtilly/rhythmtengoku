asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b31c \n\
/* 0800b31c */ PUSH {LR} \n\
/* 0800b31e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b320 */ BEQ branch_0800b326 \n\
/* 0800b322 */ STR R1, [R0, 0x48] \n\
/* 0800b324 */ STR R2, [R0, 0x4C] \n\
 \n\
branch_0800b326: \n\
/* 0800b326 */ POP {R0} \n\
/* 0800b328 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
