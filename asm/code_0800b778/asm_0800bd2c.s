asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bd2c \n\
/* 0800bd2c */ PUSH {R4-R7, LR} \n\
/* 0800bd2e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0800bd30 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800bd32 */ PUSH {R6, R7} \n\
/* 0800bd34 */ SUB SP, 0x4 \n\
/* 0800bd36 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800bd38 */ LDR R0, =D_030053c0 \n\
/* 0800bd3a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800bd3c */ MOVS R1, 0x7E @ Set R1 to 0x7E \n\
/* 0800bd3e */ ADD R1, R8 @ Add R8 to R1 \n\
/* 0800bd40 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_0800bd42: \n\
/* 0800bd42 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0800bd44 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0800bd46 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0800bd48 */ LSLS R2, R2, 0x1 \n\
/* 0800bd4a */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800bd4c */ LDRB R0, [R4, 0x1] \n\
/* 0800bd4e */ MOVS R4, 0xF @ Set R4 to 0xF \n\
/* 0800bd50 */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0800bd52 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800bd54 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800bd56 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800bd58 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800bd5a */ STRB R0, [R1, 0x1] \n\
/* 0800bd5c */ LSLS R0, R0, 0x1C \n\
/* 0800bd5e */ LSRS R0, R0, 0x1D \n\
/* 0800bd60 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800bd62 */ STR R3, [SP] \n\
/* 0800bd64 */ BL func_0800c3c4 \n\
/* 0800bd68 */ MOVS R0, 0x9C @ Set R0 to 0x9C \n\
/* 0800bd6a */ LDR R3, [SP] \n\
/* 0800bd6c */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 0800bd6e */ MULS R4, R0 @ Multiply R4 by R0 \n\
/* 0800bd70 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800bd72 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0800bd74 */ ADDS R5, R4, R0 @ Set R5 to R4 + R0 \n\
/* 0800bd76 */ LDR R7, [R5, 0x4] \n\
/* 0800bd78 */ LDRB R1, [R5] \n\
/* 0800bd7a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800bd7c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800bd7e */ ADDS R6, R3, 0x1 @ Set R6 to R3 + 0x1 \n\
/* 0800bd80 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bd82 */ BEQ branch_0800bdd4 \n\
/* 0800bd84 */ LDR R2, =D_03005588 \n\
/* 0800bd86 */ LSLS R1, R3, 0x2 \n\
/* 0800bd88 */ MOVS R0, 0xB0 @ Set R0 to 0xB0 \n\
/* 0800bd8a */ LSLS R0, R0, 0x1 \n\
/* 0800bd8c */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800bd8e */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 0800bd90 */ STR R3, [R2] \n\
/* 0800bd92 */ LDR R1, =D_0300558c \n\
/* 0800bd94 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800bd96 */ ADDS R0, R4, R2 @ Set R0 to R4 + R2 \n\
/* 0800bd98 */ STR R0, [R1] \n\
/* 0800bd9a */ LDR R2, [R7, 0x18] \n\
/* 0800bd9c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800bd9e */ BEQ branch_0800bda8 \n\
/* 0800bda0 */ LDR R1, [R7, 0x1C] \n\
/* 0800bda2 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800bda4 */ BL _call_via_r2 \n\
 \n\
branch_0800bda8: \n\
/* 0800bda8 */ LDR R0, =D_03005380 \n\
/* 0800bdaa */ LDR R0, [R0] \n\
/* 0800bdac */ LSLS R4, R6, 0x10 \n\
/* 0800bdae */ LSRS R4, R4, 0x10 \n\
/* 0800bdb0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800bdb2 */ BL func_0804e0c4 \n\
/* 0800bdb6 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800bdb8 */ BL func_0800222c \n\
/* 0800bdbc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800bdbe */ BL mem_heap_dealloc_with_id \n\
/* 0800bdc2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800bdc4 */ BL func_08005de4 \n\
/* 0800bdc8 */ LDRB R0, [R5] \n\
/* 0800bdca */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0800bdcc */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0800bdce */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800bdd0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800bdd2 */ STRB R0, [R5] \n\
 \n\
branch_0800bdd4: \n\
/* 0800bdd4 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800bdd6 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 0800bdd8 */ BLS branch_0800bd42 \n\
/* 0800bdda */ ADD SP, 0x4 \n\
/* 0800bddc */ POP {R3, R4} \n\
/* 0800bdde */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800bde0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800bde2 */ POP {R4-R7} \n\
/* 0800bde4 */ POP {R0} \n\
/* 0800bde6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
