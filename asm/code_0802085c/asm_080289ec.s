asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080289ec \n\
/* 080289ec */ PUSH {R4-R7, LR} \n\
/* 080289ee */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080289f0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080289f2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080289f4 */ PUSH {R5-R7} \n\
/* 080289f6 */ SUB SP, 0x20 \n\
/* 080289f8 */ STR R0, [SP, 0x14] \n\
/* 080289fa */ LDR R7, =D_030055d0 \n\
/* 080289fc */ LDR R0, [R7] \n\
/* 080289fe */ STR R0, [SP, 0x18] \n\
/* 08028a00 */ MOVS R1, 0xD5 @ Set R1 to 0xD5 \n\
/* 08028a02 */ LSLS R1, R1, 0x2 \n\
/* 08028a04 */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 08028a06 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028a08 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08028a0a */ MOV R3, SP @ Set R3 to SP \n\
/* 08028a0c */ LDRB R3, [R3, 0x14] \n\
/* 08028a0e */ STRB R3, [R0] \n\
/* 08028a10 */ BL func_080289c0 \n\
/* 08028a14 */ BL func_0800e0ec \n\
/* 08028a18 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 08028a1a */ STR R4, [SP] \n\
/* 08028a1c */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08028a1e */ STR R0, [SP, 0x4] \n\
/* 08028a20 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08028a22 */ STR R0, [SP, 0x8] \n\
/* 08028a24 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08028a26 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028a28 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08028a2a */ BL func_0800e0a0 \n\
/* 08028a2e */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 08028a30 */ STR R4, [SP] \n\
/* 08028a32 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08028a34 */ STR R0, [SP, 0x4] \n\
/* 08028a36 */ STR R4, [SP, 0x8] \n\
/* 08028a38 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08028a3a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08028a3c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028a3e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08028a40 */ BL func_0800e0a0 \n\
/* 08028a44 */ STR R4, [SP] \n\
/* 08028a46 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08028a48 */ STR R0, [SP, 0x4] \n\
/* 08028a4a */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08028a4c */ STR R0, [SP, 0x8] \n\
/* 08028a4e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08028a50 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028a52 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08028a54 */ BL func_0800e0a0 \n\
/* 08028a58 */ LDR R1, =D_03005380 \n\
/* 08028a5a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08028a5c */ LDR R0, [R1] \n\
/* 08028a5e */ LDR R1, =D_088c5da0 \n\
/* 08028a60 */ MOVS R6, 0x64 @ Set R6 to 0x64 \n\
/* 08028a62 */ STR R6, [SP] \n\
/* 08028a64 */ LDR R2, =0x0000480c \n\
/* 08028a66 */ STR R2, [SP, 0x4] \n\
/* 08028a68 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028a6a */ STR R2, [SP, 0x8] \n\
/* 08028a6c */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 08028a6e */ STR R4, [SP, 0xC] \n\
/* 08028a70 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028a72 */ STR R3, [SP, 0x10] \n\
/* 08028a74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028a76 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028a78 */ BL func_0804d160 \n\
/* 08028a7c */ STRH R0, [R5] \n\
/* 08028a7e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028a80 */ LDR R0, [R1] \n\
/* 08028a82 */ LDR R1, =D_088c5dc0 \n\
/* 08028a84 */ STR R6, [SP] \n\
/* 08028a86 */ LDR R2, =0x0000480f \n\
/* 08028a88 */ STR R2, [SP, 0x4] \n\
/* 08028a8a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028a8c */ STR R2, [SP, 0x8] \n\
/* 08028a8e */ STR R4, [SP, 0xC] \n\
/* 08028a90 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028a92 */ STR R3, [SP, 0x10] \n\
/* 08028a94 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028a96 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028a98 */ BL func_0804d160 \n\
/* 08028a9c */ STRH R0, [R5, 0x2] \n\
/* 08028a9e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028aa0 */ LDR R0, [R1] \n\
/* 08028aa2 */ LDR R1, =D_088c5e78 \n\
/* 08028aa4 */ STR R6, [SP] \n\
/* 08028aa6 */ LDR R2, =0x00004814 \n\
/* 08028aa8 */ STR R2, [SP, 0x4] \n\
/* 08028aaa */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028aac */ STR R2, [SP, 0x8] \n\
/* 08028aae */ STR R4, [SP, 0xC] \n\
/* 08028ab0 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028ab2 */ STR R3, [SP, 0x10] \n\
/* 08028ab4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028ab6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028ab8 */ BL func_0804d160 \n\
/* 08028abc */ STRH R0, [R5, 0x4] \n\
/* 08028abe */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028ac0 */ LDR R0, [R1] \n\
/* 08028ac2 */ LDR R1, =D_088c5de0 \n\
/* 08028ac4 */ STR R6, [SP] \n\
/* 08028ac6 */ LDR R2, =0x00004819 \n\
/* 08028ac8 */ STR R2, [SP, 0x4] \n\
/* 08028aca */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028acc */ STR R2, [SP, 0x8] \n\
/* 08028ace */ STR R4, [SP, 0xC] \n\
/* 08028ad0 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028ad2 */ STR R3, [SP, 0x10] \n\
/* 08028ad4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028ad6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028ad8 */ BL func_0804d160 \n\
/* 08028adc */ STRH R0, [R5, 0x6] \n\
/* 08028ade */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028ae0 */ LDR R0, [R1] \n\
/* 08028ae2 */ LDR R1, =D_088c64f8 \n\
/* 08028ae4 */ STR R6, [SP] \n\
/* 08028ae6 */ LDR R2, =0x00004808 \n\
/* 08028ae8 */ STR R2, [SP, 0x4] \n\
/* 08028aea */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028aec */ STR R2, [SP, 0x8] \n\
/* 08028aee */ STR R4, [SP, 0xC] \n\
/* 08028af0 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08028af2 */ LSLS R3, R3, 0x8 \n\
/* 08028af4 */ STR R3, [SP, 0x10] \n\
/* 08028af6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028af8 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028afa */ BL func_0804d160 \n\
/* 08028afe */ STRH R0, [R5, 0x10] \n\
/* 08028b00 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028b02 */ LDR R0, [R1] \n\
/* 08028b04 */ LDR R1, =D_088c5f08 \n\
/* 08028b06 */ MOVS R2, 0x61 @ Set R2 to 0x61 \n\
/* 08028b08 */ STR R2, [SP] \n\
/* 08028b0a */ LDR R2, =0x0000480a \n\
/* 08028b0c */ STR R2, [SP, 0x4] \n\
/* 08028b0e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028b10 */ STR R2, [SP, 0x8] \n\
/* 08028b12 */ STR R4, [SP, 0xC] \n\
/* 08028b14 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028b16 */ STR R3, [SP, 0x10] \n\
/* 08028b18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028b1a */ MOVS R3, 0x7B @ Set R3 to 0x7B \n\
/* 08028b1c */ BL func_0804d160 \n\
/* 08028b20 */ STRH R0, [R5, 0xA] \n\
/* 08028b22 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028b24 */ LDR R0, [R1] \n\
/* 08028b26 */ LDR R1, =D_088c62f0 \n\
/* 08028b28 */ MOVS R2, 0x60 @ Set R2 to 0x60 \n\
/* 08028b2a */ STR R2, [SP] \n\
/* 08028b2c */ LDR R2, =0x0000480b \n\
/* 08028b2e */ STR R2, [SP, 0x4] \n\
/* 08028b30 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028b32 */ STR R2, [SP, 0x8] \n\
/* 08028b34 */ STR R4, [SP, 0xC] \n\
/* 08028b36 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028b38 */ STR R3, [SP, 0x10] \n\
/* 08028b3a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028b3c */ MOVS R3, 0x77 @ Set R3 to 0x77 \n\
/* 08028b3e */ BL func_0804d160 \n\
/* 08028b42 */ STRH R0, [R5, 0x8] \n\
/* 08028b44 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028b46 */ LDR R0, [R1] \n\
/* 08028b48 */ LDR R1, =D_088c5e98 \n\
/* 08028b4a */ STR R6, [SP] \n\
/* 08028b4c */ LDR R2, =0x0000481e \n\
/* 08028b4e */ STR R2, [SP, 0x4] \n\
/* 08028b50 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028b52 */ STR R2, [SP, 0x8] \n\
/* 08028b54 */ STR R4, [SP, 0xC] \n\
/* 08028b56 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028b58 */ STR R3, [SP, 0x10] \n\
/* 08028b5a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028b5c */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028b5e */ BL func_0804d160 \n\
/* 08028b62 */ STRH R0, [R5, 0xE] \n\
/* 08028b64 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028b66 */ LDR R0, [R1] \n\
/* 08028b68 */ LDR R1, =D_088c5e08 \n\
/* 08028b6a */ STR R6, [SP] \n\
/* 08028b6c */ LDR R2, =0x000047ec \n\
/* 08028b6e */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08028b70 */ STR R2, [SP, 0x4] \n\
/* 08028b72 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08028b74 */ STR R3, [SP, 0x8] \n\
/* 08028b76 */ STR R4, [SP, 0xC] \n\
/* 08028b78 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08028b7a */ STR R2, [SP, 0x10] \n\
/* 08028b7c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028b7e */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028b80 */ BL func_0804d160 \n\
/* 08028b84 */ STRH R0, [R5, 0xC] \n\
/* 08028b86 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08028b88 */ LDR R0, [R3] \n\
/* 08028b8a */ LDR R1, =D_088c6150 \n\
/* 08028b8c */ STR R6, [SP] \n\
/* 08028b8e */ LDR R2, =0x000047f4 \n\
/* 08028b90 */ STR R2, [SP, 0x4] \n\
/* 08028b92 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028b94 */ STR R2, [SP, 0x8] \n\
/* 08028b96 */ STR R4, [SP, 0xC] \n\
/* 08028b98 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028b9a */ STR R3, [SP, 0x10] \n\
/* 08028b9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028b9e */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028ba0 */ BL func_0804d160 \n\
/* 08028ba4 */ STRH R0, [R5, 0x12] \n\
/* 08028ba6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028ba8 */ LDR R0, [R1] \n\
/* 08028baa */ LDR R1, =D_088c6170 \n\
/* 08028bac */ STR R6, [SP] \n\
/* 08028bae */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08028bb0 */ STR R2, [SP, 0x4] \n\
/* 08028bb2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08028bb4 */ STR R3, [SP, 0x8] \n\
/* 08028bb6 */ STR R4, [SP, 0xC] \n\
/* 08028bb8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08028bba */ STR R2, [SP, 0x10] \n\
/* 08028bbc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028bbe */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028bc0 */ BL func_0804d160 \n\
/* 08028bc4 */ STRH R0, [R5, 0x14] \n\
/* 08028bc6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08028bc8 */ LDR R0, [R3] \n\
/* 08028bca */ LDR R1, =D_088c6190 \n\
/* 08028bcc */ STR R6, [SP] \n\
/* 08028bce */ LDR R2, =0x000047ee \n\
/* 08028bd0 */ STR R2, [SP, 0x4] \n\
/* 08028bd2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028bd4 */ STR R2, [SP, 0x8] \n\
/* 08028bd6 */ STR R4, [SP, 0xC] \n\
/* 08028bd8 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028bda */ STR R3, [SP, 0x10] \n\
/* 08028bdc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028bde */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028be0 */ BL func_0804d160 \n\
/* 08028be4 */ STRH R0, [R5, 0x16] \n\
/* 08028be6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028be8 */ LDR R0, [R1] \n\
/* 08028bea */ LDR R1, =D_088c62d0 \n\
/* 08028bec */ STR R6, [SP] \n\
/* 08028bee */ LDR R2, =0x000047fb \n\
/* 08028bf0 */ STR R2, [SP, 0x4] \n\
/* 08028bf2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028bf4 */ STR R2, [SP, 0x8] \n\
/* 08028bf6 */ STR R4, [SP, 0xC] \n\
/* 08028bf8 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028bfa */ STR R3, [SP, 0x10] \n\
/* 08028bfc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028bfe */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028c00 */ BL func_0804d160 \n\
/* 08028c04 */ STRH R0, [R5, 0x18] \n\
/* 08028c06 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028c08 */ LDR R0, [R1] \n\
/* 08028c0a */ LDR R1, =D_088c6000 \n\
/* 08028c0c */ MOVS R2, 0x5A @ Set R2 to 0x5A \n\
/* 08028c0e */ STR R2, [SP] \n\
/* 08028c10 */ LDR R2, =0x000047f6 \n\
/* 08028c12 */ STR R2, [SP, 0x4] \n\
/* 08028c14 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08028c16 */ STR R3, [SP, 0x8] \n\
/* 08028c18 */ STR R4, [SP, 0xC] \n\
/* 08028c1a */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08028c1c */ STR R2, [SP, 0x10] \n\
/* 08028c1e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028c20 */ MOVS R3, 0x66 @ Set R3 to 0x66 \n\
/* 08028c22 */ BL func_0804d160 \n\
/* 08028c26 */ STRH R0, [R5, 0x1C] \n\
/* 08028c28 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08028c2a */ LDR R0, [R3] \n\
/* 08028c2c */ LDR R1, =D_088c5fb0 \n\
/* 08028c2e */ STR R6, [SP] \n\
/* 08028c30 */ LDR R2, =0x000047e2 \n\
/* 08028c32 */ STR R2, [SP, 0x4] \n\
/* 08028c34 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028c36 */ STR R2, [SP, 0x8] \n\
/* 08028c38 */ STR R4, [SP, 0xC] \n\
/* 08028c3a */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028c3c */ STR R3, [SP, 0x10] \n\
/* 08028c3e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028c40 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028c42 */ BL func_0804d160 \n\
/* 08028c46 */ STRH R0, [R5, 0x1A] \n\
/* 08028c48 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08028c4a */ LDR R0, [R1] \n\
/* 08028c4c */ LDR R1, =D_088c5f40 \n\
/* 08028c4e */ STR R6, [SP] \n\
/* 08028c50 */ LDR R2, =0x000047f0 \n\
/* 08028c52 */ STR R2, [SP, 0x4] \n\
/* 08028c54 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028c56 */ STR R2, [SP, 0x8] \n\
/* 08028c58 */ STR R4, [SP, 0xC] \n\
/* 08028c5a */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028c5c */ STR R3, [SP, 0x10] \n\
/* 08028c5e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028c60 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08028c62 */ BL func_0804d160 \n\
/* 08028c66 */ STRH R0, [R5, 0x1E] \n\
/* 08028c68 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08028c6a */ LDR R0, [R4] \n\
/* 08028c6c */ LDR R1, =D_088c6378 \n\
/* 08028c6e */ MOVS R2, 0x52 @ Set R2 to 0x52 \n\
/* 08028c70 */ STR R2, [SP] \n\
/* 08028c72 */ LDR R2, =0x000047eb \n\
/* 08028c74 */ STR R2, [SP, 0x4] \n\
/* 08028c76 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028c78 */ STR R2, [SP, 0x8] \n\
/* 08028c7a */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028c7c */ STR R3, [SP, 0xC] \n\
/* 08028c7e */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08028c80 */ LSLS R4, R4, 0x8 \n\
/* 08028c82 */ STR R4, [SP, 0x10] \n\
/* 08028c84 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028c86 */ MOVS R3, 0x63 @ Set R3 to 0x63 \n\
/* 08028c88 */ BL func_0804d160 \n\
/* 08028c8c */ STRH R0, [R5, 0x20] \n\
/* 08028c8e */ MOVS R0, 0x38 @ Set R0 to 0x38 \n\
/* 08028c90 */ STRH R0, [R5, 0x2E] \n\
/* 08028c92 */ LDR R0, =0x0000fff8 \n\
/* 08028c94 */ STRH R0, [R5, 0x30] \n\
/* 08028c96 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08028c98 */ LDR R0, [R0] \n\
/* 08028c9a */ STR R0, [SP, 0x1C] \n\
/* 08028c9c */ BL func_0800c3b8 \n\
/* 08028ca0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08028ca2 */ LSLS R1, R1, 0x10 \n\
/* 08028ca4 */ LSRS R1, R1, 0x10 \n\
/* 08028ca6 */ LDR R3, [SP, 0x18] \n\
/* 08028ca8 */ LDR R4, =0x00000382 \n\
/* 08028caa */ ADDS R2, R3, R4 @ Set R2 to R3 + R4 \n\
/* 08028cac */ MOVS R0, 0xE1 @ Set R0 to 0xE1 \n\
/* 08028cae */ LSLS R0, R0, 0x2 \n\
/* 08028cb0 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 08028cb2 */ LDR R0, [SP, 0x1C] \n\
/* 08028cb4 */ BL func_0804e188 \n\
/* 08028cb8 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08028cba */ STRH R0, [R5, 0x22] \n\
/* 08028cbc */ STRH R6, [R5, 0x24] \n\
/* 08028cbe */ MOVS R1, 0x66 @ Set R1 to 0x66 \n\
/* 08028cc0 */ STRH R1, [R5, 0x26] \n\
/* 08028cc2 */ MOVS R2, 0x5A @ Set R2 to 0x5A \n\
/* 08028cc4 */ STRH R2, [R5, 0x28] \n\
/* 08028cc6 */ STRH R0, [R5, 0x2A] \n\
/* 08028cc8 */ STRH R6, [R5, 0x2C] \n\
/* 08028cca */ BL func_0800c3b8 \n\
/* 08028cce */ LSLS R0, R0, 0x10 \n\
/* 08028cd0 */ LSRS R0, R0, 0x10 \n\
/* 08028cd2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08028cd4 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08028cd6 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08028cd8 */ BL func_0800a204 \n\
/* 08028cdc */ LDR R1, [R7] \n\
/* 08028cde */ ADDS R4, 0x72 @ Add 0x72 to R4 \n\
/* 08028ce0 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08028ce2 */ STR R0, [R1] \n\
/* 08028ce4 */ MOVS R1, 0x60 @ Set R1 to 0x60 \n\
/* 08028ce6 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 08028ce8 */ BL func_0800ac68 \n\
/* 08028cec */ LDR R0, [R7] \n\
/* 08028cee */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028cf0 */ LDR R0, [R0] \n\
/* 08028cf2 */ MOVS R6, 0xE0 @ Set R6 to 0xE0 \n\
/* 08028cf4 */ LSLS R6, R6, 0x3 \n\
/* 08028cf6 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08028cf8 */ BL func_0800aca0 \n\
/* 08028cfc */ LDR R0, [R7] \n\
/* 08028cfe */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028d00 */ LDR R0, [R0] \n\
/* 08028d02 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08028d04 */ BL func_0800acbc \n\
/* 08028d08 */ LDR R0, [R7] \n\
/* 08028d0a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028d0c */ LDR R0, [R0] \n\
/* 08028d0e */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08028d10 */ BL func_0800acb0 \n\
/* 08028d14 */ LDR R0, [R7] \n\
/* 08028d16 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028d18 */ LDR R0, [R0] \n\
/* 08028d1a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08028d1c */ BL func_0800acd8 \n\
/* 08028d20 */ LDR R1, [R7] \n\
/* 08028d22 */ ADDS R4, R1, R4 @ Set R4 to R1 + R4 \n\
/* 08028d24 */ LDR R0, [R4] \n\
/* 08028d26 */ LDR R4, =0x000003fa \n\
/* 08028d28 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08028d2a */ BL func_0800ada8 \n\
/* 08028d2e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08028d30 */ LDR R0, [R3] \n\
/* 08028d32 */ LDR R1, =D_088c61d8 \n\
/* 08028d34 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08028d36 */ STR R2, [SP] \n\
/* 08028d38 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08028d3a */ LSLS R5, R5, 0x4 \n\
/* 08028d3c */ STR R5, [SP, 0x4] \n\
/* 08028d3e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08028d40 */ STR R2, [SP, 0x8] \n\
/* 08028d42 */ STR R2, [SP, 0xC] \n\
/* 08028d44 */ STR R2, [SP, 0x10] \n\
/* 08028d46 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028d48 */ MOVS R3, 0xE0 @ Set R3 to 0xE0 \n\
/* 08028d4a */ BL func_0804d160 \n\
/* 08028d4e */ LDR R2, [R7] \n\
/* 08028d50 */ MOVS R3, 0xFE @ Set R3 to 0xFE \n\
/* 08028d52 */ LSLS R3, R3, 0x2 \n\
/* 08028d54 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08028d56 */ STRH R0, [R1] \n\
/* 08028d58 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08028d5a */ LDR R0, [R3] \n\
/* 08028d5c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08028d5e */ LDRSH R1, [R1, R3] \n\
/* 08028d60 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08028d62 */ BL func_0804db90 \n\
/* 08028d66 */ LDR R0, [R7] \n\
/* 08028d68 */ ADDS R4, R0, R4 @ Set R4 to R0 + R4 \n\
/* 08028d6a */ LDR R1, =0x0000ff70 \n\
/* 08028d6c */ STRH R1, [R4] \n\
/* 08028d6e */ MOVS R4, 0xFF @ Set R4 to 0xFF \n\
/* 08028d70 */ LSLS R4, R4, 0x2 \n\
/* 08028d72 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028d74 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08028d76 */ STRH R1, [R0] \n\
/* 08028d78 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08028d7a */ LDR R0, [R2] \n\
/* 08028d7c */ LDR R1, =D_088c61f0 \n\
/* 08028d7e */ MOVS R3, 0x66 @ Set R3 to 0x66 \n\
/* 08028d80 */ STR R3, [SP] \n\
/* 08028d82 */ STR R5, [SP, 0x4] \n\
/* 08028d84 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08028d86 */ STR R4, [SP, 0x8] \n\
/* 08028d88 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08028d8a */ STR R2, [SP, 0xC] \n\
/* 08028d8c */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08028d8e */ LSLS R3, R3, 0x8 \n\
/* 08028d90 */ STR R3, [SP, 0x10] \n\
/* 08028d92 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028d94 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 08028d96 */ BL func_0804d160 \n\
/* 08028d9a */ LDR R1, [R7] \n\
/* 08028d9c */ LDR R4, =0x0000040a \n\
/* 08028d9e */ ADDS R2, R1, R4 @ Set R2 to R1 + R4 \n\
/* 08028da0 */ STRH R0, [R2] \n\
/* 08028da2 */ LDR R0, =0x0000040c \n\
/* 08028da4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08028da6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028da8 */ STRB R2, [R1] \n\
/* 08028daa */ BL func_0800c3b8 \n\
/* 08028dae */ LSLS R0, R0, 0x10 \n\
/* 08028db0 */ LSRS R0, R0, 0x10 \n\
/* 08028db2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08028db4 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08028db6 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08028db8 */ BL func_0800a204 \n\
/* 08028dbc */ LDR R1, [R7] \n\
/* 08028dbe */ ADDS R4, 0x6 @ Add 0x6 to R4 \n\
/* 08028dc0 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08028dc2 */ STR R0, [R1] \n\
/* 08028dc4 */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 08028dc6 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08028dc8 */ BL func_0800ac68 \n\
/* 08028dcc */ LDR R0, [R7] \n\
/* 08028dce */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028dd0 */ LDR R0, [R0] \n\
/* 08028dd2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08028dd4 */ BL func_0800aca0 \n\
/* 08028dd8 */ LDR R0, [R7] \n\
/* 08028dda */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028ddc */ LDR R0, [R0] \n\
/* 08028dde */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08028de0 */ BL func_0800acbc \n\
/* 08028de4 */ B branch_08028e94 \n\
\n\
.ltorg \n\
 \n\
