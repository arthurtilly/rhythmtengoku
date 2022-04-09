asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801bce0 \n\
/* 0801bce0 */ PUSH {R4-R7, LR} \n\
/* 0801bce2 */ SUB SP, 0x4 \n\
/* 0801bce4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801bce6 */ LDR R0, =D_030046a4 \n\
/* 0801bce8 */ LDR R0, [R0] \n\
/* 0801bcea */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801bcec */ LSLS R1, R1, 0x2 \n\
/* 0801bcee */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bcf0 */ LDR R0, [R0] \n\
/* 0801bcf2 */ BL func_0800b368 \n\
/* 0801bcf6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bcf8 */ BNE branch_0801bd2c \n\
/* 0801bcfa */ BL func_0801c8b8 \n\
/* 0801bcfe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bd00 */ BEQ branch_0801bd2c \n\
/* 0801bd02 */ LDR R0, =D_03004afc \n\
/* 0801bd04 */ LDRH R1, [R0] \n\
/* 0801bd06 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0801bd08 */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 0801bd0a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801bd0c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801bd0e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bd10 */ BEQ branch_0801bd14 \n\
/* 0801bd12 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
 \n\
branch_0801bd14: \n\
/* 0801bd14 */ LDR R0, =D_030053b8 \n\
/* 0801bd16 */ LDRH R1, [R0] \n\
/* 0801bd18 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801bd1a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801bd1c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bd1e */ BEQ branch_0801bd22 \n\
/* 0801bd20 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
 \n\
branch_0801bd22: \n\
/* 0801bd22 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801bd24 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801bd26 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bd28 */ BEQ branch_0801bd2c \n\
/* 0801bd2a */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_0801bd2c: \n\
/* 0801bd2c */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801bd2e */ BNE branch_0801bd32 \n\
/* 0801bd30 */ B branch_0801bff4 \n\
 \n\
branch_0801bd32: \n\
/* 0801bd32 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801bd34 */ BHI branch_0801bd48 \n\
/* 0801bd36 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801bd38 */ BEQ branch_0801bd56 \n\
/* 0801bd3a */ B branch_0801c01c \n\
\n\
.ltorg \n\
 \n\
branch_0801bd48: \n\
/* 0801bd48 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 0801bd4a */ BNE branch_0801bd4e \n\
/* 0801bd4c */ B branch_0801c00c \n\
 \n\
branch_0801bd4e: \n\
/* 0801bd4e */ CMP R4, 0x4 @ Compare R4 and 0x4 \n\
/* 0801bd50 */ BNE branch_0801bd54 \n\
/* 0801bd52 */ B branch_0801bf9c \n\
 \n\
branch_0801bd54: \n\
/* 0801bd54 */ B branch_0801c01c \n\
 \n\
branch_0801bd56: \n\
/* 0801bd56 */ LDR R4, =D_030046a4 \n\
/* 0801bd58 */ LDR R0, [R4] \n\
/* 0801bd5a */ MOVS R2, 0xDC @ Set R2 to 0xDC \n\
/* 0801bd5c */ LSLS R2, R2, 0x2 \n\
/* 0801bd5e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801bd60 */ LDR R0, [R0] \n\
/* 0801bd62 */ BL func_0800b118 \n\
/* 0801bd66 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bd68 */ BNE branch_0801bdfc \n\
/* 0801bd6a */ BL func_0801bb24 \n\
/* 0801bd6e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bd70 */ BEQ branch_0801bd9c \n\
/* 0801bd72 */ LDR R1, =D_0805942c \n\
/* 0801bd74 */ LDR R2, =func_0801bbd4 \n\
/* 0801bd76 */ LDR R4, =s_menu_kettei2_seqData \n\
/* 0801bd78 */ STR R4, [SP] \n\
/* 0801bd7a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801bd7c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801bd7e */ BL func_0801ac38 \n\
/* 0801bd82 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801bd84 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801bd86 */ BL func_0800267c \n\
/* 0801bd8a */ B branch_0801bdfc \n\
\n\
.ltorg \n\
 \n\
