asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006a0c \n\
/* 08006a0c */ PUSH {R4-R7, LR} \n\
/* 08006a0e */ SUB SP, 0x10 \n\
/* 08006a10 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08006a12 */ LDRH R0, [R6, 0x1C] \n\
/* 08006a14 */ LSLS R0, R0, 0x14 \n\
/* 08006a16 */ LSRS R7, R0, 0x14 \n\
/* 08006a18 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08006a1a */ BNE branch_08006a80 \n\
/* 08006a1c */ LDR R5, [R6, 0x18] \n\
/* 08006a1e */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08006a20 */ BL func_0800699c \n\
/* 08006a24 */ LDR R0, [R6, 0x4] \n\
/* 08006a26 */ LDR R1, [R6, 0x10] \n\
/* 08006a28 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 08006a2a */ LDRSH R2, [R6, R3] \n\
/* 08006a2c */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 08006a2e */ MOVS R4, 0xE @ Set R4 to 0xE \n\
/* 08006a30 */ LDRSH R3, [R6, R4] \n\
/* 08006a32 */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 08006a34 */ LDRB R4, [R5] \n\
/* 08006a36 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08006a38 */ STR R4, [SP] \n\
/* 08006a3a */ LDRB R4, [R5, 0x1] \n\
/* 08006a3c */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08006a3e */ STR R4, [SP, 0x4] \n\
/* 08006a40 */ STR R7, [SP, 0x8] \n\
/* 08006a42 */ BL func_08005fe4 \n\
/* 08006a46 */ LDR R0, [R6, 0x14] \n\
/* 08006a48 */ LDRB R3, [R5] \n\
/* 08006a4a */ LDRB R1, [R5, 0x1] \n\
/* 08006a4c */ STR R1, [SP] \n\
/* 08006a4e */ LDR R1, [R6, 0x4] \n\
/* 08006a50 */ STR R1, [SP, 0x4] \n\
/* 08006a52 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08006a54 */ LDRSH R1, [R6, R2] \n\
/* 08006a56 */ STR R1, [SP, 0x8] \n\
/* 08006a58 */ MOVS R4, 0xE @ Set R4 to 0xE \n\
/* 08006a5a */ LDRSH R1, [R6, R4] \n\
/* 08006a5c */ STR R1, [SP, 0xC] \n\
/* 08006a5e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08006a60 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08006a62 */ BL func_0800620c \n\
/* 08006a66 */ LDR R2, [R6, 0x20] \n\
/* 08006a68 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08006a6a */ BEQ branch_08006a74 \n\
/* 08006a6c */ LDR R1, [R6, 0x24] \n\
/* 08006a6e */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08006a70 */ BL _call_via_r2 \n\
 \n\
branch_08006a74: \n\
/* 08006a74 */ LDRH R0, [R6, 0x1C] \n\
/* 08006a76 */ LDR R1, =0xfffff000 \n\
/* 08006a78 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08006a7a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08006a7c */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08006a7e */ STRH R1, [R6, 0x1C] \n\
 \n\
branch_08006a80: \n\
/* 08006a80 */ ADD SP, 0x10 \n\
/* 08006a82 */ POP {R4-R7} \n\
/* 08006a84 */ POP {R0} \n\
/* 08006a86 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
