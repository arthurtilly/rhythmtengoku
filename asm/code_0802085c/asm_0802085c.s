asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802085c \n\
/* 0802085c */ PUSH {LR} \n\
/* 0802085e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020860 */ BL func_0800c604 \n\
/* 08020864 */ BL func_08017578 \n\
/* 08020868 */ LDR R0, =D_03004b10 \n\
/* 0802086a */ MOVS R1, 0xEC @ Set R1 to 0xEC \n\
/* 0802086c */ LSLS R1, R1, 0x1 \n\
/* 0802086e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020870 */ MOVS R1, 0xF8 @ Set R1 to 0xF8 \n\
/* 08020872 */ LSLS R1, R1, 0x7 \n\
/* 08020874 */ STRH R1, [R0] \n\
/* 08020876 */ POP {R0} \n\
/* 08020878 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
