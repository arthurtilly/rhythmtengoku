asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049d30 \n\
/* 08049d30 */ PUSH {R4-R7, LR} \n\
/* 08049d32 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08049d34 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 08049d36 */ LSLS R1, R3, 0x5 \n\
/* 08049d38 */ LDR R0, [R2, 0x18] \n\
/* 08049d3a */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 08049d3c */ LDR R0, [R4, 0x8] \n\
/* 08049d3e */ LSLS R0, R0, 0xA \n\
/* 08049d40 */ LSRS R0, R0, 0x18 \n\
/* 08049d42 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049d44 */ BNE branch_08049d50 \n\
/* 08049d46 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08049d48 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08049d4a */ BL func_08049db8 \n\
/* 08049d4e */ B branch_08049da4 \n\
 \n\
branch_08049d50: \n\
/* 08049d50 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08049d52 */ LDR R0, =D_03005b8c \n\
/* 08049d54 */ LDR R7, =D_030056a0 \n\
/* 08049d56 */ LDRH R1, [R0] \n\
/* 08049d58 */ CMP R3, R1 @ Check R3 - R1 \n\
/* 08049d5a */ BCS branch_08049d80 \n\
/* 08049d5c */ LDR R6, =D_030064bc \n\
/* 08049d5e */ MOVS R5, 0x4 @ Set R5 to 0x4 \n\
/* 08049d60 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
 \n\
branch_08049d62: \n\
/* 08049d62 */ LDR R1, [R6] \n\
/* 08049d64 */ LSLS R0, R3, 0x5 \n\
/* 08049d66 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 08049d68 */ LDRB R0, [R1] \n\
/* 08049d6a */ LSLS R0, R0, 0x1F \n\
/* 08049d6c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049d6e */ BEQ branch_08049d78 \n\
/* 08049d70 */ LDR R0, [R1, 0xC] \n\
/* 08049d72 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08049d74 */ BNE branch_08049d78 \n\
/* 08049d76 */ STRB R5, [R1, 0x1C] \n\
 \n\
branch_08049d78: \n\
/* 08049d78 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08049d7a */ LDRH R0, [R2] \n\
/* 08049d7c */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08049d7e */ BCC branch_08049d62 \n\
 \n\
branch_08049d80: \n\
/* 08049d80 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08049d82 */ MOVS R5, 0x4 @ Set R5 to 0x4 \n\
/* 08049d84 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08049d86 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 08049d88 */ LDR R1, =D_030056a0 \n\
 \n\
branch_08049d8a: \n\
/* 08049d8a */ LDRB R0, [R1] \n\
/* 08049d8c */ LSLS R0, R0, 0x1F \n\
/* 08049d8e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049d90 */ BEQ branch_08049d9a \n\
/* 08049d92 */ LDR R0, [R2] \n\
/* 08049d94 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08049d96 */ BNE branch_08049d9a \n\
/* 08049d98 */ STRB R5, [R1, 0x1C] \n\
 \n\
branch_08049d9a: \n\
/* 08049d9a */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 08049d9c */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 08049d9e */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08049da0 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 08049da2 */ BLS branch_08049d8a \n\
 \n\
branch_08049da4: \n\
/* 08049da4 */ POP {R4-R7} \n\
/* 08049da6 */ POP {R0} \n\
/* 08049da8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
