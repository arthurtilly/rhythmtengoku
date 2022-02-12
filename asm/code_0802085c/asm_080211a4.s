asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080211a4 \n\
/* 080211a4 */ PUSH {LR} \n\
/* 080211a6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080211a8 */ BL func_0800c604 \n\
/* 080211ac */ BL func_0800c3b8 \n\
/* 080211b0 */ LSLS R0, R0, 0x10 \n\
/* 080211b2 */ LSRS R0, R0, 0x10 \n\
/* 080211b4 */ LDR R2, =D_089df1ac \n\
/* 080211b6 */ LDR R1, =D_030055d0 \n\
/* 080211b8 */ LDR R1, [R1] \n\
/* 080211ba */ LDRB R1, [R1] \n\
/* 080211bc */ LSLS R1, R1, 0x2 \n\
/* 080211be */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080211c0 */ LDR R1, [R1] \n\
/* 080211c2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080211c4 */ LSLS R2, R2, 0x6 \n\
/* 080211c6 */ BL func_08002ee0 \n\
/* 080211ca */ LDR R1, =(func_08021190 + 1) \n\
/* 080211cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080211ce */ BL func_08005d38 \n\
/* 080211d2 */ POP {R0} \n\
/* 080211d4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
