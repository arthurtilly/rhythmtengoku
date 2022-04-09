asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ad98 \n\
/* 0800ad98 */ PUSH {LR} \n\
/* 0800ad9a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ad9c */ BEQ branch_0800ada2 \n\
/* 0800ad9e */ STR R1, [R0, 0x4C] \n\
/* 0800ada0 */ STR R2, [R0, 0x50] \n\
 \n\
branch_0800ada2: \n\
/* 0800ada2 */ POP {R0} \n\
/* 0800ada4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