branch_08028e94: \n\
/* 08028e94 */ LDR R0, [R7] \n\
/* 08028e96 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028e98 */ LDR R0, [R0] \n\
/* 08028e9a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08028e9c */ BL func_0800acb0 \n\
/* 08028ea0 */ LDR R0, [R7] \n\
/* 08028ea2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028ea4 */ LDR R0, [R0] \n\
/* 08028ea6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08028ea8 */ BL func_0800acd8 \n\
/* 08028eac */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08028eae */ LDR R0, [R3] \n\
/* 08028eb0 */ LDR R1, =D_088c61c0 \n\
/* 08028eb2 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08028eb4 */ STR R2, [SP] \n\
/* 08028eb6 */ STR R5, [SP, 0x4] \n\
/* 08028eb8 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08028eba */ STR R4, [SP, 0x8] \n\
/* 08028ebc */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08028ebe */ STR R2, [SP, 0xC] \n\
/* 08028ec0 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08028ec2 */ LSLS R3, R3, 0x8 \n\
/* 08028ec4 */ STR R3, [SP, 0x10] \n\
/* 08028ec6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028ec8 */ MOVS R3, 0xF0 @ Set R3 to 0xF0 \n\
/* 08028eca */ BL func_0804d160 \n\
/* 08028ece */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08028ed0 */ LDR R0, [R7] \n\
/* 08028ed2 */ LDR R4, =0x000003f2 \n\
/* 08028ed4 */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 08028ed6 */ STRH R2, [R1] \n\
/* 08028ed8 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08028eda */ BL func_0802a9b4 \n\
/* 08028ede */ LDR R0, [R7] \n\
/* 08028ee0 */ SUBS R4, 0x26 @ Subtract 0x26 from R4 \n\
/* 08028ee2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08028ee4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08028ee6 */ STRB R1, [R0] \n\
/* 08028ee8 */ LDR R2, [SP, 0x14] \n\
/* 08028eea */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 08028eec */ BHI branch_08028efc \n\
/* 08028eee */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08028ef0 */ BCC branch_08028efc \n\
/* 08028ef2 */ BL func_0800061c \n\
/* 08028ef6 */ LDR R1, [R7] \n\
/* 08028ef8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08028efa */ STRB R0, [R1] \n\
 \n\
