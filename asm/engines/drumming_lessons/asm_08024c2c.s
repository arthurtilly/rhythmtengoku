asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024c2c \n\
/* 08024c2c */ PUSH {R4, R5, LR} \n\
/* 08024c2e */ LDR R0, =gCurrentEngineData \n\
/* 08024c30 */ LDR R4, [R0] \n\
/* 08024c32 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08024c34 */ LSLS R0, R0, 0x2 \n\
/* 08024c36 */ ADDS R5, R4, R0 @ Set R5 to R4 + R0 \n\
/* 08024c38 */ MOVS R1, 0x12 @ Set R1 to 0x12 \n\
/* 08024c3a */ LDRSH R0, [R5, R1] \n\
/* 08024c3c */ LDR R2, =0x00000376 \n\
/* 08024c3e */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08024c40 */ BL func_08024bfc \n\
/* 08024c44 */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 08024c46 */ LDRSH R0, [R5, R1] \n\
/* 08024c48 */ LDR R2, =0x00000377 \n\
/* 08024c4a */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08024c4c */ BL func_08024bfc \n\
/* 08024c50 */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 08024c52 */ LDRSH R0, [R5, R1] \n\
/* 08024c54 */ MOVS R2, 0xDE @ Set R2 to 0xDE \n\
/* 08024c56 */ LSLS R2, R2, 0x2 \n\
/* 08024c58 */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08024c5a */ BL func_08024bfc \n\
/* 08024c5e */ MOVS R1, 0x1A @ Set R1 to 0x1A \n\
/* 08024c60 */ LDRSH R0, [R5, R1] \n\
/* 08024c62 */ LDR R2, =0x0000037a \n\
/* 08024c64 */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08024c66 */ BL func_08024bfc \n\
/* 08024c6a */ MOVS R1, 0x1C @ Set R1 to 0x1C \n\
/* 08024c6c */ LDRSH R0, [R5, R1] \n\
/* 08024c6e */ LDR R2, =0x0000037b \n\
/* 08024c70 */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08024c72 */ BL func_08024bfc \n\
/* 08024c76 */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 08024c78 */ LDRSH R0, [R5, R1] \n\
/* 08024c7a */ MOVS R2, 0xDF @ Set R2 to 0xDF \n\
/* 08024c7c */ LSLS R2, R2, 0x2 \n\
/* 08024c7e */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08024c80 */ BL func_08024bfc \n\
/* 08024c84 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08024c86 */ LDRSH R0, [R5, R1] \n\
/* 08024c88 */ LDR R2, =0x00000379 \n\
/* 08024c8a */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 08024c8c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08024c8e */ BL func_08024bfc \n\
/* 08024c92 */ POP {R4, R5} \n\
/* 08024c94 */ POP {R0} \n\
/* 08024c96 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
