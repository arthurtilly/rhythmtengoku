asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033b48 \n\
/* 08033b48 */ PUSH {R4, R5, LR} \n\
/* 08033b4a */ LDR R1, =D_03004b10 \n\
/* 08033b4c */ LDRH R3, [R1, 0x16] \n\
/* 08033b4e */ LDR R0, =gCurrentEngineData \n\
/* 08033b50 */ LDR R2, [R0] \n\
/* 08033b52 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08033b54 */ ADDS R0, 0x94 @ Add 0x94 to R0 \n\
/* 08033b56 */ LDRH R4, [R0] \n\
/* 08033b58 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08033b5a */ LDRSH R0, [R0, R5] \n\
/* 08033b5c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08033b5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08033b60 */ BGE branch_08033b7c \n\
/* 08033b62 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08033b64 */ ADDS R0, 0x92 @ Add 0x92 to R0 \n\
/* 08033b66 */ LSLS R1, R3, 0x10 \n\
/* 08033b68 */ ASRS R1, R1, 0x10 \n\
/* 08033b6a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033b6c */ LDRSH R0, [R0, R2] \n\
/* 08033b6e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08033b70 */ BLE branch_08033b92 \n\
/* 08033b72 */ B branch_08033b8c \n\
\n\
.ltorg \n\
 \n\
branch_08033b7c: \n\
/* 08033b7c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08033b7e */ ADDS R0, 0x92 @ Add 0x92 to R0 \n\
/* 08033b80 */ LSLS R1, R3, 0x10 \n\
/* 08033b82 */ ASRS R1, R1, 0x10 \n\
/* 08033b84 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033b86 */ LDRSH R0, [R0, R2] \n\
/* 08033b88 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08033b8a */ BGE branch_08033b92 \n\
 \n\
branch_08033b8c: \n\
/* 08033b8c */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 08033b8e */ LSLS R0, R0, 0x10 \n\
/* 08033b90 */ LSRS R3, R0, 0x10 \n\
 \n\
branch_08033b92: \n\
/* 08033b92 */ STRH R3, [R5, 0x16] \n\
/* 08033b94 */ POP {R4, R5} \n\
/* 08033b96 */ POP {R0} \n\
/* 08033b98 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
