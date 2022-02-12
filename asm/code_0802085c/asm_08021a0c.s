asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021a0c \n\
/* 08021a0c */ PUSH {R4-R6, LR} \n\
/* 08021a0e */ LDR R4, =D_030055d0 \n\
/* 08021a10 */ LDR R0, [R4] \n\
/* 08021a12 */ ADDS R0, 0x35 @ Add 0x35 to R0 \n\
/* 08021a14 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08021a16 */ STRB R6, [R0] \n\
/* 08021a18 */ LDR R5, =D_03005380 \n\
/* 08021a1a */ LDR R0, [R5] \n\
/* 08021a1c */ LDR R1, [R4] \n\
/* 08021a1e */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08021a20 */ LDRSH R1, [R1, R2] \n\
/* 08021a22 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021a24 */ BL func_0804d8c4 \n\
/* 08021a28 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08021a2a */ BL func_0800e044 \n\
/* 08021a2e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021a30 */ BL func_0800e030 \n\
/* 08021a34 */ LDR R0, [R5] \n\
/* 08021a36 */ LDR R1, [R4] \n\
/* 08021a38 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08021a3a */ LDRSH R1, [R1, R2] \n\
/* 08021a3c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08021a3e */ BL func_0804d770 \n\
/* 08021a42 */ LDR R0, [R4] \n\
/* 08021a44 */ STRB R6, [R0] \n\
/* 08021a46 */ BL func_080221cc \n\
/* 08021a4a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08021a4c */ BL func_080173c4 \n\
/* 08021a50 */ POP {R4-R6} \n\
/* 08021a52 */ POP {R0} \n\
/* 08021a54 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
