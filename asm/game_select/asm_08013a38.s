asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013a38 \n\
/* 08013a38 */ PUSH {R4-R6, LR} \n\
/* 08013a3a */ LDR R6, =D_030046a4 \n\
/* 08013a3c */ LDR R3, [R6] \n\
/* 08013a3e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08013a40 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08013a42 */ LDRB R0, [R0] \n\
/* 08013a44 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013a46 */ BEQ branch_08013ac2 \n\
/* 08013a48 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08013a4a */ ADDS R2, 0x58 @ Add 0x58 to R2 \n\
/* 08013a4c */ LDRH R1, [R2] \n\
/* 08013a4e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08013a50 */ ADDS R0, 0x5A @ Add 0x5A to R0 \n\
/* 08013a52 */ LDRH R0, [R0] \n\
/* 08013a54 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08013a56 */ ASRS R0, R0, 0x8 \n\
/* 08013a58 */ STRH R0, [R2] \n\
/* 08013a5a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08013a5c */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 08013a5e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013a60 */ LDRSH R0, [R0, R1] \n\
/* 08013a62 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08013a64 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 08013a66 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013a68 */ LDRSH R1, [R1, R3] \n\
/* 08013a6a */ LDRH R2, [R2] \n\
/* 08013a6c */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08013a6e */ LSLS R4, R4, 0x1 \n\
/* 08013a70 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08013a72 */ BL func_08008f04 \n\
/* 08013a76 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08013a78 */ LDR R2, [R6] \n\
/* 08013a7a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08013a7c */ ADDS R0, 0x56 @ Add 0x56 to R0 \n\
/* 08013a7e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013a80 */ LDRSH R0, [R0, R1] \n\
/* 08013a82 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08013a84 */ ADDS R1, 0x52 @ Add 0x52 to R1 \n\
/* 08013a86 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013a88 */ LDRSH R1, [R1, R3] \n\
/* 08013a8a */ ADDS R2, 0x58 @ Add 0x58 to R2 \n\
/* 08013a8c */ LDRH R2, [R2] \n\
/* 08013a8e */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08013a90 */ BL func_08008f04 \n\
/* 08013a94 */ LSLS R5, R5, 0x10 \n\
/* 08013a96 */ ASRS R5, R5, 0x10 \n\
/* 08013a98 */ LSLS R4, R0, 0x10 \n\
/* 08013a9a */ ASRS R4, R4, 0x10 \n\
/* 08013a9c */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08013a9e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08013aa0 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08013aa2 */ BL scene_set_bg_layer_pos \n\
/* 08013aa6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08013aa8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08013aaa */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08013aac */ BL scene_set_bg_layer_pos \n\
/* 08013ab0 */ LDR R1, [R6] \n\
/* 08013ab2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08013ab4 */ ADDS R0, 0x58 @ Add 0x58 to R0 \n\
/* 08013ab6 */ LDRH R0, [R0] \n\
/* 08013ab8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013aba */ BNE branch_08013ac2 \n\
/* 08013abc */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 08013abe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013ac0 */ STRB R0, [R1] \n\
 \n\
branch_08013ac2: \n\
/* 08013ac2 */ LDR R6, =D_030046a4 \n\
/* 08013ac4 */ LDR R2, [R6] \n\
/* 08013ac6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08013ac8 */ ADDS R0, 0x5C @ Add 0x5C to R0 \n\
/* 08013aca */ LDRB R0, [R0] \n\
/* 08013acc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013ace */ BEQ branch_08013b3c \n\
/* 08013ad0 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 08013ad2 */ ADDS R3, 0x66 @ Add 0x66 to R3 \n\
/* 08013ad4 */ LDRH R1, [R3] \n\
/* 08013ad6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08013ad8 */ ADDS R0, 0x68 @ Add 0x68 to R0 \n\
/* 08013ada */ LDRH R0, [R0] \n\
/* 08013adc */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08013ade */ ASRS R0, R0, 0x8 \n\
/* 08013ae0 */ STRH R0, [R3] \n\
/* 08013ae2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08013ae4 */ ADDS R0, 0x62 @ Add 0x62 to R0 \n\
/* 08013ae6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013ae8 */ LDRSH R0, [R0, R1] \n\
/* 08013aea */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08013aec */ ADDS R1, 0x5E @ Add 0x5E to R1 \n\
/* 08013aee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08013af0 */ LDRSH R1, [R1, R2] \n\
/* 08013af2 */ LDRH R2, [R3] \n\
/* 08013af4 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08013af6 */ LSLS R4, R4, 0x1 \n\
/* 08013af8 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08013afa */ BL func_08008f04 \n\
/* 08013afe */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08013b00 */ LDR R2, [R6] \n\
/* 08013b02 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08013b04 */ ADDS R0, 0x64 @ Add 0x64 to R0 \n\
/* 08013b06 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013b08 */ LDRSH R0, [R0, R3] \n\
/* 08013b0a */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08013b0c */ ADDS R1, 0x60 @ Add 0x60 to R1 \n\
/* 08013b0e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013b10 */ LDRSH R1, [R1, R3] \n\
/* 08013b12 */ ADDS R2, 0x66 @ Add 0x66 to R2 \n\
/* 08013b14 */ LDRH R2, [R2] \n\
/* 08013b16 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08013b18 */ BL func_08008f04 \n\
/* 08013b1c */ LSLS R1, R5, 0x10 \n\
/* 08013b1e */ ASRS R1, R1, 0x10 \n\
/* 08013b20 */ LSLS R2, R0, 0x10 \n\
/* 08013b22 */ ASRS R2, R2, 0x10 \n\
/* 08013b24 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08013b26 */ BL scene_set_bg_layer_pos \n\
/* 08013b2a */ LDR R1, [R6] \n\
/* 08013b2c */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08013b2e */ ADDS R0, 0x66 @ Add 0x66 to R0 \n\
/* 08013b30 */ LDRH R0, [R0] \n\
/* 08013b32 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013b34 */ BNE branch_08013b3c \n\
/* 08013b36 */ ADDS R1, 0x5C @ Add 0x5C to R1 \n\
/* 08013b38 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013b3a */ STRB R0, [R1] \n\
 \n\
branch_08013b3c: \n\
/* 08013b3c */ POP {R4-R6} \n\
/* 08013b3e */ POP {R0} \n\
/* 08013b40 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
