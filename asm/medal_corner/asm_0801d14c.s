asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d14c \n\
/* 0801d14c */ LDR R1, =D_030046a4 \n\
/* 0801d14e */ LDR R1, [R1] \n\
/* 0801d150 */ LDR R1, [R1, 0x14] \n\
/* 0801d152 */ LDR R1, [R1, 0xC] \n\
/* 0801d154 */ LSLS R0, R0, 0x4 \n\
/* 0801d156 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801d158 */ LDR R0, [R0, 0x4] \n\
/* 0801d15a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