branch_0801bd9c: \n\
/* 0801bd9c */ LDR R0, [R4] \n\
/* 0801bd9e */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 0801bda0 */ LSLS R3, R3, 0x2 \n\
/* 0801bda2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801bda4 */ LDR R0, [R0] \n\
/* 0801bda6 */ BL func_0800b118 \n\
/* 0801bdaa */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801bdac */ LDR R0, =D_030046a8 \n\
/* 0801bdae */ LDR R0, [R0] \n\
/* 0801bdb0 */ LSLS R1, R3, 0x2 \n\
/* 0801bdb2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bdb4 */ ADDS R0, 0xC7 @ Add 0xC7 to R0 \n\
/* 0801bdb6 */ LDRB R1, [R0] \n\
/* 0801bdb8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801bdba */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801bdbc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bdbe */ BEQ branch_0801bdf0 \n\
/* 0801bdc0 */ LDR R1, =D_0805945c \n\
/* 0801bdc2 */ LDR R2, =func_0801bbe8 \n\
/* 0801bdc4 */ LDR R0, =s_menu_se24_seqData \n\
/* 0801bdc6 */ STR R0, [SP] \n\
/* 0801bdc8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801bdca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801bdcc */ BL func_0801ac38 \n\
/* 0801bdd0 */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801bdd2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801bdd4 */ BL func_0800267c \n\
/* 0801bdd8 */ B branch_0801bdfc \n\
\n\
.ltorg \n\
 \n\
branch_0801bdf0: \n\
/* 0801bdf0 */ BL func_0801bb60 \n\
/* 0801bdf4 */ LDR R1, =s_menu_se24_seqData \n\
/* 0801bdf6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801bdf8 */ BL func_0800267c \n\
 \n\
branch_0801bdfc: \n\
/* 0801bdfc */ LDR R4, =D_030046a4 \n\
/* 0801bdfe */ LDR R0, [R4] \n\
/* 0801be00 */ MOVS R5, 0xDC @ Set R5 to 0xDC \n\
/* 0801be02 */ LSLS R5, R5, 0x2 \n\
/* 0801be04 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0801be06 */ LDR R0, [R0] \n\
/* 0801be08 */ BL func_0800b118 \n\
/* 0801be0c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801be0e */ BNE branch_0801be78 \n\
/* 0801be10 */ LDR R0, [R4] \n\
/* 0801be12 */ MOVS R1, 0xDD @ Set R1 to 0xDD \n\
/* 0801be14 */ LSLS R1, R1, 0x2 \n\
/* 0801be16 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801be18 */ LDRB R0, [R0] \n\
/* 0801be1a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801be1c */ BNE branch_0801be60 \n\
/* 0801be1e */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801be20 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801be22 */ BL func_0800267c \n\
/* 0801be26 */ LDR R0, [R4] \n\
/* 0801be28 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0801be2a */ LDR R0, [R0] \n\
/* 0801be2c */ BL func_0800b3e8 \n\
/* 0801be30 */ LDR R0, [R4] \n\
/* 0801be32 */ MOVS R2, 0xDA @ Set R2 to 0xDA \n\
/* 0801be34 */ LSLS R2, R2, 0x2 \n\
/* 0801be36 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801be38 */ LDR R0, [R0] \n\
/* 0801be3a */ BL func_0800b3c8 \n\
/* 0801be3e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801be40 */ BL func_0801c6b8 \n\
/* 0801be44 */ LDR R0, [R4] \n\
/* 0801be46 */ MOVS R3, 0xD7 @ Set R3 to 0xD7 \n\
/* 0801be48 */ LSLS R3, R3, 0x2 \n\
/* 0801be4a */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801be4c */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801be4e */ STRB R1, [R0] \n\
/* 0801be50 */ B branch_0801be78 \n\
\n\
.ltorg \n\
 \n\
branch_0801be60: \n\
/* 0801be60 */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801be62 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801be64 */ BL func_0800267c \n\
/* 0801be68 */ LDR R1, =D_080594a0 \n\
/* 0801be6a */ LDR R2, =func_0801bc0c \n\
/* 0801be6c */ LDR R0, =s_menu_se13_seqData \n\
/* 0801be6e */ STR R0, [SP] \n\
/* 0801be70 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801be72 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801be74 */ BL func_0801ac38 \n\
 \n\
