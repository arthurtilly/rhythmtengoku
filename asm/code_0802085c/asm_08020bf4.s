asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020bf4 \n\
/* 08020bf4 */ PUSH {LR} \n\
/* 08020bf6 */ LDR R1, =D_030055d0 \n\
/* 08020bf8 */ LDR R1, [R1] \n\
/* 08020bfa */ ADDS R1, 0x38 @ Add 0x38 to R1 \n\
/* 08020bfc */ LDRB R1, [R1] \n\
/* 08020bfe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020c00 */ BL func_08020a4c \n\
/* 08020c04 */ POP {R0} \n\
/* 08020c06 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
