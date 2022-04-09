asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080128b8 \n\
/* 080128b8 */ PUSH {R4-R7, LR} \n\
/* 080128ba */ LDR R0, =D_030046a4 \n\
/* 080128bc */ LDR R1, [R0] \n\
/* 080128be */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 080128c0 */ LSLS R0, R0, 0x2 \n\
/* 080128c2 */ ADDS R7, R1, R0 @ Set R7 to R1 + R0 \n\
/* 080128c4 */ LDR R6, =D_089cdf24 \n\
/* 080128c6 */ LDR R0, =0x453 \n\
/* 080128c8 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 080128ca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080128cc */ STRB R0, [R2] \n\
/* 080128ce */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080128d0 */ LDR R0, =0x453 \n\
/* 080128d2 */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
 \n\
branch_080128d4: \n\
/* 080128d4 */ LDR R0, =D_030046a8 \n\
/* 080128d6 */ LDR R0, [R0] \n\
/* 080128d8 */ LDR R1, =0x246 \n\
/* 080128da */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080128dc */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080128de */ LDRB R0, [R0] \n\
/* 080128e0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080128e2 */ BNE branch_08012906 \n\
/* 080128e4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080128e6 */ LDRSB R0, [R6, R0] \n\
/* 080128e8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080128ea */ LDRSB R1, [R6, R1] \n\
/* 080128ec */ BL func_0801317c \n\
/* 080128f0 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 080128f2 */ BNE branch_08012906 \n\
/* 080128f4 */ MOVS R1, 0x8A @ Set R1 to 0x8A \n\
/* 080128f6 */ LSLS R1, R1, 0x1 \n\
/* 080128f8 */ ADDS R0, R7, R1 @ Set R0 to R7 + R1 \n\
/* 080128fa */ LDRB R1, [R5] \n\
/* 080128fc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080128fe */ STRB R4, [R0] \n\
/* 08012900 */ LDRB R0, [R5] \n\
/* 08012902 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08012904 */ STRB R0, [R5] \n\
 \n\
branch_08012906: \n\
/* 08012906 */ ADDS R6, 0x8 @ Add 0x8 to R6 \n\
/* 08012908 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801290a */ CMP R4, 0x2F @ Compare R4 and 0x2F \n\
/* 0801290c */ BLS branch_080128d4 \n\
/* 0801290e */ POP {R4-R7} \n\
/* 08012910 */ POP {R0} \n\
/* 08012912 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
