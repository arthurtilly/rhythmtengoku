asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038a84 \n\
/* 08038a84 */ PUSH {R4-R7, LR} \n\
/* 08038a86 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08038a88 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08038a8a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08038a8c */ PUSH {R5-R7} \n\
/* 08038a8e */ LDR R0, =gCurrentEngineData \n\
/* 08038a90 */ LDR R0, [R0] \n\
/* 08038a92 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08038a94 */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08038a96 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08038a98 */ MOVS R5, 0xFA @ Set R5 to 0xFA \n\
/* 08038a9a */ LSLS R5, R5, 0x2 \n\
/* 08038a9c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08038a9e: \n\
/* 08038a9e */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08038aa0 */ BL ticks_to_frames \n\
/* 08038aa4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08038aa6 */ LDRH R2, [R4, 0xC] \n\
/* 08038aa8 */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
/* 08038aaa */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08038aac */ LSLS R0, R0, 0x8 \n\
/* 08038aae */ BL __divsi3 \n\
/* 08038ab2 */ LDR R1, [R4, 0x4] \n\
/* 08038ab4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08038ab6 */ ASRS R1, R1, 0x8 \n\
/* 08038ab8 */ SUBS R1, 0xA0 @ Subtract 0xA0 from R1 \n\
/* 08038aba */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08038abc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08038abe */ BGE branch_08038ac2 \n\
/* 08038ac0 */ NEGS R0, R1 @ Set R0 to -R1 \n\
 \n\
branch_08038ac2: \n\
/* 08038ac2 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08038ac4 */ BGE branch_08038ad0 \n\
/* 08038ac6 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08038ac8 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08038aca */ BGE branch_08038ace \n\
/* 08038acc */ NEGS R5, R1 @ Set R5 to -R1 \n\
 \n\
branch_08038ace: \n\
/* 08038ace */ ADDS R6, R7, 0x0 @ Set R6 to R7 + 0x0 \n\
 \n\
branch_08038ad0: \n\
/* 08038ad0 */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 08038ad2 */ LSLS R0, R0, 0x18 \n\
/* 08038ad4 */ LSRS R7, R0, 0x18 \n\
/* 08038ad6 */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08038ad8 */ CMP R7, 0x5 @ Compare R7 and 0x5 \n\
/* 08038ada */ BLS branch_08038a9e \n\
/* 08038adc */ LDR R0, =gCurrentEngineData \n\
/* 08038ade */ LDR R1, [R0] \n\
/* 08038ae0 */ LSLS R0, R6, 0x5 \n\
/* 08038ae2 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08038ae4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08038ae6 */ STRH R0, [R4, 0x38] \n\
/* 08038ae8 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08038aea */ LDR R0, =0xffffff00 \n\
/* 08038aec */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_08038aee: \n\
/* 08038aee */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08038af0 */ BL agb_random \n\
/* 08038af4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08038af6 */ LSLS R0, R7, 0x2 \n\
/* 08038af8 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08038afa */ ADD R4, R9 @ Add R9 to R4 \n\
/* 08038afc */ ADDS R4, 0x9E @ Add 0x9E to R4 \n\
/* 08038afe */ LSLS R4, R4, 0x10 \n\
/* 08038b00 */ ASRS R4, R4, 0x10 \n\
/* 08038b02 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08038b04 */ BL agb_random \n\
/* 08038b08 */ LSLS R5, R7, 0x7 \n\
/* 08038b0a */ LSLS R0, R0, 0x10 \n\
/* 08038b0c */ LSRS R0, R0, 0x10 \n\
/* 08038b0e */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08038b10 */ SUBS R5, 0x20 @ Subtract 0x20 from R5 \n\
/* 08038b12 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08038b14 */ BL agb_random \n\
/* 08038b18 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08038b1a */ NEGS R6, R7 @ Set R6 to -R7 \n\
/* 08038b1c */ LSLS R0, R6, 0x6 \n\
/* 08038b1e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08038b20 */ LSLS R3, R3, 0x10 \n\
/* 08038b22 */ LSRS R3, R3, 0x10 \n\
/* 08038b24 */ ADD R3, R10 @ Add R10 to R3 \n\
/* 08038b26 */ ADD R3, R8 @ Add R8 to R3 \n\
/* 08038b28 */ SUBS R3, 0x40 @ Subtract 0x40 from R3 \n\
/* 08038b2a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08038b2c */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08038b2e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08038b30 */ BL func_0803978c \n\
/* 08038b34 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08038b36 */ BL agb_random \n\
/* 08038b3a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08038b3c */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08038b3e */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 08038b40 */ ADDS R4, 0x9E @ Add 0x9E to R4 \n\
/* 08038b42 */ LSLS R4, R4, 0x10 \n\
/* 08038b44 */ ASRS R4, R4, 0x10 \n\
/* 08038b46 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08038b48 */ BL agb_random \n\
/* 08038b4c */ LSLS R6, R6, 0x7 \n\
/* 08038b4e */ LSLS R0, R0, 0x10 \n\
/* 08038b50 */ LSRS R0, R0, 0x10 \n\
/* 08038b52 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 08038b54 */ SUBS R6, 0x20 @ Subtract 0x20 from R6 \n\
/* 08038b56 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08038b58 */ BL agb_random \n\
/* 08038b5c */ LSLS R0, R0, 0x10 \n\
/* 08038b5e */ LSRS R0, R0, 0x10 \n\
/* 08038b60 */ ADD R0, R10 @ Add R10 to R0 \n\
/* 08038b62 */ ADD R8, R0 @ Add R0 to R8 \n\
/* 08038b64 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08038b66 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08038b68 */ ADD R8, R0 @ Add R0 to R8 \n\
/* 08038b6a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08038b6c */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08038b6e */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08038b70 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08038b72 */ BL func_0803978c \n\
/* 08038b76 */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 08038b78 */ LSLS R0, R0, 0x18 \n\
/* 08038b7a */ LSRS R7, R0, 0x18 \n\
/* 08038b7c */ CMP R7, 0x4 @ Compare R7 and 0x4 \n\
/* 08038b7e */ BLS branch_08038aee \n\
/* 08038b80 */ POP {R3-R5} \n\
/* 08038b82 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08038b84 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08038b86 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08038b88 */ POP {R4-R7} \n\
/* 08038b8a */ POP {R0} \n\
/* 08038b8c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