branch_0801be78: \n\
/* 0801be78 */ LDR R5, =D_030046a4 \n\
/* 0801be7a */ LDR R0, [R5] \n\
/* 0801be7c */ MOVS R6, 0xDC @ Set R6 to 0xDC \n\
/* 0801be7e */ LSLS R6, R6, 0x2 \n\
/* 0801be80 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0801be82 */ LDR R0, [R0] \n\
/* 0801be84 */ BL func_0800b118 \n\
/* 0801be88 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0801be8a */ BNE branch_0801bef0 \n\
/* 0801be8c */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801be8e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801be90 */ BL func_0800267c \n\
/* 0801be94 */ LDR R0, [R5] \n\
/* 0801be96 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0801be98 */ LDR R0, [R0] \n\
/* 0801be9a */ BL func_0800b3e8 \n\
/* 0801be9e */ LDR R0, [R5] \n\
/* 0801bea0 */ MOVS R4, 0xD8 @ Set R4 to 0xD8 \n\
/* 0801bea2 */ LSLS R4, R4, 0x2 \n\
/* 0801bea4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801bea6 */ LDR R0, [R0] \n\
/* 0801bea8 */ BL func_0800b3c8 \n\
/* 0801beac */ LDR R0, [R5] \n\
/* 0801beae */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801beb0 */ LDR R0, [R0] \n\
/* 0801beb2 */ BL func_0800b118 \n\
/* 0801beb6 */ LDR R1, [R5] \n\
/* 0801beb8 */ LDR R3, =0x48e \n\
/* 0801beba */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 0801bebc */ STRH R0, [R2] \n\
/* 0801bebe */ ADDS R4, R1, R4 @ Set R4 to R1 + R4 \n\
/* 0801bec0 */ LDR R0, [R4] \n\
/* 0801bec2 */ LDR R4, =0x48c \n\
/* 0801bec4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0801bec6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801bec8 */ LDRSH R1, [R1, R3] \n\
/* 0801beca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801becc */ LDRSH R2, [R2, R3] \n\
/* 0801bece */ BL func_0800b408 \n\
/* 0801bed2 */ LDR R0, =D_03005380 \n\
/* 0801bed4 */ LDR R0, [R0] \n\
/* 0801bed6 */ LDR R1, [R5] \n\
/* 0801bed8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0801beda */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801bedc */ LDRSH R1, [R1, R2] \n\
/* 0801bede */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801bee0 */ BL func_0804d770 \n\
/* 0801bee4 */ LDR R0, [R5] \n\
/* 0801bee6 */ MOVS R3, 0xD7 @ Set R3 to 0xD7 \n\
/* 0801bee8 */ LSLS R3, R3, 0x2 \n\
/* 0801beea */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801beec */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 0801beee */ STRB R1, [R0] \n\
 \n\
branch_0801bef0: \n\
/* 0801bef0 */ LDR R0, [R5] \n\
/* 0801bef2 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0801bef4 */ LDR R0, [R0] \n\
/* 0801bef6 */ BL func_0800b118 \n\
/* 0801befa */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0801befc */ BEQ branch_0801bf00 \n\
/* 0801befe */ B branch_0801c01c \n\
 \n\
branch_0801bf00: \n\
/* 0801bf00 */ LDR R0, [R5] \n\
/* 0801bf02 */ MOVS R7, 0xD8 @ Set R7 to 0xD8 \n\
/* 0801bf04 */ LSLS R7, R7, 0x2 \n\
/* 0801bf06 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0801bf08 */ LDR R0, [R0] \n\
/* 0801bf0a */ BL func_0800b118 \n\
/* 0801bf0e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801bf10 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801bf12 */ LDR R6, =D_030046a8 \n\
/* 0801bf14 */ LDR R0, [R6] \n\
/* 0801bf16 */ LSLS R4, R3, 0x2 \n\
/* 0801bf18 */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 0801bf1a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801bf1c */ ADDS R0, 0xC4 @ Add 0xC4 to R0 \n\
/* 0801bf1e */ LDRB R0, [R0] \n\
/* 0801bf20 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bf22 */ BNE branch_0801bf2c \n\
/* 0801bf24 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801bf26 */ ADDS R0, 0xC7 @ Add 0xC7 to R0 \n\
/* 0801bf28 */ LDRB R0, [R0] \n\
/* 0801bf2a */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
 \n\
