asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013068 \n\
/* 08013068 */ PUSH {LR} \n\
/* 0801306a */ LDR R0, =D_030046a4 \n\
/* 0801306c */ LDR R1, [R0] \n\
/* 0801306e */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 08013070 */ LSLS R0, R0, 0x2 \n\
/* 08013072 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08013074 */ LDR R0, =D_03005380 \n\
/* 08013076 */ LDR R0, [R0] \n\
/* 08013078 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801307a */ LDRSH R1, [R1, R2] \n\
/* 0801307c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801307e */ BL func_0804d770 \n\
/* 08013082 */ POP {R0} \n\
/* 08013084 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
