asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08027964 \n\
/* 08027964 */ PUSH {R4-R7, LR} \n\
/* 08027966 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08027968 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802796a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802796c */ PUSH {R5-R7} \n\
/* 0802796e */ SUB SP, 0x14 \n\
/* 08027970 */ LDR R4, =D_030055d0 \n\
/* 08027972 */ LDR R0, [R4] \n\
/* 08027974 */ LDR R1, =0x00000426 \n\
/* 08027976 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027978 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802797a */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0802797c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802797e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08027980 */ STRB R3, [R0] \n\
/* 08027982 */ LDR R1, [R4] \n\
/* 08027984 */ LDR R2, =0x0000041c \n\
/* 08027986 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08027988 */ STRH R7, [R0] \n\
/* 0802798a */ MOVS R3, 0x84 @ Set R3 to 0x84 \n\
/* 0802798c */ LSLS R3, R3, 0x3 \n\
/* 0802798e */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 08027990 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08027992 */ LSLS R0, R0, 0x7 \n\
/* 08027994 */ STR R0, [R2] \n\
/* 08027996 */ LDR R0, =0x00000427 \n\
/* 08027998 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802799a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802799c */ STRB R2, [R1] \n\
/* 0802799e */ LDR R0, [R4] \n\
/* 080279a0 */ ADDS R3, 0xE @ Add 0xE to R3 \n\
/* 080279a2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080279a4 */ STRB R2, [R0] \n\
/* 080279a6 */ LDR R0, [R4] \n\
/* 080279a8 */ LDR R1, =0x00000424 \n\
/* 080279aa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080279ac */ STRB R2, [R0] \n\
/* 080279ae */ LDR R0, [R4] \n\
/* 080279b0 */ MOVS R2, 0x8B @ Set R2 to 0x8B \n\
/* 080279b2 */ LSLS R2, R2, 0x3 \n\
/* 080279b4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080279b6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080279b8 */ STRB R3, [R0] \n\
/* 080279ba */ LDR R0, [R4] \n\
/* 080279bc */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 080279be */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 080279c0 */ STRH R7, [R1] \n\
/* 080279c2 */ LDR R3, =0x0000045c \n\
/* 080279c4 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080279c6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080279c8 */ STRB R1, [R0] \n\
/* 080279ca */ BL func_0800c3b8 \n\
/* 080279ce */ LSLS R0, R0, 0x10 \n\
/* 080279d0 */ LSRS R0, R0, 0x10 \n\
/* 080279d2 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 080279d4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080279d6 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080279d8 */ BL func_0800a204 \n\
/* 080279dc */ LDR R1, [R4] \n\
/* 080279de */ MOVS R5, 0x85 @ Set R5 to 0x85 \n\
/* 080279e0 */ LSLS R5, R5, 0x3 \n\
/* 080279e2 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080279e4 */ STR R0, [R1] \n\
/* 080279e6 */ MOVS R1, 0x6E @ Set R1 to 0x6E \n\
/* 080279e8 */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 080279ea */ BL func_0800ac68 \n\
/* 080279ee */ LDR R0, [R4] \n\
/* 080279f0 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080279f2 */ LDR R0, [R0] \n\
/* 080279f4 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 080279f6 */ LSLS R2, R2, 0x3 \n\
/* 080279f8 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 080279fa */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080279fc */ BL func_0800aca0 \n\
/* 08027a00 */ LDR R0, [R4] \n\
/* 08027a02 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08027a04 */ LDR R0, [R0] \n\
/* 08027a06 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08027a08 */ BL func_0800acbc \n\
/* 08027a0c */ LDR R0, [R4] \n\
/* 08027a0e */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08027a10 */ LDR R0, [R0] \n\
/* 08027a12 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08027a14 */ BL func_0800acb0 \n\
/* 08027a18 */ LDR R0, [R4] \n\
/* 08027a1a */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08027a1c */ LDR R0, [R0] \n\
/* 08027a1e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08027a20 */ BL func_0800acd8 \n\
/* 08027a24 */ LDR R0, [R4] \n\
/* 08027a26 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08027a28 */ LDR R0, [R0] \n\
/* 08027a2a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08027a2c */ BL func_0800acc8 \n\
/* 08027a30 */ LDR R6, =D_03005380 \n\
/* 08027a32 */ LDR R0, [R6] \n\
/* 08027a34 */ LDR R1, =D_088c8490 \n\
/* 08027a36 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08027a38 */ STR R3, [SP] \n\
/* 08027a3a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08027a3c */ STR R2, [SP, 0x4] \n\
/* 08027a3e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08027a40 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08027a42 */ STR R3, [SP, 0x8] \n\
/* 08027a44 */ STR R7, [SP, 0xC] \n\
/* 08027a46 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08027a48 */ LSLS R5, R5, 0x8 \n\
/* 08027a4a */ STR R5, [SP, 0x10] \n\
/* 08027a4c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027a4e */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08027a50 */ BL func_0804d160 \n\
/* 08027a54 */ LDR R1, [R4] \n\
/* 08027a56 */ LDR R2, =0x0000042c \n\
/* 08027a58 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08027a5a */ STRH R0, [R1] \n\
/* 08027a5c */ LDR R0, [R6] \n\
/* 08027a5e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08027a60 */ LDRSH R1, [R1, R3] \n\
/* 08027a62 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08027a64 */ LSLS R2, R2, 0x2 \n\
/* 08027a66 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08027a68 */ BL func_0804d890 \n\
/* 08027a6c */ LDR R0, [R6] \n\
/* 08027a6e */ LDR R1, =D_088c6548 \n\
/* 08027a70 */ MOVS R2, 0x60 @ Set R2 to 0x60 \n\
/* 08027a72 */ STR R2, [SP] \n\
/* 08027a74 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08027a76 */ STR R3, [SP, 0x4] \n\
/* 08027a78 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08027a7a */ STR R2, [SP, 0x8] \n\
/* 08027a7c */ STR R7, [SP, 0xC] \n\
/* 08027a7e */ STR R5, [SP, 0x10] \n\
/* 08027a80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027a82 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 08027a84 */ BL func_0804d160 \n\
/* 08027a88 */ LDR R1, [R4] \n\
/* 08027a8a */ LDR R3, =0x0000045e \n\
/* 08027a8c */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08027a8e */ STRH R0, [R1] \n\
/* 08027a90 */ LDR R0, [R6] \n\
/* 08027a92 */ LDR R1, =D_088c84b0 \n\
/* 08027a94 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 08027a96 */ STR R2, [SP] \n\
/* 08027a98 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08027a9a */ LSLS R2, R2, 0x3 \n\
/* 08027a9c */ STR R2, [SP, 0x4] \n\
/* 08027a9e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08027aa0 */ STR R2, [SP, 0x8] \n\
/* 08027aa2 */ STR R7, [SP, 0xC] \n\
/* 08027aa4 */ STR R5, [SP, 0x10] \n\
/* 08027aa6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027aa8 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08027aaa */ BL func_0804d160 \n\
/* 08027aae */ LDR R1, [R4] \n\
/* 08027ab0 */ MOVS R3, 0xAC @ Set R3 to 0xAC \n\
/* 08027ab2 */ LSLS R3, R3, 0x3 \n\
/* 08027ab4 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08027ab6 */ STRH R0, [R1] \n\
/* 08027ab8 */ LDR R0, [R6] \n\
/* 08027aba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027abc */ LDRSH R1, [R1, R2] \n\
/* 08027abe */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08027ac0 */ BL func_0804d890 \n\
/* 08027ac4 */ LDR R0, [R4] \n\
/* 08027ac6 */ LDR R3, =0x00000562 \n\
/* 08027ac8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08027aca */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08027acc */ STRB R1, [R0] \n\
/* 08027ace */ LDR R0, [R4] \n\
/* 08027ad0 */ LDR R2, =0x00000563 \n\
/* 08027ad2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08027ad4 */ STRB R1, [R0] \n\
/* 08027ad6 */ LDR R0, [R4] \n\
/* 08027ad8 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 08027ada */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08027adc */ STRH R7, [R0] \n\
/* 08027ade */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08027ae0: \n\
/* 08027ae0 */ LDR R0, [R6] \n\
/* 08027ae2 */ LDR R1, =D_089e172c \n\
/* 08027ae4 */ LSLS R4, R5, 0x2 \n\
/* 08027ae6 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 08027ae8 */ LDR R1, [R1] \n\
/* 08027aea */ LDR R2, =D_089e1748 \n\
/* 08027aec */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 08027aee */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08027af0 */ LDRSH R3, [R4, R7] \n\
/* 08027af2 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 08027af4 */ LDRSH R2, [R4, R7] \n\
/* 08027af6 */ STR R2, [SP] \n\
/* 08027af8 */ MOVS R2, 0x9E @ Set R2 to 0x9E \n\
/* 08027afa */ LSLS R2, R2, 0x7 \n\
/* 08027afc */ STR R2, [SP, 0x4] \n\
/* 08027afe */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08027b00 */ STR R2, [SP, 0x8] \n\
/* 08027b02 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08027b04 */ STR R2, [SP, 0xC] \n\
/* 08027b06 */ LDR R2, =0x00008002 \n\
/* 08027b08 */ STR R2, [SP, 0x10] \n\
/* 08027b0a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08027b0c */ BL func_0804d160 \n\
/* 08027b10 */ LDR R4, =D_030055d0 \n\
/* 08027b12 */ LDR R1, [R4] \n\
/* 08027b14 */ LSLS R2, R5, 0x1 \n\
/* 08027b16 */ MOVS R3, 0xAD @ Set R3 to 0xAD \n\
/* 08027b18 */ LSLS R3, R3, 0x3 \n\
/* 08027b1a */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08027b1c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08027b1e */ STRH R0, [R1] \n\
/* 08027b20 */ LDR R0, [R6] \n\
/* 08027b22 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08027b24 */ LDRSH R1, [R1, R7] \n\
/* 08027b26 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08027b28 */ LSLS R2, R2, 0x2 \n\
/* 08027b2a */ BL func_0804d890 \n\
/* 08027b2e */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08027b30 */ CMP R5, 0x6 @ Compare R5 and 0x6 \n\
/* 08027b32 */ BLS branch_08027ae0 \n\
/* 08027b34 */ LDR R0, [R4] \n\
/* 08027b36 */ LDR R1, =0x00000576 \n\
/* 08027b38 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027b3a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08027b3c */ STRB R1, [R0] \n\
/* 08027b3e */ LDR R0, [R4] \n\
/* 08027b40 */ MOVS R2, 0xAF @ Set R2 to 0xAF \n\
/* 08027b42 */ LSLS R2, R2, 0x3 \n\
/* 08027b44 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08027b46 */ STR R1, [R0] \n\
/* 08027b48 */ ADD SP, 0x14 \n\
/* 08027b4a */ POP {R3-R5} \n\
/* 08027b4c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08027b4e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08027b50 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08027b52 */ POP {R4-R7} \n\
/* 08027b54 */ POP {R0} \n\
/* 08027b56 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
