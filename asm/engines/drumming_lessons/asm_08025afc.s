asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025afc \n\
/* 08025afc */ PUSH {R4, R5, LR} \n\
/* 08025afe */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08025b00 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08025b02 */ LDR R5, =gCurrentEngineData \n\
/* 08025b04 */ LDR R1, [R5] \n\
/* 08025b06 */ LDR R3, =0x000013f8 \n\
/* 08025b08 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08025b0a */ LDRB R0, [R0] \n\
/* 08025b0c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025b0e */ BNE branch_08025b6a \n\
/* 08025b10 */ LSLS R3, R2, 0x1 \n\
/* 08025b12 */ MOVS R2, 0x9F @ Set R2 to 0x9F \n\
/* 08025b14 */ LSLS R2, R2, 0x5 \n\
/* 08025b16 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08025b18 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08025b1a */ LDRH R0, [R0] \n\
/* 08025b1c */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08025b1e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025b20 */ BEQ branch_08025b32 \n\
/* 08025b22 */ LDR R0, =0x000013d4 \n\
/* 08025b24 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08025b26 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08025b28 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08025b2a */ LDR R0, [R2] \n\
/* 08025b2c */ LDR R1, [R1] \n\
/* 08025b2e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08025b30 */ STR R0, [R2] \n\
 \n\
branch_08025b32: \n\
/* 08025b32 */ LDR R1, [R5] \n\
/* 08025b34 */ LDR R2, =0x000013ec \n\
/* 08025b36 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08025b38 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08025b3a */ LDRH R0, [R0] \n\
/* 08025b3c */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08025b3e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025b40 */ BEQ branch_08025b52 \n\
/* 08025b42 */ LDR R3, =0x000013d4 \n\
/* 08025b44 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 08025b46 */ LDR R0, =0x000013dc \n\
/* 08025b48 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08025b4a */ LDR R0, [R2] \n\
/* 08025b4c */ LDR R1, [R1] \n\
/* 08025b4e */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08025b50 */ STR R0, [R2] \n\
 \n\
branch_08025b52: \n\
/* 08025b52 */ LDR R0, [R5] \n\
/* 08025b54 */ LDR R4, =0x000013d4 \n\
/* 08025b56 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08025b58 */ LDR R0, [R0] \n\
/* 08025b5a */ LDR R1, =0xffffff00 \n\
/* 08025b5c */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08025b5e */ LSLS R2, R2, 0x3 \n\
/* 08025b60 */ BL clamp_int32 \n\
/* 08025b64 */ LDR R1, [R5] \n\
/* 08025b66 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08025b68 */ STR R0, [R1] \n\
 \n\
branch_08025b6a: \n\
/* 08025b6a */ POP {R4, R5} \n\
/* 08025b6c */ POP {R0} \n\
/* 08025b6e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
