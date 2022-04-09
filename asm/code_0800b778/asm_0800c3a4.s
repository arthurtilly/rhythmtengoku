asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c3a4 \n\
/* 0800c3a4 */ PUSH {LR} \n\
/* 0800c3a6 */ LSLS R0, R0, 0x8 \n\
/* 0800c3a8 */ LDR R1, =D_030053c0 \n\
/* 0800c3aa */ LDR R1, [R1, 0x14] \n\
/* 0800c3ac */ BL func_08007b80 \n\
/* 0800c3b0 */ POP {R1} \n\
/* 0800c3b2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
