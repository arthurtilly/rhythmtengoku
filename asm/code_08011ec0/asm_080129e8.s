asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080129e8 \n\
/* 080129e8 */ PUSH {R4, LR} \n\
/* 080129ea */ LDR R0, =D_030046a4 \n\
/* 080129ec */ LDR R0, [R0] \n\
/* 080129ee */ MOVS R1, 0xD0 @ Set R1 to 0xD0 \n\
/* 080129f0 */ LSLS R1, R1, 0x2 \n\
/* 080129f2 */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 080129f4 */ LDR R3, =D_030046a8 \n\
/* 080129f6 */ LDR R1, [R3] \n\
/* 080129f8 */ MOVS R4, 0x9E @ Set R4 to 0x9E \n\
/* 080129fa */ LSLS R4, R4, 0x2 \n\
/* 080129fc */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 080129fe */ LDRB R0, [R0] \n\
/* 08012a00 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012a02 */ BNE branch_08012a3c \n\
/* 08012a04 */ LDR R0, =0x276 \n\
/* 08012a06 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08012a08 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08012a0a */ STRB R0, [R1] \n\
/* 08012a0c */ LDR R0, [R3] \n\
/* 08012a0e */ LDR R1, =0x279 \n\
/* 08012a10 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012a12 */ LDRB R0, [R0] \n\
/* 08012a14 */ STRB R0, [R2, 0x1] \n\
/* 08012a16 */ LDR R1, =D_089cdf24 \n\
/* 08012a18 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08012a1a */ LDRSB R0, [R2, R0] \n\
/* 08012a1c */ LSLS R0, R0, 0x3 \n\
/* 08012a1e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012a20 */ LDRB R0, [R0] \n\
/* 08012a22 */ LSLS R0, R0, 0x18 \n\
/* 08012a24 */ ASRS R0, R0, 0x18 \n\
/* 08012a26 */ STRH R0, [R2, 0x2] \n\
/* 08012a28 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08012a2a */ LDRSB R0, [R2, R0] \n\
/* 08012a2c */ LSLS R0, R0, 0x3 \n\
/* 08012a2e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012a30 */ LDRB R0, [R0, 0x1] \n\
/* 08012a32 */ LSLS R0, R0, 0x18 \n\
/* 08012a34 */ ASRS R0, R0, 0x18 \n\
/* 08012a36 */ STRH R0, [R2, 0x4] \n\
/* 08012a38 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08012a3a */ STRB R0, [R2] \n\
 \n\
branch_08012a3c: \n\
/* 08012a3c */ POP {R4} \n\
/* 08012a3e */ POP {R0} \n\
/* 08012a40 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
