asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020c0c \n\
/* 08020c0c */ PUSH {LR} \n\
/* 08020c0e */ LDR R1, =D_030055d0 \n\
/* 08020c10 */ LDR R1, [R1] \n\
/* 08020c12 */ ADDS R1, 0x38 @ Add 0x38 to R1 \n\
/* 08020c14 */ LDRB R1, [R1] \n\
/* 08020c16 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08020c18 */ BL func_08020a4c \n\
/* 08020c1c */ POP {R0} \n\
/* 08020c1e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
