asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006ce8 \n\
/* 08006ce8 */ PUSH {R4-R7, LR} \n\
/* 08006cea */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08006cec */ LDR R5, [R4] \n\
/* 08006cee */ LDR R6, [R5, 0x18] \n\
/* 08006cf0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08006cf2 */ BL func_080069d4 \n\
/* 08006cf6 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 08006cf8 */ LDRSH R3, [R4, R0] \n\
/* 08006cfa */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 08006cfc */ LDRSH R2, [R4, R1] \n\
/* 08006cfe */ MOVS R7, 0xC @ Set R7 to 0xC \n\
/* 08006d00 */ LDRSH R1, [R4, R7] \n\
/* 08006d02 */ MOVS R7, 0x8 @ Set R7 to 0x8 \n\
/* 08006d04 */ LDRSH R0, [R4, R7] \n\
/* 08006d06 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08006d08 */ CMP R3, R2 @ Check R3 - R2 \n\
/* 08006d0a */ BNE branch_08006d30 \n\
/* 08006d0c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08006d0e */ BNE branch_08006d30 \n\
/* 08006d10 */ LDRH R1, [R5, 0x1C] \n\
/* 08006d12 */ LDR R0, =0xfffff000 \n\
/* 08006d14 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006d16 */ STRH R0, [R5, 0x1C] \n\
/* 08006d18 */ LDR R2, [R5, 0x28] \n\
/* 08006d1a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08006d1c */ BEQ branch_08006d26 \n\
/* 08006d1e */ LDR R1, [R5, 0x2C] \n\
/* 08006d20 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08006d22 */ BL _call_via_r2 \n\
 \n\
branch_08006d26: \n\
/* 08006d26 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08006d28 */ B branch_08006d78 \n\
\n\
.ltorg \n\
 \n\
branch_08006d30: \n\
/* 08006d30 */ LDRB R0, [R6] \n\
/* 08006d32 */ LSRS R1, R0, 0x1 \n\
/* 08006d34 */ LDRB R0, [R6, 0x1] \n\
/* 08006d36 */ LSRS R2, R0, 0x1 \n\
/* 08006d38 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08006d3a */ LDRSH R0, [R4, R3] \n\
/* 08006d3c */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08006d3e */ BGE branch_08006d46 \n\
/* 08006d40 */ LDRH R0, [R4, 0x6] \n\
/* 08006d42 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08006d44 */ STRH R0, [R4, 0x6] \n\
 \n\
branch_08006d46: \n\
/* 08006d46 */ MOVS R7, 0xA @ Set R7 to 0xA \n\
/* 08006d48 */ LDRSH R0, [R4, R7] \n\
/* 08006d4a */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08006d4c */ BLE branch_08006d54 \n\
/* 08006d4e */ LDRH R0, [R4, 0xA] \n\
/* 08006d50 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08006d52 */ STRH R0, [R4, 0xA] \n\
 \n\
branch_08006d54: \n\
/* 08006d54 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08006d56 */ LDRSH R0, [R4, R1] \n\
/* 08006d58 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 08006d5a */ BGE branch_08006d62 \n\
/* 08006d5c */ LDRH R0, [R4, 0x8] \n\
/* 08006d5e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08006d60 */ STRH R0, [R4, 0x8] \n\
 \n\
branch_08006d62: \n\
/* 08006d62 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 08006d64 */ LDRSH R0, [R4, R3] \n\
/* 08006d66 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 08006d68 */ BLE branch_08006d70 \n\
/* 08006d6a */ LDRH R0, [R4, 0xC] \n\
/* 08006d6c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08006d6e */ STRH R0, [R4, 0xC] \n\
 \n\
branch_08006d70: \n\
/* 08006d70 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006d72 */ BL func_08006b30 \n\
/* 08006d76 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08006d78: \n\
/* 08006d78 */ POP {R4-R7} \n\
/* 08006d7a */ POP {R1} \n\
/* 08006d7c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
