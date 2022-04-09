asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007bb8 \n\
/* 08007bb8 */ PUSH {R4, LR} \n\
/* 08007bba */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007bbc */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08007bbe */ BL mem_heap_alloc \n\
/* 08007bc2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08007bc4 */ LDRB R1, [R4] \n\
/* 08007bc6 */ LSLS R1, R1, 0x1E \n\
/* 08007bc8 */ LSRS R1, R1, 0x1E \n\
/* 08007bca */ LDRB R2, [R3] \n\
/* 08007bcc */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08007bce */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08007bd0 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08007bd2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007bd4 */ STRB R0, [R3] \n\
/* 08007bd6 */ LDR R2, [R4] \n\
/* 08007bd8 */ LDR R0, =0x1fffc \n\
/* 08007bda */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08007bdc */ LDR R0, [R3] \n\
/* 08007bde */ LDR R1, =0xfffe0003 \n\
/* 08007be0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007be2 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08007be4 */ STR R0, [R3] \n\
/* 08007be6 */ LDRH R1, [R3, 0x2] \n\
/* 08007be8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08007bea */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007bec */ STRH R0, [R3, 0x2] \n\
/* 08007bee */ LDR R2, [R4, 0x4] \n\
/* 08007bf0 */ STR R2, [R3, 0x4] \n\
/* 08007bf2 */ LDR R1, [R4, 0x8] \n\
/* 08007bf4 */ STR R1, [R3, 0x8] \n\
/* 08007bf6 */ LDR R0, [R4, 0xC] \n\
/* 08007bf8 */ STR R0, [R3, 0xC] \n\
/* 08007bfa */ LDRB R0, [R3] \n\
/* 08007bfc */ LSLS R0, R0, 0x1E \n\
/* 08007bfe */ LSRS R0, R0, 0x1E \n\
/* 08007c00 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007c02 */ BEQ branch_08007c22 \n\
/* 08007c04 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007c06 */ BGT branch_08007c18 \n\
/* 08007c08 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007c0a */ BEQ branch_08007c1e \n\
/* 08007c0c */ B branch_08007c28 \n\
\n\
.ltorg \n\
 \n\
branch_08007c18: \n\
/* 08007c18 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08007c1a */ BEQ branch_08007c26 \n\
/* 08007c1c */ B branch_08007c28 \n\
 \n\
branch_08007c1e: \n\
/* 08007c1e */ STRB R1, [R2] \n\
/* 08007c20 */ B branch_08007c28 \n\
 \n\
branch_08007c22: \n\
/* 08007c22 */ STRH R1, [R2] \n\
/* 08007c24 */ B branch_08007c28 \n\
 \n\
branch_08007c26: \n\
/* 08007c26 */ STR R1, [R2] \n\
 \n\
branch_08007c28: \n\
/* 08007c28 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08007c2a */ POP {R4} \n\
/* 08007c2c */ POP {R1} \n\
/* 08007c2e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
