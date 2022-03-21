asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800aac0 \n\
/* 0800aac0 */ PUSH {R4-R7, LR} \n\
/* 0800aac2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800aac4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800aac6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800aac8 */ PUSH {R5-R7} \n\
/* 0800aaca */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0800aacc */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800aace */ LSLS R3, R3, 0x10 \n\
/* 0800aad0 */ LSRS R3, R3, 0x10 \n\
/* 0800aad2 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0800aad4 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800aad6 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800aad8 */ BEQ branch_0800aba2 \n\
/* 0800aada */ LDRB R0, [R6, 0x2] \n\
/* 0800aadc */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800aade */ BNE branch_0800aba2 \n\
/* 0800aae0 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0800aae2 */ LDRSH R0, [R6, R2] \n\
/* 0800aae4 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800aae6 */ BCS branch_0800aba2 \n\
/* 0800aae8 */ LDR R0, [R6, 0x10] \n\
/* 0800aaea */ LSLS R7, R1, 0x1 \n\
/* 0800aaec */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 0800aaee */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800aaf0 */ LDRSH R5, [R0, R1] \n\
/* 0800aaf2 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800aaf4 */ BLT branch_0800ab1a \n\
/* 0800aaf6 */ LDR R4, =D_03005380 \n\
/* 0800aaf8 */ LDR R0, [R4] \n\
/* 0800aafa */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800aafc */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0800aafe */ BL func_0804ddb0 \n\
/* 0800ab02 */ BL func_0800a068 \n\
/* 0800ab06 */ LDR R0, [R4] \n\
/* 0800ab08 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800ab0a */ BL func_0804d504 \n\
/* 0800ab0e */ LDR R0, [R6, 0x10] \n\
/* 0800ab10 */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 0800ab12 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800ab14 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800ab16 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800ab18 */ STRH R1, [R0] \n\
 \n\
branch_0800ab1a: \n\
/* 0800ab1a */ LDR R0, [R6, 0x20] \n\
/* 0800ab1c */ ADDS R1, R7, R0 @ Set R1 to R7 + R0 \n\
/* 0800ab1e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800ab20 */ LDRSH R0, [R1, R2] \n\
/* 0800ab22 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ab24 */ BLT branch_0800ab3e \n\
/* 0800ab26 */ LDR R0, =D_03005380 \n\
/* 0800ab28 */ LDR R0, [R0] \n\
/* 0800ab2a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800ab2c */ LDRSH R1, [R1, R2] \n\
/* 0800ab2e */ BL func_0804d504 \n\
/* 0800ab32 */ LDR R0, [R6, 0x20] \n\
/* 0800ab34 */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 0800ab36 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800ab38 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800ab3a */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800ab3c */ STRH R1, [R0] \n\
 \n\
branch_0800ab3e: \n\
/* 0800ab3e */ LDR R1, [R6, 0x20] \n\
/* 0800ab40 */ ADDS R1, R7, R1 @ Set R1 to R7 + R1 \n\
/* 0800ab42 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800ab44 */ STRH R0, [R1] \n\
/* 0800ab46 */ LDR R0, =D_03005380 \n\
/* 0800ab48 */ LDR R0, [R0] \n\
/* 0800ab4a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800ab4c */ LDRSH R1, [R1, R2] \n\
/* 0800ab4e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800ab50 */ BL func_0804d770 \n\
/* 0800ab54 */ LDR R0, [R6, 0x1C] \n\
/* 0800ab56 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800ab58 */ LSLS R5, R1, 0x2 \n\
/* 0800ab5a */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0800ab5c */ LDR R0, [R0] \n\
/* 0800ab5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ab60 */ BEQ branch_0800ab66 \n\
/* 0800ab62 */ BL mem_heap_dealloc \n\
 \n\
branch_0800ab66: \n\
/* 0800ab66 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800ab68 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800ab6a */ BEQ branch_0800ab90 \n\
/* 0800ab6c */ LDRH R4, [R6] \n\
/* 0800ab6e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800ab70 */ BL strlen \n\
/* 0800ab74 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800ab76 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0800ab78 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800ab7a */ BL mem_heap_alloc_id \n\
/* 0800ab7e */ LDR R1, [R6, 0x1C] \n\
/* 0800ab80 */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 0800ab82 */ STR R0, [R1] \n\
/* 0800ab84 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800ab86 */ BL strcpy \n\
/* 0800ab8a */ B branch_0800ab98 \n\
\n\
.ltorg \n\
 \n\
branch_0800ab90: \n\
/* 0800ab90 */ LDR R0, [R6, 0x1C] \n\
/* 0800ab92 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0800ab94 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800ab96 */ STR R1, [R0] \n\
 \n\
branch_0800ab98: \n\
/* 0800ab98 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800ab9a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800ab9c */ BEQ branch_0800aba2 \n\
/* 0800ab9e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800aba0 */ STRB R0, [R6, 0x3] \n\
 \n\
branch_0800aba2: \n\
/* 0800aba2 */ POP {R3-R5} \n\
/* 0800aba4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800aba6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800aba8 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800abaa */ POP {R4-R7} \n\
/* 0800abac */ POP {R0} \n\
/* 0800abae */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
