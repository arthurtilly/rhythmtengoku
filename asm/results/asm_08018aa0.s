asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018aa0 \n\
/* 08018aa0 */ PUSH {R4-R6, LR} \n\
/* 08018aa2 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 08018aa4 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 08018aa6 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08018aa8 */ PUSH {R4-R6} \n\
/* 08018aaa */ SUB SP, 0x14 \n\
/* 08018aac */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018aae */ BL func_08007324 \n\
/* 08018ab2 */ BL func_080073f0 \n\
/* 08018ab6 */ BL func_0800c3b8 \n\
/* 08018aba */ LSLS R0, R0, 0x10 \n\
/* 08018abc */ LSRS R0, R0, 0x10 \n\
/* 08018abe */ LDR R1, =D_089de670 \n\
/* 08018ac0 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 08018ac2 */ LSLS R3, R3, 0x2 \n\
/* 08018ac4 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08018ac6 */ STR R2, [SP] \n\
/* 08018ac8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018aca */ BL func_08005124 \n\
/* 08018ace */ LDR R4, =D_030046a4 \n\
/* 08018ad0 */ LDR R1, [R4] \n\
/* 08018ad2 */ STR R0, [R1] \n\
/* 08018ad4 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08018ad6 */ LSLS R0, R0, 0x2 \n\
/* 08018ad8 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08018ada */ BL func_0800c660 \n\
/* 08018ade */ LDR R1, [R4] \n\
/* 08018ae0 */ STR R0, [R1, 0x4] \n\
/* 08018ae2 */ LDR R1, =D_06014000 \n\
/* 08018ae4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08018ae6 */ LSLS R2, R2, 0x7 \n\
/* 08018ae8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08018aea */ LSLS R0, R0, 0x2 \n\
/* 08018aec */ STR R0, [SP] \n\
/* 08018aee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018af0 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08018af2 */ BL func_080018e0 \n\
/* 08018af6 */ LDR R0, [R4] \n\
/* 08018af8 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 08018afa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08018afc */ STRB R5, [R0] \n\
/* 08018afe */ LDR R0, =D_03005380 \n\
/* 08018b00 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08018b02 */ LDR R0, [R0] \n\
/* 08018b04 */ LDR R1, =D_0890b6ac \n\
/* 08018b06 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08018b08 */ STR R2, [SP] \n\
/* 08018b0a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08018b0c */ LSLS R2, R2, 0x4 \n\
/* 08018b0e */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08018b10 */ STR R2, [SP, 0x4] \n\
/* 08018b12 */ STR R5, [SP, 0x8] \n\
/* 08018b14 */ STR R5, [SP, 0xC] \n\
/* 08018b16 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08018b18 */ LSLS R2, R2, 0x8 \n\
/* 08018b1a */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08018b1c */ STR R2, [SP, 0x10] \n\
/* 08018b1e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018b20 */ MOVS R3, 0x2D @ Set R3 to 0x2D \n\
/* 08018b22 */ BL func_0804d160 \n\
/* 08018b26 */ LDR R1, [R4] \n\
/* 08018b28 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08018b2a */ STRH R0, [R1, 0xE] \n\
/* 08018b2c */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08018b2e */ LDR R0, [R1] \n\
/* 08018b30 */ LDR R1, =D_0890b6bc \n\
/* 08018b32 */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 08018b34 */ STR R2, [SP] \n\
/* 08018b36 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08018b38 */ STR R2, [SP, 0x4] \n\
/* 08018b3a */ STR R5, [SP, 0x8] \n\
/* 08018b3c */ STR R5, [SP, 0xC] \n\
/* 08018b3e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08018b40 */ STR R2, [SP, 0x10] \n\
/* 08018b42 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018b44 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 08018b46 */ BL func_0804d160 \n\
/* 08018b4a */ LDR R1, [R4] \n\
/* 08018b4c */ STRH R0, [R1, 0x10] \n\
/* 08018b4e */ BL func_08018a80 \n\
/* 08018b52 */ LDR R0, =D_03005b3c \n\
/* 08018b54 */ STRB R6, [R0] \n\
/* 08018b56 */ LDR R0, [R4] \n\
/* 08018b58 */ STR R5, [R0, 0x8] \n\
/* 08018b5a */ MOVS R1, 0x93 @ Set R1 to 0x93 \n\
/* 08018b5c */ LSLS R1, R1, 0x1 \n\
/* 08018b5e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018b60 */ STRB R6, [R0] \n\
/* 08018b62 */ LDR R0, [R4] \n\
/* 08018b64 */ LDR R2, =0x127 \n\
/* 08018b66 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08018b68 */ STRB R6, [R0] \n\
/* 08018b6a */ ADD SP, 0x14 \n\
/* 08018b6c */ POP {R3-R5} \n\
/* 08018b6e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08018b70 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08018b72 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08018b74 */ POP {R4-R6} \n\
/* 08018b76 */ POP {R0} \n\
/* 08018b78 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
