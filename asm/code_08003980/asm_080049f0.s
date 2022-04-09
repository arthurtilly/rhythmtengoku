asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080049f0 \n\
/* 080049f0 */ PUSH {R4-R7, LR} \n\
/* 080049f2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080049f4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080049f6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080049f8 */ PUSH {R5-R7} \n\
/* 080049fa */ SUB SP, 0x10 \n\
/* 080049fc */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080049fe */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08004a00 */ STR R2, [SP, 0x4] \n\
/* 08004a02 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 08004a04 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08004a06 */ STR R0, [SP, 0xC] \n\
/* 08004a08 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08004a0a */ LDR R2, [R1, 0x14] \n\
/* 08004a0c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08004a0e */ BEQ branch_08004a1c \n\
/* 08004a10 */ LDR R0, [R1, 0x18] \n\
/* 08004a12 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08004a14 */ BL _call_via_r2 \n\
/* 08004a18 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08004a1a */ LDR R4, [R2, 0x18] \n\
 \n\
branch_08004a1c: \n\
/* 08004a1c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08004a1e */ BL func_080045fc \n\
/* 08004a22 */ LSLS R1, R0, 0x1 \n\
/* 08004a24 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08004a26 */ LSLS R1, R1, 0x1 \n\
/* 08004a28 */ ADDS R1, 0x12 @ Add 0x12 to R1 \n\
/* 08004a2a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08004a2c */ LDRH R0, [R2] \n\
/* 08004a2e */ BL mem_heap_alloc_id \n\
/* 08004a32 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08004a34 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08004a36 */ STR R0, [SP, 0x8] \n\
/* 08004a38 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08004a3a */ LDR R1, =D_030008b0 \n\
/* 08004a3c */ STRB R5, [R1] \n\
/* 08004a3e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08004a40 */ STRH R6, [R2, 0x10] \n\
/* 08004a42 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08004a44 */ ADDS R7, 0x12 @ Add 0x12 to R7 \n\
/* 08004a46 */ LDRB R0, [R4] \n\
/* 08004a48 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004a4a */ BEQ branch_08004b2c \n\
/* 08004a4c */ MOV R10, R1 @ Set R10 to R1 \n\
 \n\
branch_08004a4e: \n\
/* 08004a4e */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08004a50 */ BNE branch_08004a64 \n\
/* 08004a52 */ LDRB R0, [R4, 0x1] \n\
/* 08004a54 */ BL func_0800467c \n\
/* 08004a58 */ LSLS R0, R0, 0x18 \n\
/* 08004a5a */ LSRS R0, R0, 0x18 \n\
/* 08004a5c */ STR R0, [SP, 0x30] \n\
/* 08004a5e */ B branch_08004b24 \n\
\n\
.ltorg \n\
 \n\
branch_08004a64: \n\
/* 08004a64 */ CMP R0, 0x3A @ Compare R0 and 0x3A \n\
/* 08004a66 */ BNE branch_08004a74 \n\
/* 08004a68 */ LDRB R0, [R4, 0x1] \n\
/* 08004a6a */ BL func_0800467c \n\
/* 08004a6e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08004a70 */ STRB R0, [R1] \n\
/* 08004a72 */ B branch_08004b24 \n\
 \n\
branch_08004a74: \n\
/* 08004a74 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08004a76 */ BEQ branch_08004a90 \n\
/* 08004a78 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08004a7a */ LDRB R1, [R2] \n\
/* 08004a7c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08004a7e */ LDR R2, [R0, 0x4] \n\
/* 08004a80 */ LSLS R0, R1, 0x3 \n\
/* 08004a82 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08004a84 */ LSLS R0, R0, 0x3 \n\
/* 08004a86 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08004a88 */ LDRB R0, [R0, 0x4] \n\
/* 08004a8a */ LSLS R0, R0, 0x18 \n\
/* 08004a8c */ ASRS R0, R0, 0x18 \n\
/* 08004a8e */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
 \n\
branch_08004a90: \n\
/* 08004a90 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08004a92 */ BL func_0800496c \n\
/* 08004a96 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004a98 */ BEQ branch_08004ab0 \n\
/* 08004a9a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08004a9c */ LDRB R1, [R2] \n\
/* 08004a9e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08004aa0 */ LDR R2, [R0, 0x4] \n\
/* 08004aa2 */ LSLS R0, R1, 0x3 \n\
/* 08004aa4 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08004aa6 */ LSLS R0, R0, 0x3 \n\
/* 08004aa8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08004aaa */ LDRB R0, [R0] \n\
/* 08004aac */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 08004aae */ B branch_08004b24 \n\
 \n\
