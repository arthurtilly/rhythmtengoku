asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021e40 \n\
/* 08021e40 */ PUSH {LR} \n\
/* 08021e42 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08021e44 */ LDR R0, =D_03005380 \n\
/* 08021e46 */ LDR R0, [R0] \n\
/* 08021e48 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021e4a */ LDRSH R1, [R1, R2] \n\
/* 08021e4c */ BL func_0804d504 \n\
/* 08021e50 */ POP {R0} \n\
/* 08021e52 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
