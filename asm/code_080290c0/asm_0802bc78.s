asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802bc78 \n\
/* 0802bc78 */ PUSH {R4-R6, LR} \n\
/* 0802bc7a */ SUB SP, 0x14 \n\
/* 0802bc7c */ LDR R5, =D_030055d0 \n\
/* 0802bc7e */ LDR R1, [R5] \n\
/* 0802bc80 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802bc82 */ STRB R0, [R1, 0x6] \n\
/* 0802bc84 */ BL func_0802bc4c \n\
/* 0802bc88 */ BL func_0800e0ec \n\
/* 0802bc8c */ STR R4, [SP] \n\
/* 0802bc8e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0802bc90 */ STR R0, [SP, 0x4] \n\
/* 0802bc92 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802bc94 */ STR R0, [SP, 0x8] \n\
/* 0802bc96 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802bc98 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802bc9a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bc9c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802bc9e */ BL func_0800e0a0 \n\
/* 0802bca2 */ STR R4, [SP] \n\
/* 0802bca4 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0802bca6 */ STR R0, [SP, 0x4] \n\
/* 0802bca8 */ STR R4, [SP, 0x8] \n\
/* 0802bcaa */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802bcac */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802bcae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bcb0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802bcb2 */ BL func_0800e0a0 \n\
/* 0802bcb6 */ BL func_0802d96c \n\
/* 0802bcba */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 0802bcbc */ LSLS R0, R0, 0x2 \n\
/* 0802bcbe */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802bcc0 */ BL func_0800c660 \n\
/* 0802bcc4 */ LDR R1, [R5] \n\
/* 0802bcc6 */ STR R0, [R1] \n\
/* 0802bcc8 */ LDR R1, =D_0805a3cc \n\
/* 0802bcca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bccc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802bcce */ BL func_08004b98 \n\
/* 0802bcd2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802bcd4 */ LDR R0, =D_03005380 \n\
/* 0802bcd6 */ LDR R0, [R0] \n\
/* 0802bcd8 */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 0802bcda */ STR R2, [SP] \n\
/* 0802bcdc */ STR R4, [SP, 0x4] \n\
/* 0802bcde */ STR R4, [SP, 0x8] \n\
/* 0802bce0 */ STR R4, [SP, 0xC] \n\
/* 0802bce2 */ STR R4, [SP, 0x10] \n\
/* 0802bce4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bce6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802bce8 */ BL func_0804d160 \n\
/* 0802bcec */ LDR R1, [R5] \n\
/* 0802bcee */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802bcf0 */ STRH R0, [R1, 0x4] \n\
/* 0802bcf2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802bcf4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802bcf6 */ BL func_08017338 \n\
/* 0802bcfa */ BL func_0802c23c \n\
/* 0802bcfe */ BL func_0802d104 \n\
/* 0802bd02 */ BL func_0802c40c \n\
/* 0802bd06 */ BL func_0802d394 \n\
/* 0802bd0a */ BL func_0802da84 \n\
/* 0802bd0e */ LDR R1, [R5] \n\
/* 0802bd10 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0802bd12 */ LSLS R2, R2, 0x2 \n\
/* 0802bd14 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802bd16 */ STR R4, [R0] \n\
/* 0802bd18 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 0802bd1a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802bd1c */ STR R4, [R0] \n\
/* 0802bd1e */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0802bd20 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802bd22 */ STR R4, [R0] \n\
/* 0802bd24 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0802bd26 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802bd28 */ STRB R6, [R0] \n\
/* 0802bd2a */ ADD SP, 0x14 \n\
/* 0802bd2c */ POP {R4-R6} \n\
/* 0802bd2e */ POP {R0} \n\
/* 0802bd30 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
