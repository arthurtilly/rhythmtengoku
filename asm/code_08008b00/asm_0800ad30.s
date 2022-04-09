asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ad30 \n\
/* 0800ad30 */ PUSH {LR} \n\
/* 0800ad32 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ad34 */ BEQ branch_0800ad3a \n\
/* 0800ad36 */ STR R1, [R0, 0x44] \n\
/* 0800ad38 */ STR R2, [R0, 0x48] \n\
 \n\
branch_0800ad3a: \n\
/* 0800ad3a */ POP {R0} \n\
/* 0800ad3c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