branch_0801bf2c: \n\
/* 0801bf2c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0801bf2e */ BEQ branch_0801bf8c \n\
/* 0801bf30 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0801bf32 */ ADDS R2, 0xC7 @ Add 0xC7 to R2 \n\
/* 0801bf34 */ LDRB R0, [R2] \n\
/* 0801bf36 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801bf38 */ EORS R0, R1 @ Set R0 to R0 ^ R1 \n\
/* 0801bf3a */ STRB R0, [R2] \n\
/* 0801bf3c */ LDR R0, [R5] \n\
/* 0801bf3e */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0801bf40 */ LDR R0, [R0] \n\
/* 0801bf42 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0801bf44 */ BL func_0800b454 \n\
/* 0801bf48 */ LDR R0, [R6] \n\
/* 0801bf4a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801bf4c */ ADDS R0, 0xC7 @ Add 0xC7 to R0 \n\
/* 0801bf4e */ LDRB R1, [R0] \n\
/* 0801bf50 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801bf52 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801bf54 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801bf56 */ BEQ branch_0801bf84 \n\
/* 0801bf58 */ LDR R1, =s_menu_cancel3_seqData \n\
/* 0801bf5a */ B branch_0801bf8e \n\
\n\
.ltorg \n\
 \n\
branch_0801bf84: \n\
/* 0801bf84 */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801bf86 */ B branch_0801bf8e \n\
\n\
.ltorg \n\
 \n\
branch_0801bf8c: \n\
/* 0801bf8c */ LDR R1, =s_menu_error_seqData \n\
 \n\
branch_0801bf8e: \n\
/* 0801bf8e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801bf90 */ BL func_0800267c \n\
/* 0801bf94 */ B branch_0801c01c \n\
\n\
.ltorg \n\
 \n\
branch_0801bf9c: \n\
/* 0801bf9c */ LDR R1, =s_menu_cancel3_seqData \n\
/* 0801bf9e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801bfa0 */ BL func_0800267c \n\
/* 0801bfa4 */ BL func_0801c7c0 \n\
/* 0801bfa8 */ LDR R4, =D_030046a4 \n\
/* 0801bfaa */ LDR R0, [R4] \n\
/* 0801bfac */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801bfae */ LSLS R1, R1, 0x2 \n\
/* 0801bfb0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bfb2 */ LDR R0, [R0] \n\
/* 0801bfb4 */ BL func_0800b3e8 \n\
/* 0801bfb8 */ LDR R0, [R4] \n\
/* 0801bfba */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801bfbc */ LSLS R2, R2, 0x2 \n\
/* 0801bfbe */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801bfc0 */ LDR R0, [R0] \n\
/* 0801bfc2 */ BL func_0800b3c8 \n\
/* 0801bfc6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801bfc8 */ BL func_0801c6b8 \n\
/* 0801bfcc */ LDR R0, =s_studio_bgm_seqData \n\
/* 0801bfce */ BL func_08002634 \n\
/* 0801bfd2 */ LDR R1, [R4] \n\
/* 0801bfd4 */ MOVS R3, 0x97 @ Set R3 to 0x97 \n\
/* 0801bfd6 */ LSLS R3, R3, 0x3 \n\
/* 0801bfd8 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 0801bfda */ STR R0, [R2] \n\
/* 0801bfdc */ MOVS R0, 0xD7 @ Set R0 to 0xD7 \n\
/* 0801bfde */ LSLS R0, R0, 0x2 \n\
/* 0801bfe0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801bfe2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801bfe4 */ STRB R0, [R1] \n\
/* 0801bfe6 */ B branch_0801c01c \n\
\n\
.ltorg \n\
 \n\
branch_0801bff4: \n\
/* 0801bff4 */ LDR R0, =D_030046a4 \n\
/* 0801bff6 */ LDR R0, [R0] \n\
/* 0801bff8 */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801bffa */ LSLS R1, R1, 0x2 \n\
/* 0801bffc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bffe */ LDR R0, [R0] \n\
/* 0801c000 */ BL func_0800b140 \n\
/* 0801c004 */ B branch_0801c01c \n\
\n\
.ltorg \n\
 \n\
branch_0801c00c: \n\
/* 0801c00c */ LDR R0, =D_030046a4 \n\
/* 0801c00e */ LDR R0, [R0] \n\
/* 0801c010 */ MOVS R2, 0xDC @ Set R2 to 0xDC \n\
/* 0801c012 */ LSLS R2, R2, 0x2 \n\
/* 0801c014 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c016 */ LDR R0, [R0] \n\
/* 0801c018 */ BL func_0800b21c \n\
 \n\
branch_0801c01c: \n\
/* 0801c01c */ ADD SP, 0x4 \n\
/* 0801c01e */ POP {R4-R7} \n\
/* 0801c020 */ POP {R0} \n\
/* 0801c022 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
