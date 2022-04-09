asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006c08 \n\
/* 08006c08 */ PUSH {R4-R6, LR} \n\
/* 08006c0a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08006c0c */ LDR R5, [R4] \n\
/* 08006c0e */ LDR R6, [R5, 0x18] \n\
/* 08006c10 */ LDRH R1, [R4, 0x6] \n\
/* 08006c12 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08006c14 */ LDRSH R0, [R4, R2] \n\
/* 08006c16 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006c18 */ BLE branch_08006c1e \n\
/* 08006c1a */ SUBS R0, R1, 0x1 @ Set R0 to R1 - 0x1 \n\
/* 08006c1c */ STRH R0, [R4, 0x6] \n\
 \n\
branch_08006c1e: \n\
/* 08006c1e */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 08006c20 */ LDRSH R0, [R4, R3] \n\
/* 08006c22 */ LDRB R1, [R6] \n\
/* 08006c24 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08006c26 */ BGE branch_08006c2e \n\
/* 08006c28 */ LDRH R0, [R4, 0xA] \n\
/* 08006c2a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08006c2c */ STRH R0, [R4, 0xA] \n\
 \n\
branch_08006c2e: \n\
/* 08006c2e */ LDRH R1, [R4, 0x8] \n\
/* 08006c30 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08006c32 */ LDRSH R0, [R4, R2] \n\
/* 08006c34 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006c36 */ BLE branch_08006c3c \n\
/* 08006c38 */ SUBS R0, R1, 0x1 @ Set R0 to R1 - 0x1 \n\
/* 08006c3a */ STRH R0, [R4, 0x8] \n\
 \n\
branch_08006c3c: \n\
/* 08006c3c */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 08006c3e */ LDRSH R0, [R4, R3] \n\
/* 08006c40 */ LDRB R1, [R6, 0x1] \n\
/* 08006c42 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08006c44 */ BGE branch_08006c4c \n\
/* 08006c46 */ LDRH R0, [R4, 0xC] \n\
/* 08006c48 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08006c4a */ STRH R0, [R4, 0xC] \n\
 \n\
branch_08006c4c: \n\
/* 08006c4c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08006c4e */ BL func_080069d4 \n\
/* 08006c52 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006c54 */ BL func_08006b30 \n\
/* 08006c58 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08006c5a */ LDRSH R1, [R4, R2] \n\
/* 08006c5c */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08006c5e */ LDRSH R0, [R4, R3] \n\
/* 08006c60 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08006c62 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08006c64 */ LDRSH R2, [R4, R0] \n\
/* 08006c66 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08006c68 */ LDRSH R0, [R4, R3] \n\
/* 08006c6a */ SUBS R0, R2, R0 @ Set R0 to R2 - R0 \n\
/* 08006c6c */ LDRB R2, [R6] \n\
/* 08006c6e */ CMP R1, R2 @ Check R1 - R2 \n\
/* 08006c70 */ BNE branch_08006c9c \n\
/* 08006c72 */ LDRB R6, [R6, 0x1] \n\
/* 08006c74 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08006c76 */ BNE branch_08006c9c \n\
/* 08006c78 */ LDRH R0, [R5, 0x1C] \n\
/* 08006c7a */ LDR R1, =0xfffff000 \n\
/* 08006c7c */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08006c7e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08006c80 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08006c82 */ STRH R1, [R5, 0x1C] \n\
/* 08006c84 */ LDR R2, [R5, 0x20] \n\
/* 08006c86 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08006c88 */ BEQ branch_08006c92 \n\
/* 08006c8a */ LDR R1, [R5, 0x24] \n\
/* 08006c8c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08006c8e */ BL _call_via_r2 \n\
 \n\
branch_08006c92: \n\
/* 08006c92 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08006c94 */ B branch_08006c9e \n\
\n\
.ltorg \n\
 \n\
branch_08006c9c: \n\
/* 08006c9c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08006c9e: \n\
/* 08006c9e */ POP {R4-R6} \n\
/* 08006ca0 */ POP {R1} \n\
/* 08006ca2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
