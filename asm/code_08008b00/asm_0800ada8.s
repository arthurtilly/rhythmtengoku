asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ada8 \n\
/* 0800ada8 */ PUSH {LR} \n\
/* 0800adaa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800adac */ BEQ branch_0800adb0 \n\
/* 0800adae */ STR R1, [R0, 0x4C] \n\
 \n\
branch_0800adb0: \n\
/* 0800adb0 */ POP {R0} \n\
/* 0800adb2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
