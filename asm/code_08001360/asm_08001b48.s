asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001b48 \n\
/* 08001b48 */ PUSH {LR} \n\
/* 08001b4a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08001b4c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08001b4e */ BEQ branch_08001b94 \n\
/* 08001b50 */ LDRB R0, [R3] \n\
/* 08001b52 */ LSLS R0, R0, 0x1F \n\
/* 08001b54 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08001b56 */ BEQ branch_08001b94 \n\
/* 08001b58 */ LDR R2, [R3] \n\
/* 08001b5a */ LSLS R0, R2, 0xF \n\
/* 08001b5c */ LSRS R0, R0, 0x18 \n\
/* 08001b5e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08001b60 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08001b62 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001b64 */ LSLS R0, R0, 0x9 \n\
/* 08001b66 */ LDR R1, =0xfffe01ff \n\
/* 08001b68 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08001b6a */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08001b6c */ STR R1, [R3] \n\
/* 08001b6e */ LSLS R1, R1, 0xF \n\
/* 08001b70 */ LSRS R1, R1, 0x18 \n\
/* 08001b72 */ LDRH R0, [R3] \n\
/* 08001b74 */ LSLS R0, R0, 0x17 \n\
/* 08001b76 */ LSRS R0, R0, 0x18 \n\
/* 08001b78 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08001b7a */ BLE branch_08001b8c \n\
/* 08001b7c */ LDRB R1, [R3] \n\
/* 08001b7e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08001b80 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08001b82 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001b84 */ STRB R0, [R3] \n\
/* 08001b86 */ B branch_08001b94 \n\
\n\
.ltorg \n\
 \n\
branch_08001b8c: \n\
/* 08001b8c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08001b8e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08001b90 */ BL func_08001a64 \n\
 \n\
branch_08001b94: \n\
/* 08001b94 */ POP {R0} \n\
/* 08001b96 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
