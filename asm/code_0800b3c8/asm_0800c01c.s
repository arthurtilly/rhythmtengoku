asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c01c \n\
/* 0800c01c */ PUSH {LR} \n\
/* 0800c01e */ LDR R0, =D_030053c0 \n\
/* 0800c020 */ LDR R0, [R0, 0x4] \n\
/* 0800c022 */ BL func_08002828 \n\
/* 0800c026 */ POP {R0} \n\
/* 0800c028 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
