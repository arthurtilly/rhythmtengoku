asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b28c \n\
/* 0802b28c */ PUSH {R4, LR} \n\
/* 0802b28e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802b290 */ MOVS R4, 0xA0 @ Set R4 to 0xA0 \n\
/* 0802b292 */ LSLS R4, R4, 0x1 \n\
/* 0802b294 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0802b296 */ LDRSH R0, [R2, R1] \n\
/* 0802b298 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0802b29a */ LDRSH R1, [R2, R3] \n\
/* 0802b29c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802b29e */ LSLS R0, R0, 0x8 \n\
/* 0802b2a0 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0802b2a2 */ LDRSH R1, [R2, R3] \n\
/* 0802b2a4 */ BL __divsi3 \n\
/* 0802b2a8 */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 0802b2aa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802b2ac */ POP {R4} \n\
/* 0802b2ae */ POP {R1} \n\
/* 0802b2b0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
