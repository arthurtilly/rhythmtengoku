asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020c24 \n\
/* 08020c24 */ PUSH {LR} \n\
/* 08020c26 */ LDR R1, =D_030055d0 \n\
/* 08020c28 */ LDR R1, [R1] \n\
/* 08020c2a */ ADDS R1, 0x38 @ Add 0x38 to R1 \n\
/* 08020c2c */ LDRB R1, [R1] \n\
/* 08020c2e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08020c30 */ BL func_08020a4c \n\
/* 08020c34 */ POP {R0} \n\
/* 08020c36 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
