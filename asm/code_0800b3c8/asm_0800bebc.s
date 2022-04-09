asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bebc \n\
/* 0800bebc */ PUSH {LR} \n\
/* 0800bebe */ LDR R1, =D_030053c0 \n\
/* 0800bec0 */ STRB R0, [R1, 0x1C] \n\
/* 0800bec2 */ BL func_0800be64 \n\
/* 0800bec6 */ POP {R0} \n\
/* 0800bec8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
