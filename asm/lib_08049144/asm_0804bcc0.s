asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804bcc0 \n\
/* 0804bcc0 */ PUSH {R4-R7, LR} \n\
/* 0804bcc2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0804bcc4 */ PUSH {R7} \n\
/* 0804bcc6 */ SUB SP, 0x4 \n\
/* 0804bcc8 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804bcca */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804bccc */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0804bcce */ LSLS R0, R4, 0x3 \n\
/* 0804bcd0 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804bcd2 */ LSLS R0, R0, 0x2 \n\
/* 0804bcd4 */ LDR R1, [R5, 0x8] \n\
/* 0804bcd6 */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 0804bcd8 */ LDR R3, [R6, 0x8] \n\
/* 0804bcda */ STR R3, [SP] \n\
/* 0804bcdc */ LDRB R2, [R3] \n\
/* 0804bcde */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804bce0 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804bce2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804bce4 */ BEQ branch_0804bcf6 \n\
/* 0804bce6 */ LSLS R2, R2, 0x2 \n\
/* 0804bce8 */ LDRH R1, [R6] \n\
/* 0804bcea */ LDR R0, =0xfffffc03 \n\
/* 0804bcec */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804bcee */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804bcf0 */ STRH R0, [R6] \n\
/* 0804bcf2 */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 0804bcf4 */ STR R0, [SP] \n\
 \n\
branch_0804bcf6: \n\
/* 0804bcf6 */ LDRH R0, [R6] \n\
/* 0804bcf8 */ LSLS R0, R0, 0x16 \n\
/* 0804bcfa */ LSRS R2, R0, 0x18 \n\
/* 0804bcfc */ CMP R2, 0xEF @ Compare R2 and 0xEF \n\
/* 0804bcfe */ BHI branch_0804bd02 \n\
/* 0804bd00 */ B branch_0804be24 \n\
 \n\
branch_0804bd02: \n\
/* 0804bd02 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0804bd04 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804bd06 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804bd08 */ BEQ branch_0804bd20 \n\
/* 0804bd0a */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 0804bd0c */ BEQ branch_0804bd36 \n\
/* 0804bd0e */ MOV R0, SP @ Set R0 to SP \n\
/* 0804bd10 */ BL func_0804c398 \n\
/* 0804bd14 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804bd16 */ LDR R0, [SP] \n\
/* 0804bd18 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804bd1a */ B branch_0804beba \n\
\n\
.ltorg \n\
 \n\
branch_0804bd20: \n\
/* 0804bd20 */ MOV R0, SP @ Set R0 to SP \n\
/* 0804bd22 */ BL func_0804c398 \n\
/* 0804bd26 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804bd28 */ LDR R1, [SP] \n\
/* 0804bd2a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804bd2c */ BL func_0804b80c \n\
/* 0804bd30 */ LDR R0, [SP] \n\
/* 0804bd32 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804bd34 */ B branch_0804beba \n\
 \n\
branch_0804bd36: \n\
/* 0804bd36 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804bd38 */ MOV R1, SP @ Set R1 to SP \n\
/* 0804bd3a */ BL func_0804b898 \n\
/* 0804bd3e */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804bd40 */ BEQ branch_0804bd60 \n\
/* 0804bd42 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804bd44 */ BHI branch_0804bd4c \n\
/* 0804bd46 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804bd48 */ BEQ branch_0804bd52 \n\
/* 0804bd4a */ B branch_0804bebc \n\
 \n\
branch_0804bd4c: \n\
/* 0804bd4c */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0804bd4e */ BEQ branch_0804bdac \n\
/* 0804bd50 */ B branch_0804bebc \n\
 \n\
branch_0804bd52: \n\
/* 0804bd52 */ LDR R0, [R5, 0x4] \n\
/* 0804bd54 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804bd56 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804bd58 */ BL func_0804accc \n\
/* 0804bd5c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804bd5e */ B branch_0804bec2 \n\
 \n\
branch_0804bd60: \n\
/* 0804bd60 */ LDRB R0, [R5, 0x1] \n\
/* 0804bd62 */ LSLS R0, R0, 0x1D \n\
/* 0804bd64 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804bd66 */ BGE branch_0804bd6a \n\
/* 0804bd68 */ B branch_0804bebc \n\
 \n\