branch_08028efc: \n\
/* 08028efc */ LDR R0, =D_030055d0 \n\
/* 08028efe */ LDR R3, [R0] \n\
/* 08028f00 */ LDRB R1, [R3] \n\
/* 08028f02 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08028f04 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 08028f06 */ BNE branch_08028f62 \n\
/* 08028f08 */ LDR R4, =D_030046a8 \n\
/* 08028f0a */ LDR R1, [R4] \n\
/* 08028f0c */ MOVS R6, 0xF3 @ Set R6 to 0xF3 \n\
/* 08028f0e */ LSLS R6, R6, 0x2 \n\
/* 08028f10 */ ADDS R0, R3, R6 @ Set R0 to R3 + R6 \n\
/* 08028f12 */ LDRB R0, [R0] \n\
/* 08028f14 */ LSLS R0, R0, 0x2 \n\
/* 08028f16 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08028f18 */ ADDS R1, 0xC7 @ Add 0xC7 to R1 \n\
/* 08028f1a */ LDRB R1, [R1] \n\
/* 08028f1c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08028f1e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08028f20 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08028f22 */ BEQ branch_08028f62 \n\
/* 08028f24 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08028f26 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08028f28 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08028f2a: \n\
/* 08028f2a */ LDR R0, [R5] \n\
/* 08028f2c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08028f2e */ LDRB R1, [R0] \n\
/* 08028f30 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08028f32 */ STRB R1, [R0] \n\
/* 08028f34 */ LDR R0, [R4] \n\
/* 08028f36 */ ADDS R0, 0xC2 @ Add 0xC2 to R0 \n\
/* 08028f38 */ LSLS R1, R1, 0x18 \n\
/* 08028f3a */ LSRS R1, R1, 0x18 \n\
/* 08028f3c */ LDRB R0, [R0] \n\
/* 08028f3e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08028f40 */ BCC branch_08028f48 \n\
/* 08028f42 */ LDR R0, [R2] \n\
/* 08028f44 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08028f46 */ STRB R7, [R0] \n\
 \n\
