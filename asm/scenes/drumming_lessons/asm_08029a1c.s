asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029a1c \n\
/* 08029a1c */ PUSH {R4-R6, LR} \n\
/* 08029a1e */ SUB SP, 0xC \n\
/* 08029a20 */ LDR R0, =D_030055d0 \n\
/* 08029a22 */ LDR R5, [R0] \n\
/* 08029a24 */ LDR R1, =0x00000414 \n\
/* 08029a26 */ ADDS R2, R5, R1 @ Set R2 to R5 + R1 \n\
/* 08029a28 */ LDRH R1, [R2] \n\
/* 08029a2a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08029a2c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08029a2e */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08029a30 */ BEQ branch_08029a64 \n\
/* 08029a32 */ SUBS R0, R1, 0x1 @ Set R0 to R1 - 0x1 \n\
/* 08029a34 */ STRH R0, [R2] \n\
/* 08029a36 */ LSLS R0, R0, 0x10 \n\
/* 08029a38 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029a3a */ BEQ branch_08029a3e \n\
/* 08029a3c */ B branch_08029b62 \n\
 \n\
branch_08029a3e: \n\
/* 08029a3e */ LDR R0, =D_03005380 \n\
/* 08029a40 */ LDR R0, [R0] \n\
/* 08029a42 */ LDR R2, =0x0000040a \n\
/* 08029a44 */ ADDS R1, R5, R2 @ Set R1 to R5 + R2 \n\
/* 08029a46 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029a48 */ LDRSH R1, [R1, R3] \n\
/* 08029a4a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08029a4c */ BL func_0804d770 \n\
/* 08029a50 */ B branch_08029b62 \n\
\n\
.ltorg \n\
 \n\
branch_08029a64: \n\
/* 08029a64 */ LDR R2, =D_03004afc \n\
/* 08029a66 */ LDRH R1, [R2] \n\
/* 08029a68 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08029a6a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08029a6c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029a6e */ BEQ branch_08029aa4 \n\
/* 08029a70 */ LDR R1, =0x0000040c \n\
/* 08029a72 */ ADDS R0, R5, R1 @ Set R0 to R5 + R1 \n\
/* 08029a74 */ LDRB R3, [R0] \n\
/* 08029a76 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08029a78 */ BNE branch_08029aa4 \n\
/* 08029a7a */ LDR R0, =D_03005380 \n\
/* 08029a7c */ LDR R0, [R0] \n\
/* 08029a7e */ LDR R2, =0x0000040a \n\
/* 08029a80 */ ADDS R1, R5, R2 @ Set R1 to R5 + R2 \n\
/* 08029a82 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029a84 */ LDRSH R1, [R1, R2] \n\
/* 08029a86 */ LDR R2, =D_088c61f0 \n\
/* 08029a88 */ STR R3, [SP] \n\
/* 08029a8a */ STR R4, [SP, 0x4] \n\
/* 08029a8c */ STR R4, [SP, 0x8] \n\
/* 08029a8e */ B branch_08029ad0 \n\
\n\
.ltorg \n\
 \n\
branch_08029aa4: \n\
/* 08029aa4 */ LDRH R1, [R2] \n\
/* 08029aa6 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08029aa8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08029aaa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029aac */ BEQ branch_08029afc \n\
/* 08029aae */ LDR R1, [R6] \n\
/* 08029ab0 */ LDR R3, =0x0000040c \n\
/* 08029ab2 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08029ab4 */ LDRB R3, [R0] \n\
/* 08029ab6 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08029ab8 */ BNE branch_08029afc \n\
/* 08029aba */ LDR R0, =D_03005380 \n\
/* 08029abc */ LDR R0, [R0] \n\
/* 08029abe */ LDR R2, =0x0000040a \n\
/* 08029ac0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08029ac2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029ac4 */ LDRSH R1, [R1, R2] \n\
/* 08029ac6 */ LDR R2, =D_088c6210 \n\
/* 08029ac8 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08029aca */ STR R4, [SP] \n\
/* 08029acc */ STR R3, [SP, 0x4] \n\
/* 08029ace */ STR R3, [SP, 0x8] \n\
 \n\
branch_08029ad0: \n\
/* 08029ad0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029ad2 */ BL func_0804d8f8 \n\
/* 08029ad6 */ LDR R0, [R6] \n\
/* 08029ad8 */ LDR R3, =0x0000040c \n\
/* 08029ada */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08029adc */ STRB R4, [R0] \n\
/* 08029ade */ LDR R0, =s_menu_cursor1_seqData \n\
/* 08029ae0 */ BL func_08002634 \n\
/* 08029ae4 */ B branch_08029b72 \n\
\n\
.ltorg \n\
 \n\
branch_08029afc: \n\
/* 08029afc */ LDRH R1, [R2] \n\
/* 08029afe */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08029b00 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08029b02 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029b04 */ BEQ branch_08029b62 \n\
/* 08029b06 */ LDR R0, =D_030055d0 \n\
/* 08029b08 */ LDR R0, [R0] \n\
/* 08029b0a */ LDR R1, =0x0000040c \n\
/* 08029b0c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029b0e */ LDRB R0, [R0] \n\
/* 08029b10 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029b12 */ BNE branch_08029b2c \n\
/* 08029b14 */ LDR R0, =s_menu_kettei2_seqData \n\
/* 08029b16 */ BL func_08002634 \n\
/* 08029b1a */ BL func_08029988 \n\
/* 08029b1e */ B branch_08029b32 \n\
\n\
.ltorg \n\
 \n\
branch_08029b2c: \n\
/* 08029b2c */ LDR R0, =s_menu_cancel3_seqData \n\
/* 08029b2e */ BL func_08002634 \n\
 \n\
branch_08029b32: \n\
/* 08029b32 */ LDR R0, =D_03005380 \n\
/* 08029b34 */ LDR R0, [R0] \n\
/* 08029b36 */ LDR R4, =D_030055d0 \n\
/* 08029b38 */ LDR R1, [R4] \n\
/* 08029b3a */ LDR R2, =0x0000040a \n\
/* 08029b3c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08029b3e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029b40 */ LDRSH R1, [R1, R3] \n\
/* 08029b42 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029b44 */ BL func_0804d770 \n\
/* 08029b48 */ LDR R0, [R4] \n\
/* 08029b4a */ MOVS R1, 0x82 @ Set R1 to 0x82 \n\
/* 08029b4c */ LSLS R1, R1, 0x3 \n\
/* 08029b4e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029b50 */ LDR R0, [R0] \n\
/* 08029b52 */ BL func_0800a934 \n\
/* 08029b56 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08029b58 */ BL func_0800bd04 \n\
/* 08029b5c */ LDR R1, [R4] \n\
/* 08029b5e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08029b60 */ STRB R0, [R1, 0x1] \n\
 \n\
branch_08029b62: \n\
/* 08029b62 */ LDR R0, =D_030055d0 \n\
/* 08029b64 */ LDR R0, [R0] \n\
/* 08029b66 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 08029b68 */ LSLS R2, R2, 0x3 \n\
/* 08029b6a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029b6c */ LDR R0, [R0] \n\
/* 08029b6e */ BL func_0800a914 \n\
 \n\
branch_08029b72: \n\
/* 08029b72 */ ADD SP, 0xC \n\
/* 08029b74 */ POP {R4-R6} \n\
/* 08029b76 */ POP {R0} \n\
/* 08029b78 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
