asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017b98 \n\
/* 08017b98 */ PUSH {R4-R6, LR} \n\
/* 08017b9a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08017b9c */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 08017b9e */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 08017ba0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08017ba2 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 08017ba4 */ LDRH R0, [R1] \n\
/* 08017ba6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08017ba8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08017baa */ STRH R0, [R1] \n\
/* 08017bac */ LDR R0, =D_030046a4 \n\
/* 08017bae */ LDR R0, [R0] \n\
/* 08017bb0 */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08017bb2 */ STRB R2, [R0] \n\
/* 08017bb4 */ LDRB R1, [R5, 0xA] \n\
/* 08017bb6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08017bb8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08017bba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017bbc */ BEQ branch_08017bd0 \n\
/* 08017bbe */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 08017bc0 */ LDRSB R0, [R5, R0] \n\
/* 08017bc2 */ BL func_0800c3a4 \n\
/* 08017bc6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08017bc8 */ B branch_08017bd4 \n\
\n\
.ltorg \n\
 \n\
branch_08017bd0: \n\
/* 08017bd0 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 08017bd2 */ LDRSB R2, [R5, R2] \n\
 \n\
branch_08017bd4: \n\
/* 08017bd4 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
/* 08017bd6 */ ADDS R6, 0x48 @ Add 0x48 to R6 \n\
/* 08017bd8 */ LDRB R3, [R6] \n\
/* 08017bda */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08017bdc */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08017bde */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017be0 */ BNE branch_08017c3c \n\
/* 08017be2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017be4 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 08017be6 */ LDRH R1, [R0] \n\
/* 08017be8 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 08017bea */ LDRH R0, [R0] \n\
/* 08017bec */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08017bee */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08017bf0 */ BLE branch_08017c3c \n\
/* 08017bf2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08017bf4 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 08017bf6 */ STRB R0, [R6] \n\
/* 08017bf8 */ LDR R2, [R5, 0x28] \n\
/* 08017bfa */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08017bfc */ BEQ branch_08017c06 \n\
/* 08017bfe */ LDR R1, [R4, 0x64] \n\
/* 08017c00 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017c02 */ BL _call_via_r2 \n\
 \n\
branch_08017c06: \n\
/* 08017c06 */ LDR R0, =D_030046a4 \n\
/* 08017c08 */ LDR R0, [R0] \n\
/* 08017c0a */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08017c0c */ LDRB R0, [R0] \n\
/* 08017c0e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017c10 */ BNE branch_08017c20 \n\
/* 08017c12 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017c14 */ ADDS R0, 0x68 @ Add 0x68 to R0 \n\
/* 08017c16 */ LDRB R0, [R0] \n\
/* 08017c18 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08017c1a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08017c1c */ BL func_08017928 \n\
 \n\
branch_08017c20: \n\
/* 08017c20 */ LDR R0, [R4, 0x60] \n\
/* 08017c22 */ BL func_08016e54 \n\
/* 08017c26 */ LDRB R1, [R5, 0xA] \n\
/* 08017c28 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08017c2a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08017c2c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017c2e */ BEQ branch_08017c3c \n\
/* 08017c30 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017c32 */ BL func_08017b44 \n\
/* 08017c36 */ B branch_08017c62 \n\
\n\
.ltorg \n\
 \n\
branch_08017c3c: \n\
/* 08017c3c */ LDR R5, [R5, 0x18] \n\
/* 08017c3e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08017c40 */ BEQ branch_08017c62 \n\
/* 08017c42 */ LDR R1, [R4, 0x64] \n\
/* 08017c44 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017c46 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 08017c48 */ LDRH R2, [R0] \n\
/* 08017c4a */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 08017c4c */ LDRH R3, [R0] \n\
/* 08017c4e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017c50 */ BL _call_via_r5 \n\
/* 08017c54 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017c56 */ BEQ branch_08017c62 \n\
/* 08017c58 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08017c5a */ BNE branch_08017c62 \n\
/* 08017c5c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017c5e */ BL func_08017b44 \n\
 \n\
branch_08017c62: \n\
/* 08017c62 */ POP {R4-R6} \n\
/* 08017c64 */ POP {R0} \n\
/* 08017c66 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