branch_08004ab0: \n\
/* 08004ab0 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08004ab2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08004ab4 */ MOV R2, SP @ Set R2 to SP \n\
/* 08004ab6 */ BL func_0800477c \n\
/* 08004aba */ LSLS R0, R0, 0x10 \n\
/* 08004abc */ LSRS R5, R0, 0x10 \n\
/* 08004abe */ LDR R0, =0xffff \n\
/* 08004ac0 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08004ac2 */ BEQ branch_08004b2c \n\
/* 08004ac4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08004ac6 */ BL func_080049a0 \n\
/* 08004aca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004acc */ BEQ branch_08004ae8 \n\
/* 08004ace */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08004ad0 */ LDRB R0, [R1] \n\
/* 08004ad2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08004ad4 */ LDR R2, [R1, 0x4] \n\
/* 08004ad6 */ LSLS R1, R0, 0x3 \n\
/* 08004ad8 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08004ada */ LSLS R1, R1, 0x3 \n\
/* 08004adc */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08004ade */ LDRB R0, [R1, 0x3] \n\
/* 08004ae0 */ B branch_08004aea \n\
\n\
.ltorg \n\
 \n\
branch_08004ae8: \n\
/* 08004ae8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08004aea: \n\
/* 08004aea */ STRH R0, [R7] \n\
/* 08004aec */ LDR R2, =0x1ff \n\
/* 08004aee */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08004af0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08004af2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08004af4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08004af6 */ LSLS R2, R2, 0x7 \n\
/* 08004af8 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08004afa */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08004afc */ STRH R0, [R7, 0x2] \n\
/* 08004afe */ LDR R1, [SP, 0x30] \n\
/* 08004b00 */ LSLS R0, R1, 0xC \n\
/* 08004b02 */ ORRS R0, R5 @ Set R0 to R0 | R5 \n\
/* 08004b04 */ STRH R0, [R7, 0x4] \n\
/* 08004b06 */ LDR R1, [SP] \n\
/* 08004b08 */ ADDS R6, R6, R1 @ Set R6 to R6 + R1 \n\
/* 08004b0a */ ADDS R7, 0x6 @ Add 0x6 to R7 \n\
/* 08004b0c */ LDR R2, [SP, 0xC] \n\
/* 08004b0e */ CMP R2, 0x3F @ Compare R2 and 0x3F \n\
/* 08004b10 */ BHI branch_08004b1c \n\
/* 08004b12 */ LDR R0, =D_030008b8 \n\
/* 08004b14 */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 08004b16 */ STRB R1, [R0] \n\
/* 08004b18 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08004b1a */ STR R2, [SP, 0xC] \n\
 \n\
branch_08004b1c: \n\
/* 08004b1c */ LDR R1, [SP, 0x8] \n\
/* 08004b1e */ LDRH R0, [R1] \n\
/* 08004b20 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08004b22 */ STRH R0, [R1] \n\
 \n\
branch_08004b24: \n\
/* 08004b24 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08004b26 */ LDRB R0, [R4] \n\
/* 08004b28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004b2a */ BNE branch_08004a4e \n\
 \n\
branch_08004b2c: \n\
/* 08004b2c */ LDR R2, [SP, 0x8] \n\
/* 08004b2e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08004b30 */ STR R2, [R0] \n\
/* 08004b32 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08004b34 */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 08004b36 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08004b38 */ STRB R0, [R2, 0x4] \n\
/* 08004b3a */ STR R1, [R2, 0x8] \n\
/* 08004b3c */ STRB R1, [R2, 0xC] \n\
/* 08004b3e */ LDR R0, [SP, 0x4] \n\
/* 08004b40 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004b42 */ BEQ branch_08004b46 \n\
/* 08004b44 */ STR R6, [R0] \n\
 \n\
branch_08004b46: \n\
/* 08004b46 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08004b48 */ ADD SP, 0x10 \n\
/* 08004b4a */ POP {R3-R5} \n\
/* 08004b4c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08004b4e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08004b50 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08004b52 */ POP {R4-R7} \n\
/* 08004b54 */ POP {R1} \n\
/* 08004b56 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
