asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001b98 \n\
/* 08001b98 */ PUSH {LR} \n\
/* 08001b9a */ SUB SP, 0x4 \n\
/* 08001b9c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08001b9e */ LSLS R1, R1, 0x1 \n\
/* 08001ba0 */ LDR R0, [R2, 0x4] \n\
/* 08001ba2 */ ADDS R3, R0, R1 @ Set R3 to R0 + R1 \n\
/* 08001ba4 */ LDR R0, [R2, 0x10] \n\
/* 08001ba6 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 08001ba8 */ LDRH R0, [R2, 0x2] \n\
/* 08001baa */ LSLS R0, R0, 0x17 \n\
/* 08001bac */ LSRS R0, R0, 0x1E \n\
/* 08001bae */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08001bb0 */ BEQ branch_08001bd8 \n\
/* 08001bb2 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08001bb4 */ BGT branch_08001bbc \n\
/* 08001bb6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08001bb8 */ BLT branch_08001bf2 \n\
/* 08001bba */ B branch_08001bc0 \n\
 \n\
branch_08001bbc: \n\
/* 08001bbc */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08001bbe */ BNE branch_08001bf2 \n\
 \n\
branch_08001bc0: \n\
/* 08001bc0 */ LDRB R2, [R2, 0x2] \n\
/* 08001bc2 */ LSLS R2, R2, 0x19 \n\
/* 08001bc4 */ LSRS R2, R2, 0x1A \n\
/* 08001bc6 */ LSLS R2, R2, 0x5 \n\
/* 08001bc8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08001bca */ LSLS R0, R0, 0x1 \n\
/* 08001bcc */ STR R0, [SP] \n\
/* 08001bce */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08001bd0 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08001bd2 */ BL dma3_set \n\
/* 08001bd6 */ B branch_08001bf2 \n\
 \n\
branch_08001bd8: \n\
/* 08001bd8 */ LSLS R0, R3, 0x10 \n\
/* 08001bda */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 08001bdc */ LDRB R2, [R2, 0x2] \n\
/* 08001bde */ LSLS R2, R2, 0x19 \n\
/* 08001be0 */ LSRS R2, R2, 0x1A \n\
/* 08001be2 */ LSLS R2, R2, 0x5 \n\
/* 08001be4 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08001be6 */ LSLS R0, R0, 0x1 \n\
/* 08001be8 */ STR R0, [SP] \n\
/* 08001bea */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08001bec */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08001bee */ BL dma3_fill \n\
 \n\
branch_08001bf2: \n\
/* 08001bf2 */ ADD SP, 0x4 \n\
/* 08001bf4 */ POP {R0} \n\
/* 08001bf6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
