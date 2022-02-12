asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020f98 \n\
/* 08020f98 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 08020f9a */ STRB R2, [R1] \n\
/* 08020f9c */ LDR R0, =D_030055d0 \n\
/* 08020f9e */ LDR R0, [R0] \n\
/* 08020fa0 */ LDR R1, =0x00000862 \n\
/* 08020fa2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020fa4 */ STRB R3, [R0] \n\
/* 08020fa6 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
