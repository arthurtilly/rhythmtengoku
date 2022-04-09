asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014978 \n\
/* 08014978 */ PUSH {R4-R7, LR} \n\
/* 0801497a */ SUB SP, 0x4 \n\
/* 0801497c */ LDR R6, =D_030046a4 \n\
/* 0801497e */ LDR R2, [R6] \n\
/* 08014980 */ LDR R7, =0x2d9 \n\
/* 08014982 */ ADDS R1, R2, R7 @ Set R1 to R2 + R7 \n\
/* 08014984 */ LDRB R0, [R1] \n\
/* 08014986 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08014988 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0801498a */ BEQ branch_08014998 \n\
/* 0801498c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0801498e */ B branch_08014b5e \n\
\n\
.ltorg \n\
 \n\
branch_08014998: \n\
/* 08014998 */ LDR R0, =0x4f4 \n\
/* 0801499a */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0801499c */ LDRB R0, [R1] \n\
/* 0801499e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080149a0 */ BEQ branch_08014a14 \n\
/* 080149a2 */ STRB R3, [R1] \n\
/* 080149a4 */ LDR R0, [R6] \n\
/* 080149a6 */ LDR R2, =0x4f5 \n\
/* 080149a8 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 080149aa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080149ac */ LDRSB R5, [R1, R5] \n\
/* 080149ae */ LDR R3, =0x4f6 \n\
/* 080149b0 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 080149b2 */ LDRB R1, [R1] \n\
/* 080149b4 */ LSLS R1, R1, 0x18 \n\
/* 080149b6 */ ASRS R1, R1, 0x18 \n\
/* 080149b8 */ MOVS R2, 0xCA @ Set R2 to 0xCA \n\
/* 080149ba */ LSLS R2, R2, 0x2 \n\
/* 080149bc */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080149be */ STRB R5, [R0] \n\
/* 080149c0 */ LDR R0, [R6] \n\
/* 080149c2 */ LDR R3, =0x329 \n\
/* 080149c4 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080149c6 */ STRB R1, [R0] \n\
/* 080149c8 */ MOV R4, SP @ Set R4 to SP \n\
/* 080149ca */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 080149cc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080149ce */ MOV R2, SP @ Set R2 to SP \n\
/* 080149d0 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080149d2 */ BL func_0801332c \n\
/* 080149d6 */ MOV R0, SP @ Set R0 to SP \n\
/* 080149d8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080149da */ LDRSH R0, [R0, R1] \n\
/* 080149dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080149de */ LDRSH R1, [R4, R2] \n\
/* 080149e0 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 080149e2 */ BL func_080139b0 \n\
/* 080149e6 */ LDR R2, [R6] \n\
/* 080149e8 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080149ea */ LDRSB R0, [R2, R0] \n\
/* 080149ec */ CMP R0, R5 @ Check R0 - R5 \n\
/* 080149ee */ BEQ branch_080149f8 \n\
/* 080149f0 */ LDRB R0, [R2, 0x8] \n\
/* 080149f2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080149f4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080149f6 */ STRB R0, [R2, 0x8] \n\
 \n\
branch_080149f8: \n\
/* 080149f8 */ LDR R0, [R6] \n\
/* 080149fa */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 080149fc */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 080149fe */ STRB R1, [R0] \n\
/* 08014a00 */ B branch_08014b60 \n\
\n\
.ltorg \n\
 \n\
branch_08014a14: \n\
/* 08014a14 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08014a16 */ BL func_08016290 \n\
/* 08014a1a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014a1c */ BEQ branch_08014a20 \n\
/* 08014a1e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08014a20: \n\
/* 08014a20 */ LDR R1, [R6] \n\
/* 08014a22 */ LDR R3, =0x2da \n\
/* 08014a24 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08014a26 */ LDRB R0, [R0] \n\
/* 08014a28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014a2a */ BNE branch_08014a38 \n\
/* 08014a2c */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 08014a2e */ LSLS R2, R2, 0x2 \n\
/* 08014a30 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08014a32 */ LDRB R0, [R0] \n\
/* 08014a34 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014a36 */ BEQ branch_08014a3e \n\
 \n\
branch_08014a38: \n\
/* 08014a38 */ BL func_0801490c \n\
/* 08014a3c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08014a3e: \n\
/* 08014a3e */ LDR R4, =D_030046a4 \n\
/* 08014a40 */ LDR R2, [R4] \n\
/* 08014a42 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08014a44 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08014a46 */ LDRB R0, [R0] \n\
/* 08014a48 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014a4a */ BEQ branch_08014a4e \n\
/* 08014a4c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08014a4e: \n\
/* 08014a4e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08014a50 */ BNE branch_08014a54 \n\
/* 08014a52 */ B branch_08014b60 \n\
 \n\
branch_08014a54: \n\
/* 08014a54 */ MOVS R3, 0xCA @ Set R3 to 0xCA \n\
/* 08014a56 */ LSLS R3, R3, 0x2 \n\
/* 08014a58 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08014a5a */ LDRH R0, [R2, 0x10] \n\
/* 08014a5c */ LDRH R3, [R1] \n\
/* 08014a5e */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08014a60 */ BEQ branch_08014acc \n\
/* 08014a62 */ MOVS R3, 0x9F @ Set R3 to 0x9F \n\
/* 08014a64 */ LSLS R3, R3, 0x3 \n\
/* 08014a66 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08014a68 */ LDRH R3, [R0] \n\
/* 08014a6a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08014a6c */ BEQ branch_08014a90 \n\
/* 08014a6e */ LDR R1, =0x2d9 \n\
/* 08014a70 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08014a72 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014a74 */ STRB R3, [R0] \n\
/* 08014a76 */ LDR R0, [R4] \n\
/* 08014a78 */ MOVS R2, 0x9F @ Set R2 to 0x9F \n\
/* 08014a7a */ LSLS R2, R2, 0x3 \n\
/* 08014a7c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08014a7e */ STRH R1, [R0] \n\
/* 08014a80 */ B branch_08014b60 \n\
\n\
.ltorg \n\
 \n\
