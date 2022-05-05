asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ddb0 \n\
/* 0804ddb0 */ PUSH {R4-R6, LR} \n\
/* 0804ddb2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804ddb4 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804ddb6 */ LDR R2, =D_03004428 \n\
/* 0804ddb8 */ MOVS R0, 0x1A @ Set R0 to 0x1A \n\
/* 0804ddba */ STRB R0, [R2] \n\
/* 0804ddbc */ LSLS R1, R1, 0x10 \n\
/* 0804ddbe */ ASRS R4, R1, 0x10 \n\
/* 0804ddc0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804ddc2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804ddc4 */ BL func_0804cc68 \n\
/* 0804ddc8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ddca */ BEQ branch_0804ddd4 \n\
/* 0804ddcc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804ddce */ B branch_0804df46 \n\
\n\
.ltorg \n\
 \n\
branch_0804ddd4: \n\
/* 0804ddd4 */ LSLS R0, R4, 0x4 \n\
/* 0804ddd6 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804ddd8 */ LSLS R0, R0, 0x2 \n\
/* 0804ddda */ LDR R1, [R5, 0x8] \n\
/* 0804dddc */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 0804ddde */ CMP R6, 0x19 @ Compare R6 and 0x19 \n\
/* 0804dde0 */ BLS branch_0804dde4 \n\
/* 0804dde2 */ B branch_0804df44 \n\
 \n\
