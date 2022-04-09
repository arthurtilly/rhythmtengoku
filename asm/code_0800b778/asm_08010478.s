asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010478 \n\
/* 08010478 */ PUSH {LR} \n\
/* 0801047a */ LDR R0, =D_030046a8 \n\
/* 0801047c */ LDR R0, [R0] \n\
/* 0801047e */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08010480 */ MOVS R1, 0xB5 @ Set R1 to 0xB5 \n\
/* 08010482 */ LSLS R1, R1, 0x2 \n\
/* 08010484 */ BL func_0800096c \n\
/* 08010488 */ POP {R0} \n\
/* 0801048a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
