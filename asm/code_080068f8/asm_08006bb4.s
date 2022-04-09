asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006bb4 \n\
/* 08006bb4 */ PUSH {R4-R6, LR} \n\
/* 08006bb6 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08006bb8 */ LDRH R0, [R6, 0x1C] \n\
/* 08006bba */ LSLS R0, R0, 0x14 \n\
/* 08006bbc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006bbe */ BNE branch_08006bfc \n\
/* 08006bc0 */ LDR R5, [R6, 0x18] \n\
/* 08006bc2 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08006bc4 */ BL mem_heap_alloc \n\
/* 08006bc8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08006bca */ STR R6, [R4] \n\
/* 08006bcc */ LDRB R0, [R5] \n\
/* 08006bce */ LSRS R0, R0, 0x1 \n\
/* 08006bd0 */ STRH R0, [R4, 0xA] \n\
/* 08006bd2 */ STRH R0, [R4, 0x6] \n\
/* 08006bd4 */ LDRB R0, [R5, 0x1] \n\
/* 08006bd6 */ LSRS R0, R0, 0x1 \n\
/* 08006bd8 */ STRH R0, [R4, 0xC] \n\
/* 08006bda */ STRH R0, [R4, 0x8] \n\
/* 08006bdc */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08006bde */ BL func_0800699c \n\
/* 08006be2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006be4 */ BL func_08006b30 \n\
/* 08006be8 */ LDRH R1, [R6, 0x1C] \n\
/* 08006bea */ LDR R0, =0xfffff000 \n\
/* 08006bec */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006bee */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08006bf0 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08006bf2 */ STRH R0, [R6, 0x1C] \n\
/* 08006bf4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006bf6 */ B branch_08006c00 \n\
\n\
.ltorg \n\
 \n\
branch_08006bfc: \n\
/* 08006bfc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08006bfe */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08006c00: \n\
/* 08006c00 */ POP {R4-R6} \n\
/* 08006c02 */ POP {R1} \n\
/* 08006c04 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