branch_0804dde4: \n\
/* 0804dde4 */ LSLS R0, R6, 0x2 \n\
/* 0804dde6 */ LDR R1, =jtbl_0804ddf4 \n\
/* 0804dde8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804ddea */ LDR R0, [R0] \n\
/* 0804ddec */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0804ddf4: \n\
.word jump_0804de5c \n\
.word jump_0804de64 \n\
.word jump_0804de6c \n\
.word jump_0804de74 \n\
.word jump_0804de7c \n\
.word jump_0804de82 \n\
.word jump_0804de88 \n\
.word jump_0804de8c \n\
.word jump_0804de90 \n\
.word jump_0804de98 \n\
.word jump_0804de9e \n\
.word jump_0804dea4 \n\
.word jump_0804deaa \n\
.word jump_0804deae \n\
.word jump_0804deb4 \n\
.word jump_0804deb8 \n\
.word jump_0804debc \n\
.word jump_0804dec0 \n\
.word jump_0804dec4 \n\
.word jump_0804dec8 \n\
.word jump_0804decc \n\
.word jump_0804dee0 \n\
.word jump_0804def4 \n\
.word jump_0804df08 \n\
.word jump_0804df1c \n\
.word jump_0804df30 \n\
jump_0804de5c: \n\
/* 0804de5c */ LDRB R0, [R3] \n\
/* 0804de5e */ LSLS R0, R0, 0x1F \n\
/* 0804de60 */ LSRS R0, R0, 0x1F \n\
/* 0804de62 */ B branch_0804df46 \n\
jump_0804de64: \n\
/* 0804de64 */ LDRB R0, [R3] \n\
/* 0804de66 */ LSLS R0, R0, 0x1B \n\
/* 0804de68 */ LSRS R0, R0, 0x1C \n\
/* 0804de6a */ B branch_0804df46 \n\
jump_0804de6c: \n\
/* 0804de6c */ LDRH R0, [R3] \n\
/* 0804de6e */ LSLS R0, R0, 0x13 \n\
/* 0804de70 */ LSRS R0, R0, 0x18 \n\
/* 0804de72 */ B branch_0804df46 \n\
jump_0804de74: \n\
/* 0804de74 */ LDRB R0, [R3, 0x1] \n\
/* 0804de76 */ LSLS R0, R0, 0x1A \n\
/* 0804de78 */ LSRS R0, R0, 0x1F \n\
/* 0804de7a */ B branch_0804df46 \n\
jump_0804de7c: \n\
/* 0804de7c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0804de7e */ LDRSH R0, [R3, R1] \n\
/* 0804de80 */ B branch_0804df46 \n\
jump_0804de82: \n\
/* 0804de82 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0804de84 */ LDRSH R0, [R3, R1] \n\
/* 0804de86 */ B branch_0804df46 \n\
jump_0804de88: \n\
/* 0804de88 */ LDRH R0, [R3, 0x6] \n\
/* 0804de8a */ B branch_0804df46 \n\
jump_0804de8c: \n\
/* 0804de8c */ LDR R0, [R3, 0x8] \n\
/* 0804de8e */ B branch_0804df46 \n\
jump_0804de90: \n\
/* 0804de90 */ LDRH R0, [R3, 0x1C] \n\
/* 0804de92 */ LSLS R0, R0, 0x10 \n\
/* 0804de94 */ ASRS R0, R0, 0x18 \n\
/* 0804de96 */ B branch_0804df46 \n\
jump_0804de98: \n\
/* 0804de98 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804de9a */ LDRSB R0, [R3, R0] \n\
/* 0804de9c */ B branch_0804df46 \n\
jump_0804de9e: \n\
/* 0804de9e */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 0804dea0 */ LDRSB R0, [R3, R0] \n\
/* 0804dea2 */ B branch_0804df46 \n\
jump_0804dea4: \n\
/* 0804dea4 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 0804dea6 */ LDRSB R0, [R3, R0] \n\
/* 0804dea8 */ B branch_0804df46 \n\
jump_0804deaa: \n\
/* 0804deaa */ LDR R0, [R3, 0x10] \n\
/* 0804deac */ B branch_0804df46 \n\
jump_0804deae: \n\
/* 0804deae */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 0804deb0 */ LDRSH R0, [R3, R1] \n\
/* 0804deb2 */ B branch_0804df46 \n\
jump_0804deb4: \n\
/* 0804deb4 */ LDR R0, [R3, 0x20] \n\
/* 0804deb6 */ B branch_0804df46 \n\
jump_0804deb8: \n\
/* 0804deb8 */ LDR R0, [R3, 0x24] \n\
/* 0804deba */ B branch_0804df46 \n\
jump_0804debc: \n\
/* 0804debc */ LDRH R0, [R3, 0x2A] \n\
/* 0804debe */ B branch_0804df46 \n\
jump_0804dec0: \n\
/* 0804dec0 */ LDR R0, [R3, 0x2C] \n\
/* 0804dec2 */ B branch_0804df46 \n\
jump_0804dec4: \n\
/* 0804dec4 */ LDR R0, [R3, 0x30] \n\
/* 0804dec6 */ B branch_0804df46 \n\
jump_0804dec8: \n\
/* 0804dec8 */ LDRH R0, [R3, 0x38] \n\
/* 0804deca */ B branch_0804df46 \n\
jump_0804decc: \n\
/* 0804decc */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804dece */ LDRSB R0, [R3, R0] \n\
/* 0804ded0 */ LDR R1, [R3, 0x8] \n\
/* 0804ded2 */ LSLS R0, R0, 0x3 \n\
/* 0804ded4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804ded6 */ LDR R0, [R0] \n\
/* 0804ded8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804deda */ BL func_0804dcd8 \n\
/* 0804dede */ B branch_0804df46 \n\
jump_0804dee0: \n\
/* 0804dee0 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804dee2 */ LDRSB R0, [R3, R0] \n\
/* 0804dee4 */ LDR R1, [R3, 0x8] \n\
/* 0804dee6 */ LSLS R0, R0, 0x3 \n\
/* 0804dee8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804deea */ LDR R0, [R0] \n\
/* 0804deec */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804deee */ BL func_0804dcd8 \n\
/* 0804def2 */ B branch_0804df46 \n\
jump_0804def4: \n\
/* 0804def4 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804def6 */ LDRSB R0, [R3, R0] \n\
/* 0804def8 */ LDR R1, [R3, 0x8] \n\
/* 0804defa */ LSLS R0, R0, 0x3 \n\
/* 0804defc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804defe */ LDR R0, [R0] \n\
/* 0804df00 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0804df02 */ BL func_0804dcd8 \n\
/* 0804df06 */ B branch_0804df46 \n\
jump_0804df08: \n\
/* 0804df08 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804df0a */ LDRSB R0, [R3, R0] \n\
/* 0804df0c */ LDR R1, [R3, 0x8] \n\
/* 0804df0e */ LSLS R0, R0, 0x3 \n\
/* 0804df10 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804df12 */ LDR R0, [R0] \n\
/* 0804df14 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0804df16 */ BL func_0804dcd8 \n\
/* 0804df1a */ B branch_0804df46 \n\
jump_0804df1c: \n\
/* 0804df1c */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804df1e */ LDRSB R0, [R3, R0] \n\
/* 0804df20 */ LDR R1, [R3, 0x8] \n\
/* 0804df22 */ LSLS R0, R0, 0x3 \n\
/* 0804df24 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804df26 */ LDR R0, [R0] \n\
/* 0804df28 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0804df2a */ BL func_0804dcd8 \n\
/* 0804df2e */ B branch_0804df46 \n\
jump_0804df30: \n\
/* 0804df30 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804df32 */ LDRSB R0, [R3, R0] \n\
/* 0804df34 */ LDR R1, [R3, 0x8] \n\
/* 0804df36 */ LSLS R0, R0, 0x3 \n\
/* 0804df38 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804df3a */ LDR R0, [R0] \n\
/* 0804df3c */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 0804df3e */ BL func_0804dcd8 \n\
/* 0804df42 */ B branch_0804df46 \n\
 \n\
branch_0804df44: \n\
/* 0804df44 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0804df46: \n\
/* 0804df46 */ POP {R4-R6} \n\
/* 0804df48 */ POP {R1} \n\
/* 0804df4a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