branch_0804bd6a: \n\
/* 0804bd6a */ LDRB R2, [R6] \n\
/* 0804bd6c */ LSLS R1, R2, 0x1F \n\
/* 0804bd6e */ LSRS R1, R1, 0x1F \n\
/* 0804bd70 */ LSLS R1, R1, 0x1 \n\
/* 0804bd72 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804bd74 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804bd76 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804bd78 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804bd7a */ STRB R0, [R6] \n\
/* 0804bd7c */ LDRH R0, [R6] \n\
/* 0804bd7e */ LSLS R0, R0, 0x16 \n\
/* 0804bd80 */ LSRS R0, R0, 0x18 \n\
/* 0804bd82 */ LSLS R0, R0, 0xA \n\
/* 0804bd84 */ LDR R1, [R6] \n\
/* 0804bd86 */ LDR R2, =0xfffc03ff \n\
/* 0804bd88 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0804bd8a */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804bd8c */ STR R1, [R6] \n\
/* 0804bd8e */ LDR R0, [SP] \n\
/* 0804bd90 */ STR R0, [R6, 0x10] \n\
/* 0804bd92 */ LDRB R0, [R6, 0x2] \n\
/* 0804bd94 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0804bd96 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804bd98 */ STRB R0, [R6, 0x2] \n\
/* 0804bd9a */ LDR R0, [R6, 0x18] \n\
/* 0804bd9c */ STR R0, [R5, 0x34] \n\
/* 0804bd9e */ LDRB R0, [R5, 0x1] \n\
/* 0804bda0 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804bda2 */ STRB R0, [R5, 0x1] \n\
/* 0804bda4 */ B branch_0804bebc \n\
\n\
.ltorg \n\
 \n\
branch_0804bdac: \n\
/* 0804bdac */ LDRB R0, [R5, 0x1] \n\
/* 0804bdae */ LSLS R0, R0, 0x1D \n\
/* 0804bdb0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804bdb2 */ BLT branch_0804bdb6 \n\
/* 0804bdb4 */ B branch_0804bebc \n\
 \n\
branch_0804bdb6: \n\
/* 0804bdb6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804bdb8 */ LDRH R0, [R5] \n\
/* 0804bdba */ LSLS R0, R0, 0x16 \n\
/* 0804bdbc */ LSRS R0, R0, 0x1B \n\
/* 0804bdbe */ CMP R7, R0 @ Check R7 - R0 \n\
/* 0804bdc0 */ BCS branch_0804be20 \n\
/* 0804bdc2 */ MOV R8, R4 @ Set R8 to R4 \n\
 \n\
branch_0804bdc4: \n\
/* 0804bdc4 */ LDR R0, [R5, 0x8] \n\
/* 0804bdc6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804bdc8 */ ADDS R3, R0, R1 @ Set R3 to R0 + R1 \n\
/* 0804bdca */ LDRB R1, [R3] \n\
/* 0804bdcc */ LSLS R2, R1, 0x1E \n\
/* 0804bdce */ LSRS R2, R2, 0x1F \n\
/* 0804bdd0 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 0804bdd2 */ NEGS R7, R7 @ Set R7 to -R7 \n\
/* 0804bdd4 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804bdd6 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0804bdd8 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0804bdda */ STRB R1, [R3] \n\
/* 0804bddc */ LDR R0, [R3] \n\
/* 0804bdde */ LSLS R0, R0, 0xE \n\
/* 0804bde0 */ LSRS R0, R0, 0x18 \n\
/* 0804bde2 */ LSLS R0, R0, 0x2 \n\
/* 0804bde4 */ LDRH R1, [R3] \n\
/* 0804bde6 */ LDR R7, =0xfffffc03 \n\
/* 0804bde8 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0804bdea */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0804bdec */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804bdee */ STRH R1, [R3] \n\
/* 0804bdf0 */ CMP R6, R3 @ Check R6 - R3 \n\
/* 0804bdf2 */ BNE branch_0804be00 \n\
/* 0804bdf4 */ LDR R0, [R6, 0x10] \n\
/* 0804bdf6 */ STR R0, [SP] \n\
/* 0804bdf8 */ B branch_0804be08 \n\
\n\
.ltorg \n\
 \n\
branch_0804be00: \n\
/* 0804be00 */ LDR R0, [R3, 0x10] \n\
/* 0804be02 */ STR R0, [R3, 0x8] \n\
/* 0804be04 */ LDR R0, [R6, 0xC] \n\
/* 0804be06 */ STR R0, [R3, 0xC] \n\
 \n\
branch_0804be08: \n\
/* 0804be08 */ LDR R0, [R5, 0x4] \n\
/* 0804be0a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804be0c */ BL func_08049d30 \n\
/* 0804be10 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0804be12 */ ADD R8, R0 @ Add R0 to R8 \n\
/* 0804be14 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804be16 */ LDRH R0, [R5] \n\
/* 0804be18 */ LSLS R0, R0, 0x16 \n\
/* 0804be1a */ LSRS R0, R0, 0x1B \n\
/* 0804be1c */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804be1e */ BCC branch_0804bdc4 \n\
 \n\
branch_0804be20: \n\
/* 0804be20 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 0804be22 */ B branch_0804bebc \n\
 \n\
