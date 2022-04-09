asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080019a4 \n\
/* 080019a4 */ PUSH {R4, R5, LR} \n\
/* 080019a6 */ LDR R1, =0xfff \n\
/* 080019a8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080019aa */ LSRS R3, R0, 0x4 \n\
/* 080019ac */ ADDS R2, R3, 0x1 @ Set R2 to R3 + 0x1 \n\
/* 080019ae */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 080019b0 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 080019b2 */ MOVS R4, 0xF @ Set R4 to 0xF \n\
/* 080019b4 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 080019b6 */ LDR R5, =D_08935fcc \n\
/* 080019b8 */ LSLS R3, R3, 0x1 \n\
/* 080019ba */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 080019bc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080019be */ LDRSH R1, [R3, R0] \n\
/* 080019c0 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080019c2 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 080019c4 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 080019c6 */ LSLS R2, R2, 0x1 \n\
/* 080019c8 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 080019ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080019cc */ LDRSH R1, [R2, R3] \n\
/* 080019ce */ MULS R1, R4 @ Multiply R1 by R4 \n\
/* 080019d0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080019d2 */ LSRS R0, R0, 0x4 \n\
/* 080019d4 */ POP {R4, R5} \n\
/* 080019d6 */ POP {R1} \n\
/* 080019d8 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