branch_08014a90: \n\
/* 08014a90 */ LDRB R0, [R2, 0x10] \n\
/* 08014a92 */ STRB R0, [R1] \n\
/* 08014a94 */ LDR R0, [R4] \n\
/* 08014a96 */ LDRB R1, [R0, 0x11] \n\
/* 08014a98 */ LDR R3, =0x329 \n\
/* 08014a9a */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08014a9c */ STRB R1, [R0] \n\
/* 08014a9e */ LDR R1, [R4] \n\
/* 08014aa0 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08014aa2 */ LDRSB R0, [R1, R0] \n\
/* 08014aa4 */ LDRB R1, [R1, 0x11] \n\
/* 08014aa6 */ LSLS R1, R1, 0x18 \n\
/* 08014aa8 */ ASRS R1, R1, 0x18 \n\
/* 08014aaa */ MOV R4, SP @ Set R4 to SP \n\
/* 08014aac */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08014aae */ MOV R2, SP @ Set R2 to SP \n\
/* 08014ab0 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08014ab2 */ BL func_0801332c \n\
/* 08014ab6 */ MOV R0, SP @ Set R0 to SP \n\
/* 08014ab8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014aba */ LDRSH R0, [R0, R1] \n\
/* 08014abc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014abe */ LDRSH R1, [R4, R2] \n\
/* 08014ac0 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08014ac2 */ BL func_080139b0 \n\
/* 08014ac6 */ B branch_08014b60 \n\
\n\
.ltorg \n\
 \n\
branch_08014acc: \n\
/* 08014acc */ MOVS R3, 0x9F @ Set R3 to 0x9F \n\
/* 08014ace */ LSLS R3, R3, 0x3 \n\
/* 08014ad0 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08014ad2 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08014ad4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08014ad6 */ STRH R0, [R1] \n\
/* 08014ad8 */ MOVS R1, 0xB6 @ Set R1 to 0xB6 \n\
/* 08014ada */ LSLS R1, R1, 0x2 \n\
/* 08014adc */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08014ade */ STRB R6, [R0] \n\
/* 08014ae0 */ LDR R2, [R4] \n\
/* 08014ae2 */ LDRB R1, [R2, 0x8] \n\
/* 08014ae4 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08014ae6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08014ae8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08014aea */ STRB R0, [R2, 0x8] \n\
/* 08014aec */ LDR R5, =D_030046a8 \n\
/* 08014aee */ LDR R1, [R5] \n\
/* 08014af0 */ LDR R0, [R4] \n\
/* 08014af2 */ LDRB R0, [R0, 0x10] \n\
/* 08014af4 */ STRB R0, [R1, 0x10] \n\
/* 08014af6 */ LDR R1, [R5] \n\
/* 08014af8 */ LDR R0, [R4] \n\
/* 08014afa */ LDRB R0, [R0, 0x11] \n\
/* 08014afc */ STRB R0, [R1, 0x11] \n\
/* 08014afe */ LDR R1, [R4] \n\
/* 08014b00 */ LDR R2, =0x4f3 \n\
/* 08014b02 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08014b04 */ LDRB R0, [R0] \n\
/* 08014b06 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014b08 */ BEQ branch_08014b24 \n\
/* 08014b0a */ SUBS R3, 0x7 @ Subtract 0x7 from R3 \n\
/* 08014b0c */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08014b0e */ LDRB R0, [R0] \n\
/* 08014b10 */ LSLS R0, R0, 0x18 \n\
/* 08014b12 */ ASRS R0, R0, 0x18 \n\
/* 08014b14 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 08014b16 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014b18 */ LDRB R1, [R1] \n\
/* 08014b1a */ LSLS R1, R1, 0x18 \n\
/* 08014b1c */ ASRS R1, R1, 0x18 \n\
/* 08014b1e */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08014b20 */ BL func_08013348 \n\
 \n\
branch_08014b24: \n\
/* 08014b24 */ BL func_08010478 \n\
/* 08014b28 */ LDR R1, [R4] \n\
/* 08014b2a */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 08014b2c */ LSLS R3, R3, 0x2 \n\
/* 08014b2e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08014b30 */ LDRB R0, [R0] \n\
/* 08014b32 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014b34 */ BEQ branch_08014b5c \n\
/* 08014b36 */ LDR R0, [R5] \n\
/* 08014b38 */ LDR R1, =0x279 \n\
/* 08014b3a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014b3c */ LDRB R0, [R0] \n\
/* 08014b3e */ BL func_08012cb4 \n\
/* 08014b42 */ LDR R0, [R4] \n\
/* 08014b44 */ MOVS R2, 0xD0 @ Set R2 to 0xD0 \n\
/* 08014b46 */ LSLS R2, R2, 0x2 \n\
/* 08014b48 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08014b4a */ STRB R6, [R0] \n\
/* 08014b4c */ B branch_08014b60 \n\
\n\
.ltorg \n\
 \n\
branch_08014b5c: \n\
/* 08014b5c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
 \n\
branch_08014b5e: \n\
/* 08014b5e */ STRB R0, [R1] \n\
 \n\
branch_08014b60: \n\
/* 08014b60 */ ADD SP, 0x4 \n\
/* 08014b62 */ POP {R4-R7} \n\
/* 08014b64 */ POP {R0} \n\
/* 08014b66 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