branch_08028f48: \n\
/* 08028f48 */ LDR R1, [R4] \n\
/* 08028f4a */ LDR R0, [R5] \n\
/* 08028f4c */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 08028f4e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08028f50 */ LDRB R0, [R0] \n\
/* 08028f52 */ LSLS R0, R0, 0x2 \n\
/* 08028f54 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08028f56 */ ADDS R1, 0xC7 @ Add 0xC7 to R1 \n\
/* 08028f58 */ LDRB R1, [R1] \n\
/* 08028f5a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08028f5c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08028f5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08028f60 */ BNE branch_08028f2a \n\
 \n\
branch_08028f62: \n\
/* 08028f62 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08028f64 */ LDR R0, [R5] \n\
/* 08028f66 */ MOVS R3, 0xE2 @ Set R3 to 0xE2 \n\
/* 08028f68 */ LSLS R3, R3, 0x2 \n\
/* 08028f6a */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08028f6c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08028f6e */ STRB R1, [R0] \n\
/* 08028f70 */ LDR R4, [SP, 0x14] \n\
/* 08028f72 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08028f74 */ BEQ branch_08028f8c \n\
/* 08028f76 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08028f78 */ BEQ branch_08028fac \n\
/* 08028f7a */ B branch_08028fc6 \n\
\n\
.ltorg \n\
 \n\
