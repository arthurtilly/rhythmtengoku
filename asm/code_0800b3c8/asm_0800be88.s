asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800be88 \n\
/* 0800be88 */ PUSH {LR} \n\
/* 0800be8a */ LDR R1, =D_030053c0 \n\
/* 0800be8c */ STRH R0, [R1, 0xE] \n\
/* 0800be8e */ BL func_0800be64 \n\
/* 0800be92 */ POP {R0} \n\
/* 0800be94 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