branch_0804be24: \n\
/* 0804be24 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0804be26 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804be28 */ CMP R0, 0xB0 @ Compare R0 and 0xB0 \n\
/* 0804be2a */ BEQ branch_0804be74 \n\
/* 0804be2c */ CMP R0, 0xB0 @ Compare R0 and 0xB0 \n\
/* 0804be2e */ BGT branch_0804be44 \n\
/* 0804be30 */ CMP R0, 0x90 @ Compare R0 and 0x90 \n\
/* 0804be32 */ BEQ branch_0804be66 \n\
/* 0804be34 */ CMP R0, 0x90 @ Compare R0 and 0x90 \n\
/* 0804be36 */ BGT branch_0804be3e \n\
/* 0804be38 */ CMP R0, 0x80 @ Compare R0 and 0x80 \n\
/* 0804be3a */ BEQ branch_0804be58 \n\
/* 0804be3c */ B branch_0804bebc \n\
 \n\
branch_0804be3e: \n\
/* 0804be3e */ CMP R0, 0xA0 @ Compare R0 and 0xA0 \n\
/* 0804be40 */ BEQ branch_0804beb6 \n\
/* 0804be42 */ B branch_0804bebc \n\
 \n\
branch_0804be44: \n\
/* 0804be44 */ CMP R0, 0xD0 @ Compare R0 and 0xD0 \n\
/* 0804be46 */ BEQ branch_0804be96 \n\
/* 0804be48 */ CMP R0, 0xD0 @ Compare R0 and 0xD0 \n\
/* 0804be4a */ BGT branch_0804be52 \n\
/* 0804be4c */ CMP R0, 0xC0 @ Compare R0 and 0xC0 \n\
/* 0804be4e */ BEQ branch_0804be84 \n\
/* 0804be50 */ B branch_0804bebc \n\
 \n\
branch_0804be52: \n\
/* 0804be52 */ CMP R0, 0xE0 @ Compare R0 and 0xE0 \n\
/* 0804be54 */ BEQ branch_0804be9c \n\
/* 0804be56 */ B branch_0804bebc \n\
 \n\
branch_0804be58: \n\
/* 0804be58 */ LDR R0, [SP] \n\
/* 0804be5a */ LDRB R1, [R0] \n\
/* 0804be5c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804be5e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804be60 */ BL func_0804bc5c \n\
/* 0804be64 */ B branch_0804beb6 \n\
 \n\
branch_0804be66: \n\
/* 0804be66 */ LDR R0, [SP] \n\
/* 0804be68 */ LDRB R1, [R0] \n\
/* 0804be6a */ LDRB R2, [R0, 0x1] \n\
/* 0804be6c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804be6e */ BL func_0804bc5c \n\
/* 0804be72 */ B branch_0804beb6 \n\
 \n\
branch_0804be74: \n\
/* 0804be74 */ LDR R0, [SP] \n\
/* 0804be76 */ LDRB R2, [R0] \n\
/* 0804be78 */ LDRB R3, [R0, 0x1] \n\
/* 0804be7a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804be7c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804be7e */ BL func_0804b95c \n\
/* 0804be82 */ B branch_0804beb6 \n\
 \n\
branch_0804be84: \n\
/* 0804be84 */ LDR R0, [R5, 0x4] \n\
/* 0804be86 */ LDR R1, [SP] \n\
/* 0804be88 */ LDRB R2, [R1] \n\
/* 0804be8a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804be8c */ BL func_0804ab88 \n\
/* 0804be90 */ LDR R0, [SP] \n\
/* 0804be92 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804be94 */ B branch_0804beba \n\
 \n\
branch_0804be96: \n\
/* 0804be96 */ LDR R0, [SP] \n\
/* 0804be98 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804be9a */ B branch_0804beba \n\
 \n\
branch_0804be9c: \n\
/* 0804be9c */ LDR R3, [SP] \n\
/* 0804be9e */ LDRB R1, [R3] \n\
/* 0804bea0 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804bea2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804bea4 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 0804bea6 */ LDRB R1, [R3, 0x1] \n\
/* 0804bea8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804beaa */ LSLS R0, R0, 0x7 \n\
/* 0804beac */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0804beae */ LDR R0, [R5, 0x4] \n\
/* 0804beb0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804beb2 */ BL func_0804aa40 \n\
 \n\
branch_0804beb6: \n\
/* 0804beb6 */ LDR R0, [SP] \n\
/* 0804beb8 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
 \n\
branch_0804beba: \n\
/* 0804beba */ STR R0, [SP] \n\
 \n\
branch_0804bebc: \n\
/* 0804bebc */ LDR R0, [SP] \n\
/* 0804bebe */ STR R0, [R6, 0x8] \n\
/* 0804bec0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
 \n\
branch_0804bec2: \n\
/* 0804bec2 */ ADD SP, 0x4 \n\
/* 0804bec4 */ POP {R3} \n\
/* 0804bec6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804bec8 */ POP {R4-R7} \n\
/* 0804beca */ POP {R1} \n\
/* 0804becc */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