branch_08028f8c: \n\
/* 08028f8c */ BL func_0801c504 \n\
/* 08028f90 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08028f92 */ BL func_08028950 \n\
/* 08028f96 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08028f98 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08028f9a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08028f9c */ BL func_080087d4 \n\
/* 08028fa0 */ LDR R1, [R5] \n\
/* 08028fa2 */ MOVS R2, 0xE2 @ Set R2 to 0xE2 \n\
/* 08028fa4 */ LSLS R2, R2, 0x2 \n\
/* 08028fa6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08028fa8 */ STRB R0, [R1] \n\
/* 08028faa */ B branch_08028fc6 \n\
 \n\
branch_08028fac: \n\
/* 08028fac */ LDR R2, [R2] \n\
/* 08028fae */ LDR R0, =D_030046a8 \n\
/* 08028fb0 */ LDR R1, [R0] \n\
/* 08028fb2 */ MOVS R4, 0xF3 @ Set R4 to 0xF3 \n\
/* 08028fb4 */ LSLS R4, R4, 0x2 \n\
/* 08028fb6 */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 08028fb8 */ LDRB R0, [R0] \n\
/* 08028fba */ LSLS R0, R0, 0x2 \n\
/* 08028fbc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08028fbe */ ADDS R1, 0xC6 @ Add 0xC6 to R1 \n\
/* 08028fc0 */ LDRB R0, [R1] \n\
/* 08028fc2 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08028fc4 */ STRB R0, [R2] \n\
 \n\
