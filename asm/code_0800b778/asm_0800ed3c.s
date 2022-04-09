asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ed3c \n\
/* 0800ed3c */ PUSH {LR} \n\
/* 0800ed3e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800ed40 */ LDR R0, =D_030053c0 \n\
/* 0800ed42 */ LDR R0, [R0, 0x4] \n\
/* 0800ed44 */ LSLS R1, R1, 0x10 \n\
/* 0800ed46 */ LSRS R1, R1, 0x10 \n\
/* 0800ed48 */ BL func_080028d8 \n\
/* 0800ed4c */ POP {R0} \n\
/* 0800ed4e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
