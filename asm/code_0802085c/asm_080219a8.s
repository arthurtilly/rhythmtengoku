asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080219a8 \n\
/* 080219a8 */ PUSH {R4, R5, LR} \n\
/* 080219aa */ LDR R4, =D_030055d0 \n\
/* 080219ac */ LDR R0, [R4] \n\
/* 080219ae */ ADDS R0, 0x34 @ Add 0x34 to R0 \n\
/* 080219b0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080219b2 */ STRB R1, [R0] \n\
/* 080219b4 */ LDR R5, =D_03005380 \n\
/* 080219b6 */ LDR R0, [R5] \n\
/* 080219b8 */ LDR R1, [R4] \n\
/* 080219ba */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080219bc */ LDRSH R1, [R1, R2] \n\
/* 080219be */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080219c0 */ BL func_0804d8c4 \n\
/* 080219c4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080219c6 */ BL func_0800e030 \n\
/* 080219ca */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080219cc */ BL func_0800e044 \n\
/* 080219d0 */ LDR R0, [R5] \n\
/* 080219d2 */ LDR R1, [R4] \n\
/* 080219d4 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080219d6 */ LDRSH R1, [R1, R2] \n\
/* 080219d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080219da */ BL func_0804d770 \n\
/* 080219de */ LDR R1, [R4] \n\
/* 080219e0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080219e2 */ STRB R0, [R1] \n\
/* 080219e4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080219e6 */ BL func_0800c128 \n\
/* 080219ea */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 080219ec */ LSLS R4, R4, 0x1 \n\
/* 080219ee */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 080219f0 */ BL func_0800c3a4 \n\
/* 080219f4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080219f6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080219f8 */ BL func_0800c138 \n\
/* 080219fc */ POP {R4, R5} \n\
/* 080219fe */ POP {R0} \n\
/* 08021a00 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
