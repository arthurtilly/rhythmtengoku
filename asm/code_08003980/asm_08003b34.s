asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003b34 \n\
/* 08003b34 */ PUSH {R4, R5, LR} \n\
/* 08003b36 */ SUB SP, 0xC \n\
/* 08003b38 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08003b3a */ LDRB R1, [R5] \n\
/* 08003b3c */ LSLS R0, R1, 0x1F \n\
/* 08003b3e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003b40 */ BEQ branch_08003bcc \n\
/* 08003b42 */ LSLS R0, R1, 0x1E \n\
/* 08003b44 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003b46 */ BGE branch_08003bba \n\
/* 08003b48 */ LSLS R0, R1, 0x1B \n\
/* 08003b4a */ LSRS R0, R0, 0x1E \n\
/* 08003b4c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08003b4e */ BEQ branch_08003b74 \n\
/* 08003b50 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08003b52 */ BGT branch_08003b5a \n\
/* 08003b54 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003b56 */ BEQ branch_08003b60 \n\
/* 08003b58 */ B branch_08003bb0 \n\
 \n\
branch_08003b5a: \n\
/* 08003b5a */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08003b5c */ BEQ branch_08003b7e \n\
/* 08003b5e */ B branch_08003bb0 \n\
 \n\
branch_08003b60: \n\
/* 08003b60 */ LDR R0, [R5, 0x14] \n\
/* 08003b62 */ LDR R1, [R5, 0x18] \n\
/* 08003b64 */ LDR R2, [R5, 0x1C] \n\
/* 08003b66 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08003b68 */ LSLS R3, R3, 0x1 \n\
/* 08003b6a */ STR R3, [SP] \n\
/* 08003b6c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08003b6e */ BL func_0800186c \n\
/* 08003b72 */ B branch_08003bb0 \n\
 \n\
branch_08003b74: \n\
/* 08003b74 */ LDR R0, [R5, 0x14] \n\
/* 08003b76 */ LDR R1, [R5, 0x18] \n\
/* 08003b78 */ BL func_08003eb8 \n\
/* 08003b7c */ B branch_08003bb0 \n\
 \n\
branch_08003b7e: \n\
/* 08003b7e */ LDR R0, [R5, 0x24] \n\
/* 08003b80 */ LDR R1, [R5] \n\
/* 08003b82 */ LSLS R1, R1, 0xC \n\
/* 08003b84 */ LSRS R1, R1, 0x1B \n\
/* 08003b86 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08003b88 */ LDRH R2, [R5, 0x2] \n\
/* 08003b8a */ LSLS R2, R2, 0x17 \n\
/* 08003b8c */ LSRS R2, R2, 0x1B \n\
/* 08003b8e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08003b90 */ LDR R3, [R5, 0x18] \n\
/* 08003b92 */ LDRH R4, [R5] \n\
/* 08003b94 */ LSLS R4, R4, 0x16 \n\
/* 08003b96 */ LSRS R4, R4, 0x1B \n\
/* 08003b98 */ STR R4, [SP] \n\
/* 08003b9a */ LDRB R4, [R5, 0x1] \n\
/* 08003b9c */ LSLS R4, R4, 0x19 \n\
/* 08003b9e */ LSRS R4, R4, 0x1B \n\
/* 08003ba0 */ STR R4, [SP, 0x4] \n\
/* 08003ba2 */ LDRB R4, [R5, 0x3] \n\
/* 08003ba4 */ LSLS R4, R4, 0x1A \n\
/* 08003ba6 */ LSRS R4, R4, 0x1B \n\
/* 08003ba8 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08003baa */ STR R4, [SP, 0x8] \n\
/* 08003bac */ BL func_08003e00 \n\
 \n\
branch_08003bb0: \n\
/* 08003bb0 */ LDRB R1, [R5] \n\
/* 08003bb2 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08003bb4 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08003bb6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003bb8 */ STRB R0, [R5] \n\
 \n\
branch_08003bba: \n\
/* 08003bba */ LDRB R0, [R5, 0x3] \n\
/* 08003bbc */ LSRS R0, R0, 0x6 \n\
/* 08003bbe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003bc0 */ BEQ branch_08003bcc \n\
/* 08003bc2 */ LDRB R1, [R5] \n\
/* 08003bc4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08003bc6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08003bc8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08003bca */ STRB R0, [R5] \n\
 \n\
branch_08003bcc: \n\
/* 08003bcc */ ADD SP, 0xC \n\
/* 08003bce */ POP {R4, R5} \n\
/* 08003bd0 */ POP {R0} \n\
/* 08003bd2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
