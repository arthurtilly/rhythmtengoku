asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d968 \n\
/* 0801d968 */ LDR R1, =D_030053c0 \n\
/* 0801d96a */ STR R0, [R1, 0x30] \n\
/* 0801d96c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d96e */ STR R0, [R1, 0x34] \n\
/* 0801d970 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
