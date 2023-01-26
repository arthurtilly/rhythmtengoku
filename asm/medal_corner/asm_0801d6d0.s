asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d6d0 \n\
/* 0801d6d0 */ LDR R0, =D_03001558 \n\
/* 0801d6d2 */ LDRB R0, [R0] \n\
/* 0801d6d4 */ LSLS R0, R0, 0x18 \n\
/* 0801d6d6 */ ASRS R0, R0, 0x18 \n\
/* 0801d6d8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
