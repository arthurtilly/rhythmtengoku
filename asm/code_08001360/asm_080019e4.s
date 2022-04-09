asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080019e4 \n\
/* 080019e4 */ PUSH {R4, R5, LR} \n\
/* 080019e6 */ LDR R1, =0xfff \n\
/* 080019e8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080019ea */ LSRS R3, R0, 0x4 \n\
/* 080019ec */ ADDS R2, R3, 0x1 @ Set R2 to R3 + 0x1 \n\
/* 080019ee */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 080019f0 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 080019f2 */ MOVS R4, 0xF @ Set R4 to 0xF \n\
/* 080019f4 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 080019f6 */ LDR R5, =D_089361cc \n\
/* 080019f8 */ LSLS R3, R3, 0x1 \n\
/* 080019fa */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 080019fc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080019fe */ LDRSH R1, [R3, R0] \n\
/* 08001a00 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08001a02 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 08001a04 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08001a06 */ LSLS R2, R2, 0x1 \n\
/* 08001a08 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 08001a0a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08001a0c */ LDRSH R1, [R2, R3] \n\
/* 08001a0e */ MULS R1, R4 @ Multiply R1 by R4 \n\
/* 08001a10 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08001a12 */ LSRS R0, R0, 0x4 \n\
/* 08001a14 */ POP {R4, R5} \n\
/* 08001a16 */ POP {R1} \n\
/* 08001a18 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