branch_08028fc6: \n\
/* 08028fc6 */ BL func_0800c3b8 \n\
/* 08028fca */ LSLS R0, R0, 0x10 \n\
/* 08028fcc */ LSRS R0, R0, 0x10 \n\
/* 08028fce */ MOVS R1, 0xE0 @ Set R1 to 0xE0 \n\
/* 08028fd0 */ LSLS R1, R1, 0x6 \n\
/* 08028fd2 */ BL func_08006590 \n\
/* 08028fd6 */ LDR R5, =D_030055d0 \n\
/* 08028fd8 */ LDR R2, [R5] \n\
/* 08028fda */ MOVS R3, 0xF1 @ Set R3 to 0xF1 \n\
/* 08028fdc */ LSLS R3, R3, 0x2 \n\
/* 08028fde */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08028fe0 */ STR R0, [R1] \n\
/* 08028fe2 */ LDR R4, =0x000003c2 \n\
/* 08028fe4 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08028fe6 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08028fe8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08028fea */ LDR R0, =0x000003f3 \n\
/* 08028fec */ STRH R0, [R2] \n\
/* 08028fee */ LDRH R0, [R2] \n\
/* 08028ff0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08028ff2 */ BL func_08017338 \n\
/* 08028ff6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08028ff8 */ BL func_080177a4 \n\
/* 08028ffc */ LDR R1, [R5] \n\
/* 08028ffe */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08029000 */ STRB R0, [R1, 0x1] \n\
/* 08029002 */ LDR R0, [R5] \n\
/* 08029004 */ LDR R1, =0x000003cd \n\
/* 08029006 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029008 */ STRB R6, [R0] \n\
/* 0802900a */ LDR R0, [R5] \n\
/* 0802900c */ LDR R2, =0x000003ce \n\
/* 0802900e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029010 */ STRB R6, [R0] \n\
/* 08029012 */ LDR R2, [R5] \n\
/* 08029014 */ MOVS R3, 0xF4 @ Set R3 to 0xF4 \n\
/* 08029016 */ LSLS R3, R3, 0x2 \n\
/* 08029018 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802901a */ ADDS R3, 0x4 @ Add 0x4 to R3 \n\
/* 0802901c */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802901e */ STR R4, [R0] \n\
/* 08029020 */ STR R4, [R1] \n\
/* 08029022 */ MOVS R0, 0xF6 @ Set R0 to 0xF6 \n\
/* 08029024 */ LSLS R0, R0, 0x2 \n\
/* 08029026 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 08029028 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 0802902a */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802902c */ STR R4, [R0] \n\
/* 0802902e */ STR R4, [R1] \n\
/* 08029030 */ MOVS R0, 0xF8 @ Set R0 to 0xF8 \n\
/* 08029032 */ LSLS R0, R0, 0x2 \n\
/* 08029034 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 08029036 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 08029038 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802903a */ STR R4, [R0] \n\
/* 0802903c */ STR R4, [R1] \n\
/* 0802903e */ MOVS R0, 0xFA @ Set R0 to 0xFA \n\
/* 08029040 */ LSLS R0, R0, 0x2 \n\
/* 08029042 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 08029044 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 08029046 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08029048 */ STR R4, [R0] \n\
/* 0802904a */ STR R4, [R1] \n\
/* 0802904c */ MOVS R0, 0xFC @ Set R0 to 0xFC \n\
/* 0802904e */ LSLS R0, R0, 0x2 \n\
/* 08029050 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 08029052 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08029054 */ STRB R0, [R1] \n\
/* 08029056 */ LDR R0, [R5] \n\
/* 08029058 */ LDR R1, =0x000003c1 \n\
/* 0802905a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802905c */ STRB R6, [R0] \n\
/* 0802905e */ LDR R0, [R5] \n\
/* 08029060 */ LDR R2, =0x0000057c \n\
/* 08029062 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029064 */ STR R4, [R0] \n\
/* 08029066 */ LDR R3, [SP, 0x14] \n\
/* 08029068 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 0802906a */ BLS branch_08029084 \n\
/* 0802906c */ CMP R3, 0x4 @ Compare R3 and 0x4 \n\
/* 0802906e */ BNE branch_08029084 \n\
/* 08029070 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08029072 */ BL func_0800e030 \n\
/* 08029076 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08029078 */ BL func_0800e030 \n\
/* 0802907c */ BL func_08027964 \n\
/* 08029080 */ BL func_08026e74 \n\
 \n\
branch_08029084: \n\
/* 08029084 */ BL func_080287b4 \n\
/* 08029088 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802908a */ BL func_080173d0 \n\
/* 0802908e */ ADD SP, 0x20 \n\
/* 08029090 */ POP {R3-R5} \n\
/* 08029092 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08029094 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08029096 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08029098 */ POP {R4-R7} \n\
/* 0802909a */ POP {R0} \n\
/* 0802909c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
