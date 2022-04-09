asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006ca4 \n\
/* 08006ca4 */ PUSH {R4, R5, LR} \n\
/* 08006ca6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08006ca8 */ LDRH R0, [R5, 0x1C] \n\
/* 08006caa */ LSLS R0, R0, 0x14 \n\
/* 08006cac */ LSRS R0, R0, 0x14 \n\
/* 08006cae */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08006cb0 */ BNE branch_08006cdc \n\
/* 08006cb2 */ LDR R4, [R5, 0x18] \n\
/* 08006cb4 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08006cb6 */ BL mem_heap_alloc \n\
/* 08006cba */ STR R5, [R0] \n\
/* 08006cbc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08006cbe */ STRH R1, [R0, 0x8] \n\
/* 08006cc0 */ STRH R1, [R0, 0x6] \n\
/* 08006cc2 */ LDRB R1, [R4] \n\
/* 08006cc4 */ STRH R1, [R0, 0xA] \n\
/* 08006cc6 */ LDRB R1, [R4, 0x1] \n\
/* 08006cc8 */ STRH R1, [R0, 0xC] \n\
/* 08006cca */ LDRH R2, [R5, 0x1C] \n\
/* 08006ccc */ LDR R1, =0xfffff000 \n\
/* 08006cce */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08006cd0 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08006cd2 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08006cd4 */ STRH R1, [R5, 0x1C] \n\
/* 08006cd6 */ B branch_08006ce0 \n\
\n\
.ltorg \n\
 \n\
branch_08006cdc: \n\
/* 08006cdc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08006cde */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08006ce0: \n\
/* 08006ce0 */ POP {R4, R5} \n\
/* 08006ce2 */ POP {R1} \n\
/* 08006ce4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
