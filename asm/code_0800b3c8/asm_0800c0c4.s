asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c0c4 \n\
/* 0800c0c4 */ PUSH {LR} \n\
/* 0800c0c6 */ LDR R1, =D_030053c0 \n\
/* 0800c0c8 */ STRH R0, [R1, 0x20] \n\
/* 0800c0ca */ BL func_0800c060 \n\
/* 0800c0ce */ POP {R0} \n\
/* 0800c0d0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
