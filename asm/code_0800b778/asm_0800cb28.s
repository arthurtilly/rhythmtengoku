asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800cb28 \n\
/* 0800cb28 */ PUSH {R4-R7, LR} \n\
/* 0800cb2a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800cb2c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800cb2e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800cb30 */ PUSH {R5-R7} \n\
/* 0800cb32 */ SUB SP, 0x54 \n\
/* 0800cb34 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0800cb36 */ LDR R4, =D_030053c0 \n\
/* 0800cb38 */ LDR R0, =D_03005380 \n\
/* 0800cb3a */ LDR R0, [R0] \n\
/* 0800cb3c */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800cb3e */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0800cb40 */ LSLS R1, R1, 0x10 \n\
/* 0800cb42 */ LSRS R1, R1, 0x10 \n\
/* 0800cb44 */ BL func_0804e0bc \n\
/* 0800cb48 */ MOVS R0, 0x9C @ Set R0 to 0x9C \n\
/* 0800cb4a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800cb4c */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 0800cb4e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_0800cb50: \n\
/* 0800cb50 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0800cb52 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800cb54 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800cb56 */ LDR R3, =D_03005588 \n\
/* 0800cb58 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800cb5a */ LSLS R0, R1, 0x2 \n\
 \n\
branch_0800cb5c: \n\
/* 0800cb5c */ MOVS R6, 0xB0 @ Set R6 to 0xB0 \n\
/* 0800cb5e */ LSLS R6, R6, 0x1 \n\
/* 0800cb60 */ ADDS R1, R4, R6 @ Set R1 to R4 + R6 \n\
/* 0800cb62 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800cb64 */ STR R0, [R3] \n\
/* 0800cb66 */ LDR R0, =D_0300558c \n\
/* 0800cb68 */ ADDS R4, 0x7E @ Add 0x7E to R4 \n\
/* 0800cb6a */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0800cb6c */ STR R2, [R0] \n\
/* 0800cb6e */ MOV R0, R9 @ Set R0 to R9 \n\
 \n\
branch_0800cb70: \n\
/* 0800cb70 */ LDR R3, [R0, 0x8] \n\
/* 0800cb72 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
 \n\
branch_0800cb74: \n\
/* 0800cb74 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0800cb76 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800cb78 */ STR R0, [R1, 0x8] \n\
/* 0800cb7a */ LDR R0, [R3] \n\
/* 0800cb7c */ LSRS R7, R0, 0x8 \n\
/* 0800cb7e */ LDR R6, [R3, 0x4] \n\
/* 0800cb80 */ LDR R4, [R3, 0x8] \n\
/* 0800cb82 */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0800cb84 */ LDRB R0, [R3] \n\
/* 0800cb86 */ CMP R0, 0xB2 @ Compare R0 and 0xB2 \n\
 \n\
branch_0800cb88: \n\
/* 0800cb88 */ BLS branch_0800cb8e \n\
/* 0800cb8a */ BL branch_0800df9e \n\
 \n\
branch_0800cb8e: \n\
/* 0800cb8e */ LSLS R0, R0, 0x2 \n\
/* 0800cb90 */ LDR R1, =jtbl_0800cbac \n\
/* 0800cb92 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800cb94 */ LDR R0, [R0] \n\
/* 0800cb96 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
 \n\
 jtbl_0800cbac: \n\
.word jump_0800ce78 \n\
.word jump_0800ce88 \n\
.word jump_0800d1ae \n\
.word jump_0800d1d0 \n\
.word jump_0800d1d8 \n\
.word jump_0800d1ec \n\
.word jump_0800d214 \n\
.word jump_0800d242 \n\
.word jump_0800d280 \n\
.word jump_0800d2be \n\
.word jump_0800d2f0 \n\
.word jump_0800d32a \n\
.word jump_0800d372 \n\
.word jump_0800ce9a \n\
.word jump_0800cf10 \n\
.word jump_0800cf3e \n\
.word jump_0800cf50 \n\
.word jump_0800cf5a \n\
.word jump_0800cf78 \n\
.word jump_0800cf78 \n\
.word jump_0800d008 \n\
.word branch_0800df9e \n\
.word jump_0800cfd0 \n\
.word jump_0800cfec \n\
.word jump_0800d47a \n\
.word jump_0800d4b0 \n\
.word jump_0800d012 \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word jump_0800d048 \n\
.word jump_0800d054 \n\
.word jump_0800d054 \n\
.word jump_0800d0ac \n\
.word jump_0800d0bc \n\
.word jump_0800d0bc \n\
.word jump_0800d116 \n\
.word jump_0800d146 \n\
.word jump_0800d146 \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word jump_0800d3ba \n\
.word jump_0800d3ee \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word jump_0800d434 \n\
.word jump_0800d44a \n\
.word branch_0800df9e \n\
.word jump_0800d460 \n\
.word jump_0800d4d0 \n\
.word jump_0800d3d4 \n\
.word branch_0800df9e \n\
.word jump_0800d4ee \n\
.word jump_0800d514 \n\
.word jump_0800d522 \n\
.word jump_0800d530 \n\
.word jump_0800d55c \n\
.word jump_0800d5f4 \n\
.word jump_0800d62c \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word jump_0800d78c \n\
.word jump_0800d4da \n\
.word jump_0800d79c \n\
.word jump_0800d7b2 \n\
.word jump_0800d7cc \n\
.word branch_0800df9e \n\
.word jump_0800d800 \n\
.word branch_0800df9e \n\
.word jump_0800d816 \n\
.word branch_0800df9e \n\
.word jump_0800d820 \n\
.word jump_0800d864 \n\
.word jump_0800d872 \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word jump_0800d87e \n\
.word jump_0800d8b0 \n\
.word jump_0800d8cc \n\
.word jump_0800d8f4 \n\
.word jump_0800d930 \n\
.word jump_0800d96c \n\
.word jump_0800da20 \n\
.word jump_0800da3c \n\
.word jump_0800da5c \n\
.word jump_0800da78 \n\
.word jump_0800dae4 \n\
.word jump_0800db00 \n\
.word jump_0800db54 \n\
.word jump_0800db68 \n\
.word jump_0800db9a \n\
.word jump_0800dbd0 \n\
.word jump_0800dc18 \n\
.word jump_0800dc60 \n\
.word jump_0800dd70 \n\
.word jump_0800dd80 \n\
.word jump_0800ddd4 \n\
.word jump_0800da94 \n\
.word jump_0800d984 \n\
.word jump_0800d9f4 \n\
.word jump_0800dca2 \n\
.word jump_0800dcbe \n\
.word jump_0800dcde \n\
.word jump_0800dd0a \n\
.word jump_0800dd3a \n\
.word jump_0800de90 \n\
.word jump_0800defc \n\
.word jump_0800df1c \n\
.word jump_0800df38 \n\
.word jump_0800d688 \n\
.word jump_0800d6e4 \n\
.word jump_0800df48 \n\
.word jump_0800d740 \n\
.word jump_0800df52 \n\
.word jump_0800df6a \n\
.word jump_0800d4fc \n\
.word jump_0800df7e \n\
.word jump_0800dee4 \n\
.word branch_0800df9e \n\
.word branch_0800df9e \n\
.word jump_0800d830 \n\
.word jump_0800d83e \n\
.word jump_0800d3f8 \n\
.word jump_0800d804 \n\
.word jump_0800cece \n\
.word jump_0800cf46 \n\
.word jump_0800d406 \n\
\n\
jump_0800ce78: \n\
/* 0800ce78 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800ce7a */ LSLS R1, R5, 0x8 \n\
/* 0800ce7c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800ce7e */ LDR R0, [R6, 0xC] \n\
/* 0800ce80 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800ce82 */ STR R0, [R6, 0xC] \n\
 \n\
branch_0800ce84: \n\
/* 0800ce84 */ BL branch_0800df9e \n\
 \n\
jump_0800ce88: \n\
/* 0800ce88 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800ce8a */ LDRB R1, [R0] \n\
/* 0800ce8c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800ce8e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800ce90 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ce92 */ MOV R1, R9 @ Set R1 to R9 \n\
 \n\
branch_0800ce94: \n\
/* 0800ce94 */ STRB R0, [R1] \n\
/* 0800ce96 */ BL branch_0800df9e \n\
\n\
jump_0800ce9a: \n\
/* 0800ce9a */ MOV R2, R9 @ Set R2 to R9 \n\
 \n\
branch_0800ce9c: \n\
/* 0800ce9c */ LDRB R0, [R2] \n\
/* 0800ce9e */ LSLS R0, R0, 0x1B \n\
/* 0800cea0 */ LSRS R0, R0, 0x1C \n\
/* 0800cea2 */ LSLS R0, R0, 0x2 \n\
/* 0800cea4 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800cea6 */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 0800cea8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800ceaa */ LDR R0, [R2, 0x8] \n\
 \n\
branch_0800ceac: \n\
/* 0800ceac */ STR R0, [R1] \n\
/* 0800ceae */ STR R6, [R2, 0x8] \n\
/* 0800ceb0 */ LDRB R2, [R2] \n\
/* 0800ceb2 */ LSLS R1, R2, 0x1B \n\
 \n\
branch_0800ceb4: \n\
/* 0800ceb4 */ LSRS R1, R1, 0x1C \n\
/* 0800ceb6 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0800ceb8 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0800ceba */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800cebc */ LSLS R1, R1, 0x1 \n\
/* 0800cebe */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
 \n\
branch_0800cec0: \n\
/* 0800cec0 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800cec2 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
 \n\
branch_0800cec4: \n\
/* 0800cec4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800cec6 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0800cec8 */ STRB R0, [R3] \n\
/* 0800ceca */ BL branch_0800df9e \n\
\n\
jump_0800cece: \n\
/* 0800cece */ LDR R0, =D_030053c0 \n\
/* 0800ced0 */ LDR R2, [R0, 0x24] \n\
/* 0800ced2 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800ced4 */ BNE branch_0800ceda \n\
/* 0800ced6 */ BL branch_0800df9e \n\
 \n\
branch_0800ceda: \n\
/* 0800ceda */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0800cedc */ LDRB R0, [R4] \n\
/* 0800cede */ LSLS R0, R0, 0x1B \n\
 \n\
branch_0800cee0: \n\
/* 0800cee0 */ LSRS R0, R0, 0x1C \n\
/* 0800cee2 */ LSLS R0, R0, 0x2 \n\
/* 0800cee4 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800cee6 */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 0800cee8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800ceea */ LDR R0, [R4, 0x8] \n\
/* 0800ceec */ STR R0, [R1] \n\
/* 0800ceee */ STR R2, [R4, 0x8] \n\
/* 0800cef0 */ LDRB R2, [R4] \n\
/* 0800cef2 */ LSLS R1, R2, 0x1B \n\
/* 0800cef4 */ LSRS R1, R1, 0x1C \n\
/* 0800cef6 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0800cef8 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0800cefa */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800cefc */ LSLS R1, R1, 0x1 \n\
/* 0800cefe */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0800cf00 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800cf02 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800cf04 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800cf06 */ STRB R0, [R4] \n\
/* 0800cf08 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800cf10: \n\
/* 0800cf10 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0800cf12 */ LDRB R2, [R5] \n\
/* 0800cf14 */ LSLS R1, R2, 0x1B \n\
/* 0800cf16 */ LSRS R1, R1, 0x1C \n\
/* 0800cf18 */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 0800cf1a */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0800cf1c */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800cf1e */ LSLS R1, R1, 0x1 \n\
/* 0800cf20 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0800cf22 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800cf24 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800cf26 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800cf28 */ STRB R0, [R5] \n\
/* 0800cf2a */ LSLS R0, R0, 0x1B \n\
/* 0800cf2c */ LSRS R0, R0, 0x1C \n\
/* 0800cf2e */ LSLS R0, R0, 0x2 \n\
/* 0800cf30 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800cf32 */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 0800cf34 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800cf36 */ LDR R0, [R1] \n\
/* 0800cf38 */ STR R0, [R5, 0x8] \n\
/* 0800cf3a */ BL branch_0800df9e \n\
\n\
jump_0800cf3e: \n\
/* 0800cf3e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800cf40 */ STR R6, [R0, 0x8] \n\
/* 0800cf42 */ BL branch_0800df9e \n\
\n\
jump_0800cf46: \n\
/* 0800cf46 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800cf48 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800cf4a */ STR R0, [R1, 0xC] \n\
/* 0800cf4c */ BL branch_0800df9e \n\
\n\
jump_0800cf50: \n\
/* 0800cf50 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800cf52 */ LDR R0, [R2, 0x8] \n\
/* 0800cf54 */ STR R0, [R2, 0x50] \n\
/* 0800cf56 */ BL branch_0800df9e \n\
\n\
jump_0800cf5a: \n\
/* 0800cf5a */ LDR R0, =D_030053c0 \n\
/* 0800cf5c */ LDRB R0, [R0] \n\
/* 0800cf5e */ LSLS R0, R0, 0x1B \n\
/* 0800cf60 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800cf62 */ BGE branch_0800cf68 \n\
/* 0800cf64 */ BL branch_0800df9e \n\
 \n\
branch_0800cf68: \n\
/* 0800cf68 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0800cf6a */ LDR R0, [R3, 0x50] \n\
/* 0800cf6c */ STR R0, [R3, 0x8] \n\
/* 0800cf6e */ BL branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800cf78: \n\
/* 0800cf78 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800cf7a */ BEQ branch_0800cf94 \n\
/* 0800cf7c */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800cf7e */ BCC branch_0800cf86 \n\
/* 0800cf80 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800cf82 */ BEQ branch_0800cf9e \n\
/* 0800cf84 */ B branch_0800cfae \n\
 \n\
branch_0800cf86: \n\
/* 0800cf86 */ LDR R1, [R6] \n\
/* 0800cf88 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800cf8a */ EORS R1, R4 @ Set R1 to R1 ^ R4 \n\
/* 0800cf8c */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 0800cf8e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800cf90 */ LSRS R5, R0, 0x1F \n\
/* 0800cf92 */ B branch_0800cfae \n\
 \n\
branch_0800cf94: \n\
/* 0800cf94 */ LDRH R0, [R6] \n\
/* 0800cf96 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800cf98 */ LSLS R1, R5, 0x10 \n\
/* 0800cf9a */ LSRS R1, R1, 0x10 \n\
/* 0800cf9c */ B branch_0800cfa6 \n\
 \n\
branch_0800cf9e: \n\
/* 0800cf9e */ LDRB R0, [R6] \n\
/* 0800cfa0 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800cfa2 */ LSLS R1, R6, 0x18 \n\
/* 0800cfa4 */ LSRS R1, R1, 0x18 \n\
 \n\
branch_0800cfa6: \n\
/* 0800cfa6 */ EORS R0, R1 @ Set R0 to R0 ^ R1 \n\
/* 0800cfa8 */ NEGS R1, R0 @ Set R1 to -R0 \n\
/* 0800cfaa */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800cfac */ LSRS R5, R1, 0x1F \n\
 \n\
branch_0800cfae: \n\
/* 0800cfae */ LDRB R0, [R3] \n\
/* 0800cfb0 */ CMP R0, 0x13 @ Compare R0 and 0x13 \n\
/* 0800cfb2 */ BNE branch_0800cfbe \n\
/* 0800cfb4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800cfb6 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800cfb8 */ BNE branch_0800cfbc \n\
/* 0800cfba */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0800cfbc: \n\
/* 0800cfbc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0800cfbe: \n\
/* 0800cfbe */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800cfc0 */ BNE branch_0800cfc6 \n\
/* 0800cfc2 */ BL branch_0800df9e \n\
 \n\
branch_0800cfc6: \n\
/* 0800cfc6 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800cfc8 */ LDR R0, [R1, 0x8] \n\
/* 0800cfca */ BL beatscript_stream_jump_cond_if \n\
/* 0800cfce */ B branch_0800d1a6 \n\
\n\
jump_0800cfd0: \n\
/* 0800cfd0 */ LDR R0, [R6] \n\
/* 0800cfd2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800cfd4 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0800cfd6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800cfd8 */ BEQ branch_0800cfde \n\
/* 0800cfda */ BL branch_0800df9e \n\
 \n\
branch_0800cfde: \n\
/* 0800cfde */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0800cfe0 */ LDR R0, [R4, 0x8] \n\
/* 0800cfe2 */ BL beatscript_stream_jump_cond_if \n\
/* 0800cfe6 */ STR R0, [R4, 0x8] \n\
/* 0800cfe8 */ BL branch_0800df9e \n\
\n\
jump_0800cfec: \n\
/* 0800cfec */ LDR R0, [R6] \n\
/* 0800cfee */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800cff0 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 0800cff2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800cff4 */ BNE branch_0800cffa \n\
/* 0800cff6 */ BL branch_0800df9e \n\
 \n\
branch_0800cffa: \n\
/* 0800cffa */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800cffc */ LDR R0, [R6, 0x8] \n\
/* 0800cffe */ BL beatscript_stream_jump_cond_if \n\
/* 0800d002 */ STR R0, [R6, 0x8] \n\
/* 0800d004 */ BL branch_0800df9e \n\
\n\
jump_0800d008: \n\
/* 0800d008 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800d00a */ LDR R0, [R1, 0x8] \n\
/* 0800d00c */ BL beatscript_stream_jump_cond_else \n\
/* 0800d010 */ B branch_0800d1a6 \n\
\n\
jump_0800d012: \n\
/* 0800d012 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d014 */ BEQ branch_0800d02a \n\
/* 0800d016 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d018 */ BCC branch_0800d024 \n\
/* 0800d01a */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d01c */ BEQ branch_0800d030 \n\
/* 0800d01e */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 0800d020 */ BEQ branch_0800d036 \n\
/* 0800d022 */ B branch_0800d03c \n\
 \n\
branch_0800d024: \n\
/* 0800d024 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800d026 */ LDR R5, [R3] \n\
/* 0800d028 */ B branch_0800d03c \n\
 \n\
branch_0800d02a: \n\
/* 0800d02a */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d02c */ LDRH R5, [R4] \n\
/* 0800d02e */ B branch_0800d03c \n\
 \n\
branch_0800d030: \n\
/* 0800d030 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d032 */ LDRB R5, [R6] \n\
/* 0800d034 */ B branch_0800d03c \n\
 \n\
branch_0800d036: \n\
/* 0800d036 */ BL _call_via_r8 \n\
/* 0800d03a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0800d03c: \n\
/* 0800d03c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800d03e */ LDR R0, [R1, 0x8] \n\
/* 0800d040 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800d042 */ BL beatscript_stream_jump_cond_switch \n\
/* 0800d046 */ B branch_0800d1a6 \n\
\n\
jump_0800d048: \n\
/* 0800d048 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0800d04a */ LDR R0, [R3, 0x8] \n\
/* 0800d04c */ BL beatscript_stream_jump_cond_break \n\
/* 0800d050 */ BL branch_0800d86c \n\
\n\
jump_0800d054: \n\
/* 0800d054 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d056 */ BEQ branch_0800d06c \n\
/* 0800d058 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d05a */ BCC branch_0800d062 \n\
/* 0800d05c */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d05e */ BEQ branch_0800d078 \n\
/* 0800d060 */ B branch_0800d088 \n\
 \n\
branch_0800d062: \n\
/* 0800d062 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d064 */ LDR R0, [R6] \n\
/* 0800d066 */ CMP R0, R8 @ Compare R0 and R8 \n\
/* 0800d068 */ BNE branch_0800d088 \n\
/* 0800d06a */ B branch_0800d086 \n\
 \n\
branch_0800d06c: \n\
/* 0800d06c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d06e */ LDRH R1, [R6] \n\
/* 0800d070 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d072 */ LSLS R0, R6, 0x10 \n\
/* 0800d074 */ LSRS R0, R0, 0x10 \n\
/* 0800d076 */ B branch_0800d082 \n\
 \n\
branch_0800d078: \n\
/* 0800d078 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d07a */ LDRB R1, [R6] \n\
/* 0800d07c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d07e */ LSLS R0, R2, 0x18 \n\
/* 0800d080 */ LSRS R0, R0, 0x18 \n\
 \n\
branch_0800d082: \n\
/* 0800d082 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800d084 */ BNE branch_0800d088 \n\
 \n\
branch_0800d086: \n\
/* 0800d086 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_0800d088: \n\
/* 0800d088 */ LDRB R0, [R3] \n\
/* 0800d08a */ CMP R0, 0x1F @ Compare R0 and 0x1F \n\
/* 0800d08c */ BNE branch_0800d098 \n\
/* 0800d08e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800d090 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800d092 */ BNE branch_0800d096 \n\
/* 0800d094 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0800d096: \n\
/* 0800d096 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0800d098: \n\
/* 0800d098 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800d09a */ BNE branch_0800d0a0 \n\
/* 0800d09c */ BL branch_0800df9e \n\
 \n\
branch_0800d0a0: \n\
/* 0800d0a0 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0800d0a2 */ LDR R0, [R3, 0x8] \n\
/* 0800d0a4 */ BL beatscript_stream_jump_cond_while \n\
/* 0800d0a8 */ BL branch_0800d86c \n\
\n\
jump_0800d0ac: \n\
/* 0800d0ac */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0800d0ae */ LDR R0, [R5, 0x8] \n\
/* 0800d0b0 */ SUBS R0, 0xC @ Subtract 0xC from R0 \n\
/* 0800d0b2 */ BL beatscript_stream_jump_cond_end_while \n\
/* 0800d0b6 */ STR R0, [R5, 0x8] \n\
/* 0800d0b8 */ BL branch_0800df9e \n\
\n\
jump_0800d0bc: \n\
/* 0800d0bc */ LDR R0, =gCurrentSceneData \n\
/* 0800d0be */ LDR R0, [R0] \n\
/* 0800d0c0 */ ADDS R4, R0, R6 @ Set R4 to R0 + R6 \n\
/* 0800d0c2 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d0c4 */ BEQ branch_0800d0e2 \n\
/* 0800d0c6 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d0c8 */ BCC branch_0800d0d4 \n\
/* 0800d0ca */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d0cc */ BEQ branch_0800d0ec \n\
/* 0800d0ce */ B branch_0800d0fc \n\
\n\
.ltorg \n\
 \n\
branch_0800d0d4: \n\
/* 0800d0d4 */ LDR R1, [R4] \n\
/* 0800d0d6 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d0d8 */ EORS R1, R6 @ Set R1 to R1 ^ R6 \n\
/* 0800d0da */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 0800d0dc */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d0de */ LSRS R5, R0, 0x1F \n\
/* 0800d0e0 */ B branch_0800d0fc \n\
 \n\
branch_0800d0e2: \n\
/* 0800d0e2 */ LDRH R0, [R4] \n\
/* 0800d0e4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d0e6 */ LSLS R1, R2, 0x10 \n\
/* 0800d0e8 */ LSRS R1, R1, 0x10 \n\
/* 0800d0ea */ B branch_0800d0f4 \n\
 \n\
branch_0800d0ec: \n\
/* 0800d0ec */ LDRB R0, [R4] \n\
/* 0800d0ee */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d0f0 */ LSLS R1, R4, 0x18 \n\
/* 0800d0f2 */ LSRS R1, R1, 0x18 \n\
 \n\
branch_0800d0f4: \n\
/* 0800d0f4 */ EORS R0, R1 @ Set R0 to R0 ^ R1 \n\
/* 0800d0f6 */ NEGS R1, R0 @ Set R1 to -R0 \n\
/* 0800d0f8 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800d0fa */ LSRS R5, R1, 0x1F \n\
 \n\
branch_0800d0fc: \n\
/* 0800d0fc */ LDRB R0, [R3] \n\
/* 0800d0fe */ CMP R0, 0x22 @ Compare R0 and 0x22 \n\
/* 0800d100 */ BNE branch_0800d10c \n\
/* 0800d102 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800d104 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800d106 */ BNE branch_0800d10a \n\
/* 0800d108 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0800d10a: \n\
/* 0800d10a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0800d10c: \n\
/* 0800d10c */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800d10e */ BNE branch_0800d114 \n\
/* 0800d110 */ BL branch_0800df9e \n\
 \n\
branch_0800d114: \n\
/* 0800d114 */ B jump_0800d872 \n\
\n\
jump_0800d116: \n\
/* 0800d116 */ LDR R0, =gCurrentSceneData \n\
/* 0800d118 */ LDR R0, [R0] \n\
/* 0800d11a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d11c */ ADDS R4, R0, R6 @ Set R4 to R0 + R6 \n\
/* 0800d11e */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d120 */ BEQ branch_0800d134 \n\
/* 0800d122 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d124 */ BCC branch_0800d130 \n\
/* 0800d126 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d128 */ BEQ branch_0800d138 \n\
/* 0800d12a */ B branch_0800d13a \n\
\n\
.ltorg \n\
 \n\
branch_0800d130: \n\
/* 0800d130 */ LDR R5, [R4] \n\
/* 0800d132 */ B branch_0800d13a \n\
 \n\
branch_0800d134: \n\
/* 0800d134 */ LDRH R5, [R4] \n\
/* 0800d136 */ B branch_0800d13a \n\
 \n\
branch_0800d138: \n\
/* 0800d138 */ LDRB R5, [R4] \n\
 \n\
branch_0800d13a: \n\
/* 0800d13a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800d13c */ LDR R0, [R1, 0x8] \n\
/* 0800d13e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800d140 */ BL beatscript_stream_jump_cond_switch \n\
/* 0800d144 */ B branch_0800d1a6 \n\
\n\
jump_0800d146: \n\
/* 0800d146 */ LDR R0, =gCurrentSceneData \n\
/* 0800d148 */ LDR R0, [R0] \n\
/* 0800d14a */ ADDS R4, R0, R6 @ Set R4 to R0 + R6 \n\
/* 0800d14c */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d14e */ BEQ branch_0800d16a \n\
/* 0800d150 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d152 */ BCC branch_0800d160 \n\
/* 0800d154 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d156 */ BEQ branch_0800d176 \n\
/* 0800d158 */ B branch_0800d186 \n\
\n\
.ltorg \n\
 \n\
branch_0800d160: \n\
/* 0800d160 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d162 */ LDR R0, [R4] \n\
/* 0800d164 */ CMP R0, R8 @ Compare R0 and R8 \n\
/* 0800d166 */ BNE branch_0800d186 \n\
/* 0800d168 */ B branch_0800d184 \n\
 \n\
branch_0800d16a: \n\
/* 0800d16a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d16c */ LDRH R1, [R4] \n\
/* 0800d16e */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d170 */ LSLS R0, R4, 0x10 \n\
/* 0800d172 */ LSRS R0, R0, 0x10 \n\
/* 0800d174 */ B branch_0800d180 \n\
 \n\
branch_0800d176: \n\
/* 0800d176 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d178 */ LDRB R1, [R4] \n\
/* 0800d17a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d17c */ LSLS R0, R6, 0x18 \n\
/* 0800d17e */ LSRS R0, R0, 0x18 \n\
 \n\
branch_0800d180: \n\
/* 0800d180 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800d182 */ BNE branch_0800d186 \n\
 \n\
branch_0800d184: \n\
/* 0800d184 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_0800d186: \n\
/* 0800d186 */ LDRB R0, [R3] \n\
/* 0800d188 */ CMP R0, 0x24 @ Compare R0 and 0x24 \n\
/* 0800d18a */ BNE branch_0800d196 \n\
/* 0800d18c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800d18e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800d190 */ BNE branch_0800d194 \n\
/* 0800d192 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0800d194: \n\
/* 0800d194 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0800d196: \n\
/* 0800d196 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800d198 */ BNE branch_0800d19e \n\
/* 0800d19a */ BL branch_0800df9e \n\
 \n\
branch_0800d19e: \n\
/* 0800d19e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800d1a0 */ LDR R0, [R1, 0x8] \n\
/* 0800d1a2 */ BL beatscript_stream_jump_cond_while \n\
 \n\
branch_0800d1a6: \n\
/* 0800d1a6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800d1a8 */ STR R0, [R2, 0x8] \n\
/* 0800d1aa */ BL branch_0800df9e \n\
\n\
jump_0800d1ae: \n\
/* 0800d1ae */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0800d1b0 */ LSLS R0, R3, 0x2 \n\
/* 0800d1b2 */ LDR R4, =(D_030053c0 + 0x160) \n\
/* 0800d1b4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800d1b6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d1b8 */ BL _call_via_r6 \n\
/* 0800d1bc */ LDR R5, =0xfffffea0 \n\
/* 0800d1be */ ADDS R1, R4, R5 @ Set R1 to R4 + R5 \n\
/* 0800d1c0 */ STR R0, [R1, 0x24] \n\
/* 0800d1c2 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
jump_0800d1d0: \n\
/* 0800d1d0 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d1d2 */ BL _call_via_r6 \n\
/* 0800d1d6 */ B branch_0800d1e0 \n\
jump_0800d1d8: \n\
/* 0800d1d8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d1da */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800d1dc */ BL _call_via_r6 \n\
 \n\
branch_0800d1e0: \n\
/* 0800d1e0 */ LDR R1, =D_030053c0 \n\
/* 0800d1e2 */ STR R0, [R1, 0x24] \n\
/* 0800d1e4 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
jump_0800d1ec: \n\
/* 0800d1ec */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d1ee */ BEQ branch_0800d204 \n\
/* 0800d1f0 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d1f2 */ BCC branch_0800d1fc \n\
/* 0800d1f4 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d1f6 */ BEQ branch_0800d20c \n\
/* 0800d1f8 */ BL branch_0800df9e \n\
 \n\
branch_0800d1fc: \n\
/* 0800d1fc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d1fe */ STR R0, [R6] \n\
/* 0800d200 */ BL branch_0800df9e \n\
 \n\
branch_0800d204: \n\
/* 0800d204 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d206 */ STRH R1, [R6] \n\
/* 0800d208 */ BL branch_0800df9e \n\
 \n\
branch_0800d20c: \n\
/* 0800d20c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d20e */ STRB R2, [R6] \n\
/* 0800d210 */ BL branch_0800df9e \n\
\n\
jump_0800d214: \n\
/* 0800d214 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d216 */ BEQ branch_0800d22e \n\
/* 0800d218 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d21a */ BCC branch_0800d224 \n\
/* 0800d21c */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d21e */ BEQ branch_0800d238 \n\
/* 0800d220 */ BL branch_0800df9e \n\
 \n\
branch_0800d224: \n\
/* 0800d224 */ LDR R0, [R6] \n\
/* 0800d226 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800d228 */ STR R0, [R6] \n\
/* 0800d22a */ BL branch_0800df9e \n\
 \n\
branch_0800d22e: \n\
/* 0800d22e */ LDRH R0, [R6] \n\
/* 0800d230 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800d232 */ STRH R0, [R6] \n\
/* 0800d234 */ BL branch_0800df9e \n\
 \n\
branch_0800d238: \n\
/* 0800d238 */ LDRB R0, [R6] \n\
/* 0800d23a */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800d23c */ STRB R0, [R6] \n\
/* 0800d23e */ BL branch_0800df9e \n\
\n\
jump_0800d242: \n\
/* 0800d242 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d244 */ BEQ branch_0800d262 \n\
/* 0800d246 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d248 */ BCC branch_0800d252 \n\
/* 0800d24a */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d24c */ BEQ branch_0800d270 \n\
/* 0800d24e */ BL branch_0800df9e \n\
 \n\
branch_0800d252: \n\
/* 0800d252 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800d254 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800d256 */ LSLS R1, R3 @ Set R1 to R1 << R3 (logical) \n\
/* 0800d258 */ LDR R0, [R6] \n\
/* 0800d25a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d25c */ STR R0, [R6] \n\
/* 0800d25e */ BL branch_0800df9e \n\
 \n\
branch_0800d262: \n\
/* 0800d262 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d264 */ LSLS R7, R4 @ Set R7 to R7 << R4 (logical) \n\
/* 0800d266 */ LDRH R0, [R6] \n\
/* 0800d268 */ ORRS R7, R0 @ Set R7 to R7 | R0 \n\
/* 0800d26a */ STRH R7, [R6] \n\
/* 0800d26c */ BL branch_0800df9e \n\
 \n\
branch_0800d270: \n\
/* 0800d270 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800d272 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800d274 */ LSLS R0, R5 @ Set R0 to R0 << R5 (logical) \n\
/* 0800d276 */ LDRB R1, [R6] \n\
/* 0800d278 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d27a */ STRB R0, [R6] \n\
/* 0800d27c */ BL branch_0800df9e \n\
\n\
jump_0800d280: \n\
/* 0800d280 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d282 */ BEQ branch_0800d2a0 \n\
/* 0800d284 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d286 */ BCC branch_0800d290 \n\
/* 0800d288 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d28a */ BEQ branch_0800d2ae \n\
/* 0800d28c */ BL branch_0800df9e \n\
 \n\
branch_0800d290: \n\
/* 0800d290 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800d292 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d294 */ LSLS R1, R0 @ Set R1 to R1 << R0 (logical) \n\
/* 0800d296 */ LDR R0, [R6] \n\
/* 0800d298 */ BICS R0, R1 @ Clear bits in R1 from R0 \n\
/* 0800d29a */ STR R0, [R6] \n\
/* 0800d29c */ BL branch_0800df9e \n\
 \n\
branch_0800d2a0: \n\
/* 0800d2a0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d2a2 */ LSLS R7, R1 @ Set R7 to R7 << R1 (logical) \n\
/* 0800d2a4 */ LDRH R0, [R6] \n\
/* 0800d2a6 */ BICS R0, R7 @ Clear bits in R7 from R0 \n\
/* 0800d2a8 */ STRH R0, [R6] \n\
/* 0800d2aa */ BL branch_0800df9e \n\
 \n\
branch_0800d2ae: \n\
/* 0800d2ae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800d2b0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d2b2 */ LSLS R1, R2 @ Set R1 to R1 << R2 (logical) \n\
/* 0800d2b4 */ LDRB R0, [R6] \n\
/* 0800d2b6 */ BICS R0, R1 @ Clear bits in R1 from R0 \n\
/* 0800d2b8 */ STRB R0, [R6] \n\
/* 0800d2ba */ BL branch_0800df9e \n\
\n\
jump_0800d2be: \n\
/* 0800d2be */ LDR R0, =gCurrentSceneData \n\
/* 0800d2c0 */ LDR R0, [R0] \n\
/* 0800d2c2 */ ADDS R5, R0, R6 @ Set R5 to R0 + R6 \n\
/* 0800d2c4 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d2c6 */ BEQ branch_0800d2e0 \n\
/* 0800d2c8 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d2ca */ BCC branch_0800d2d8 \n\
/* 0800d2cc */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d2ce */ BEQ branch_0800d2e8 \n\
/* 0800d2d0 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800d2d8: \n\
/* 0800d2d8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800d2da */ STR R3, [R5] \n\
/* 0800d2dc */ BL branch_0800df9e \n\
 \n\
branch_0800d2e0: \n\
/* 0800d2e0 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d2e2 */ STRH R4, [R5] \n\
/* 0800d2e4 */ BL branch_0800df9e \n\
 \n\
branch_0800d2e8: \n\
/* 0800d2e8 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d2ea */ STRB R6, [R5] \n\
/* 0800d2ec */ BL branch_0800df9e \n\
\n\
jump_0800d2f0: \n\
/* 0800d2f0 */ LDR R0, =gCurrentSceneData \n\
/* 0800d2f2 */ LDR R0, [R0] \n\
/* 0800d2f4 */ ADDS R5, R0, R6 @ Set R5 to R0 + R6 \n\
/* 0800d2f6 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d2f8 */ BEQ branch_0800d316 \n\
/* 0800d2fa */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d2fc */ BCC branch_0800d30c \n\
/* 0800d2fe */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d300 */ BEQ branch_0800d320 \n\
/* 0800d302 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800d30c: \n\
/* 0800d30c */ LDR R0, [R5] \n\
/* 0800d30e */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800d310 */ STR R0, [R5] \n\
/* 0800d312 */ BL branch_0800df9e \n\
 \n\
branch_0800d316: \n\
/* 0800d316 */ LDRH R0, [R5] \n\
/* 0800d318 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800d31a */ STRH R0, [R5] \n\
/* 0800d31c */ BL branch_0800df9e \n\
 \n\
branch_0800d320: \n\
/* 0800d320 */ LDRB R0, [R5] \n\
/* 0800d322 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800d324 */ STRB R0, [R5] \n\
/* 0800d326 */ BL branch_0800df9e \n\
\n\
jump_0800d32a: \n\
/* 0800d32a */ LDR R0, =gCurrentSceneData \n\
/* 0800d32c */ LDR R0, [R0] \n\
/* 0800d32e */ ADDS R5, R0, R6 @ Set R5 to R0 + R6 \n\
/* 0800d330 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d332 */ BEQ branch_0800d354 \n\
/* 0800d334 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d336 */ BCC branch_0800d344 \n\
/* 0800d338 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d33a */ BEQ branch_0800d362 \n\
/* 0800d33c */ BL branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800d344: \n\
/* 0800d344 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800d346 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d348 */ LSLS R1, R0 @ Set R1 to R1 << R0 (logical) \n\
/* 0800d34a */ LDR R0, [R5] \n\
/* 0800d34c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d34e */ STR R0, [R5] \n\
/* 0800d350 */ BL branch_0800df9e \n\
 \n\
branch_0800d354: \n\
/* 0800d354 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d356 */ LSLS R7, R1 @ Set R7 to R7 << R1 (logical) \n\
/* 0800d358 */ LDRH R0, [R5] \n\
/* 0800d35a */ ORRS R7, R0 @ Set R7 to R7 | R0 \n\
/* 0800d35c */ STRH R7, [R5] \n\
/* 0800d35e */ BL branch_0800df9e \n\
 \n\
branch_0800d362: \n\
/* 0800d362 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800d364 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d366 */ LSLS R0, R2 @ Set R0 to R0 << R2 (logical) \n\
/* 0800d368 */ LDRB R1, [R5] \n\
/* 0800d36a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d36c */ STRB R0, [R5] \n\
/* 0800d36e */ BL branch_0800df9e \n\
\n\
jump_0800d372: \n\
/* 0800d372 */ LDR R0, =gCurrentSceneData \n\
/* 0800d374 */ LDR R0, [R0] \n\
/* 0800d376 */ ADDS R5, R0, R6 @ Set R5 to R0 + R6 \n\
/* 0800d378 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d37a */ BEQ branch_0800d39c \n\
/* 0800d37c */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800d37e */ BCC branch_0800d38c \n\
/* 0800d380 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800d382 */ BEQ branch_0800d3aa \n\
/* 0800d384 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800d38c: \n\
/* 0800d38c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800d38e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800d390 */ LSLS R1, R3 @ Set R1 to R1 << R3 (logical) \n\
/* 0800d392 */ LDR R0, [R5] \n\
/* 0800d394 */ BICS R0, R1 @ Clear bits in R1 from R0 \n\
/* 0800d396 */ STR R0, [R5] \n\
/* 0800d398 */ BL branch_0800df9e \n\
 \n\
branch_0800d39c: \n\
/* 0800d39c */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d39e */ LSLS R7, R4 @ Set R7 to R7 << R4 (logical) \n\
/* 0800d3a0 */ LDRH R0, [R5] \n\
/* 0800d3a2 */ BICS R0, R7 @ Clear bits in R7 from R0 \n\
/* 0800d3a4 */ STRH R0, [R5] \n\
/* 0800d3a6 */ BL branch_0800df9e \n\
 \n\
branch_0800d3aa: \n\
/* 0800d3aa */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800d3ac */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d3ae */ LSLS R1, R6 @ Set R1 to R1 << R6 (logical) \n\
/* 0800d3b0 */ LDRB R0, [R5] \n\
/* 0800d3b2 */ BICS R0, R1 @ Clear bits in R1 from R0 \n\
/* 0800d3b4 */ STRB R0, [R5] \n\
/* 0800d3b6 */ BL branch_0800df9e \n\
\n\
jump_0800d3ba: \n\
/* 0800d3ba */ CMP R6, 0xFE @ Compare R6 and 0xFE \n\
/* 0800d3bc */ BHI branch_0800d3ca \n\
/* 0800d3be */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d3c0 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800d3c2 */ BL scene_set_music_with_soundplayer \n\
/* 0800d3c6 */ BL branch_0800df9e \n\
 \n\
branch_0800d3ca: \n\
/* 0800d3ca */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d3cc */ BL scene_set_music \n\
/* 0800d3d0 */ BL branch_0800df9e \n\
\n\
jump_0800d3d4: \n\
/* 0800d3d4 */ CMP R6, 0xFE @ Compare R6 and 0xFE \n\
/* 0800d3d6 */ BHI branch_0800d3e4 \n\
/* 0800d3d8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d3da */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800d3dc */ BL scene_play_music_with_soundplayer \n\
/* 0800d3e0 */ BL branch_0800df9e \n\
 \n\
branch_0800d3e4: \n\
/* 0800d3e4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d3e6 */ BL scene_play_music \n\
/* 0800d3ea */ BL branch_0800df9e \n\
\n\
jump_0800d3ee: \n\
/* 0800d3ee */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d3f0 */ BL play_sound \n\
/* 0800d3f4 */ BL branch_0800df9e \n\
\n\
jump_0800d3f8: \n\
/* 0800d3f8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d3fa */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800d3fc */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800d3fe */ BL play_sound_w_pitch_volume \n\
/* 0800d402 */ BL branch_0800df9e \n\
\n\
jump_0800d406: \n\
/* 0800d406 */ LDR R1, =0xffff \n\
/* 0800d408 */ ANDS R1, R6 @ Set R1 to R1 & R6 \n\
/* 0800d40a */ ASRS R2, R6, 0x10 \n\
/* 0800d40c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d40e */ BL play_sound_w_pitch_volume \n\
/* 0800d412 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800d414 */ BL get_beatscript_tempo \n\
/* 0800d418 */ LSLS R0, R0, 0x8 \n\
/* 0800d41a */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800d41c */ BL __udivsi3 \n\
/* 0800d420 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800d422 */ LSLS R1, R1, 0x10 \n\
/* 0800d424 */ LSRS R1, R1, 0x10 \n\
/* 0800d426 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800d428 */ BL set_soundplayer_speed \n\
/* 0800d42c */ BL branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d434: \n\
/* 0800d434 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800d436 */ BEQ branch_0800d440 \n\
/* 0800d438 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d43a */ BL ticks_to_frames \n\
/* 0800d43e */ B branch_0800d442 \n\
 \n\
branch_0800d440: \n\
/* 0800d440 */ MOV R0, R8 @ Set R0 to R8 \n\
 \n\
branch_0800d442: \n\
/* 0800d442 */ BL scene_fade_music_in \n\
/* 0800d446 */ BL branch_0800df9e \n\
\n\
jump_0800d44a: \n\
/* 0800d44a */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800d44c */ BEQ branch_0800d456 \n\
/* 0800d44e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d450 */ BL ticks_to_frames \n\
/* 0800d454 */ B branch_0800d458 \n\
 \n\
branch_0800d456: \n\
/* 0800d456 */ MOV R0, R8 @ Set R0 to R8 \n\
 \n\
branch_0800d458: \n\
/* 0800d458 */ BL scene_fade_music_out \n\
/* 0800d45c */ BL branch_0800df9e \n\
\n\
jump_0800d460: \n\
/* 0800d460 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d462 */ LSLS R0, R1, 0x10 \n\
/* 0800d464 */ LSRS R0, R0, 0x10 \n\
/* 0800d466 */ BL ticks_to_frames \n\
/* 0800d46a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800d46c */ LSLS R1, R1, 0x10 \n\
/* 0800d46e */ LSRS R1, R1, 0x10 \n\
/* 0800d470 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800d472 */ BL fade_out_sound \n\
/* 0800d476 */ BL branch_0800df9e \n\
\n\
jump_0800d47a: \n\
/* 0800d47a */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800d47c */ LDR R7, =(D_030053c0 + 0x24) \n\
/* 0800d47e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d480 */ LSRS R6, R2, 0x1B \n\
/* 0800d482 */ LDR R2, =0x07ffffff \n\
/* 0800d484 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d486 */ ANDS R2, R4 @ Set R2 to R2 & R4 \n\
/* 0800d488 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d48a */ ADDS R4, R7, 0x0 @ Set R4 to R7 + 0x0 \n\
/* 0800d48c */ SUBS R4, 0x24 @ Subtract 0x24 from R4 \n\
 \n\
branch_0800d48e: \n\
/* 0800d48e */ ADDS R0, R7, R5 @ Set R0 to R7 + R5 \n\
/* 0800d490 */ ADDS R1, R3, R5 @ Set R1 to R3 + R5 \n\
/* 0800d492 */ LDRB R1, [R1] \n\
/* 0800d494 */ STRB R1, [R0] \n\
/* 0800d496 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800d498 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0800d49a */ BLS branch_0800d48e \n\
/* 0800d49c */ LDR R0, [R4, 0x24] \n\
/* 0800d49e */ LSRS R0, R6 @ Set R0 to R0 >> R6 (logical) \n\
/* 0800d4a0 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800d4a2 */ STR R0, [R4, 0x24] \n\
/* 0800d4a4 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d4b0: \n\
/* 0800d4b0 */ BL _call_via_r6 \n\
/* 0800d4b4 */ LDR R2, =D_030053c0 \n\
/* 0800d4b6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800d4b8 */ LSRS R6, R5, 0x1B \n\
/* 0800d4ba */ LDR R1, =0x07ffffff \n\
/* 0800d4bc */ ANDS R5, R1 @ Set R5 to R5 & R1 \n\
/* 0800d4be */ LSRS R0, R6 @ Set R0 to R0 >> R6 (logical) \n\
/* 0800d4c0 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 0800d4c2 */ STR R5, [R2, 0x24] \n\
/* 0800d4c4 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d4d0: \n\
/* 0800d4d0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800d4d2 */ BL func_08002e78 \n\
/* 0800d4d6 */ BL branch_0800df9e \n\
\n\
jump_0800d4da: \n\
/* 0800d4da */ BL get_current_mem_id \n\
/* 0800d4de */ LSLS R0, R0, 0x10 \n\
/* 0800d4e0 */ LSRS R0, R0, 0x10 \n\
/* 0800d4e2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800d4e4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d4e6 */ BL func_08002ee0 \n\
/* 0800d4ea */ BL branch_0800df9e \n\
\n\
jump_0800d4ee: \n\
/* 0800d4ee */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d4f0 */ LSLS R0, R6, 0x10 \n\
/* 0800d4f2 */ LSRS R0, R0, 0x10 \n\
/* 0800d4f4 */ BL set_beatscript_speed \n\
/* 0800d4f8 */ BL branch_0800df9e \n\
\n\
jump_0800d4fc: \n\
/* 0800d4fc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d4fe */ BL scene_set_music \n\
/* 0800d502 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d504 */ BL get_music_base_tempo \n\
/* 0800d508 */ LSLS R0, R0, 0x10 \n\
/* 0800d50a */ LSRS R0, R0, 0x10 \n\
/* 0800d50c */ BL set_beatscript_tempo \n\
/* 0800d510 */ BL branch_0800df9e \n\
\n\
jump_0800d514: \n\
/* 0800d514 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d516 */ LSLS R0, R1, 0x10 \n\
/* 0800d518 */ ASRS R0, R0, 0x10 \n\
/* 0800d51a */ BL scene_set_music_pitch_env \n\
/* 0800d51e */ BL branch_0800df9e \n\
\n\
jump_0800d522: \n\
/* 0800d522 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d524 */ LSLS R0, R2, 0x10 \n\
/* 0800d526 */ ASRS R0, R0, 0x10 \n\
/* 0800d528 */ BL scene_set_music_pitch \n\
/* 0800d52c */ BL branch_0800df9e \n\
\n\
jump_0800d530: \n\
/* 0800d530 */ LDR R5, =0x7fffffff \n\
/* 0800d532 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800d534 */ ANDS R5, R3 @ Set R5 to R5 & R3 \n\
/* 0800d536 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800d538 */ BGE branch_0800d542 \n\
/* 0800d53a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800d53c */ BL ticks_to_frames \n\
/* 0800d540 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0800d542: \n\
/* 0800d542 */ BL get_current_mem_id \n\
/* 0800d546 */ LSLS R0, R0, 0x10 \n\
/* 0800d548 */ LSRS R0, R0, 0x10 \n\
/* 0800d54a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800d54c */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800d54e */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0800d550 */ BL interp_lcd_blend_mode \n\
/* 0800d554 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d55c: \n\
/* 0800d55c */ LSLS R0, R7, 0x9 \n\
/* 0800d55e */ LSRS R5, R0, 0x12 \n\
/* 0800d560 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800d562 */ LSLS R0, R0, 0x10 \n\
/* 0800d564 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 0800d566 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800d568 */ BEQ branch_0800d572 \n\
/* 0800d56a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800d56c */ BL ticks_to_frames \n\
/* 0800d570 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0800d572: \n\
/* 0800d572 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0800d574 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 0800d576 */ ADDS R4, R0, 0x1 @ Set R4 to R0 + 0x1 \n\
/* 0800d578 */ LSRS R0, R7, 0x4 \n\
/* 0800d57a */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
/* 0800d57c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800d57e */ LSLS R0, R0, 0x5 \n\
/* 0800d580 */ LDR R1, =(D_03004b10 + 0x54) \n\
/* 0800d582 */ ADDS R7, R0, R1 @ Set R7 to R0 + R1 \n\
/* 0800d584 */ LDR R0, =0xffff \n\
/* 0800d586 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0800d588 */ BHI branch_0800d5b0 \n\
/* 0800d58a */ BL get_current_mem_id \n\
/* 0800d58e */ LSLS R0, R0, 0x10 \n\
/* 0800d590 */ LSRS R0, R0, 0x10 \n\
/* 0800d592 */ LSLS R1, R5, 0x18 \n\
/* 0800d594 */ LSRS R1, R1, 0x18 \n\
/* 0800d596 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800d598 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d59a */ STR R4, [SP] \n\
/* 0800d59c */ STR R7, [SP, 0x4] \n\
/* 0800d59e */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800d5a0 */ BL func_08002018 \n\
/* 0800d5a4 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800d5b0: \n\
/* 0800d5b0 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0800d5b2 */ BHI branch_0800d5d4 \n\
/* 0800d5b4 */ BL get_current_mem_id \n\
/* 0800d5b8 */ LSLS R0, R0, 0x10 \n\
/* 0800d5ba */ LSRS R0, R0, 0x10 \n\
/* 0800d5bc */ LSLS R1, R5, 0x18 \n\
/* 0800d5be */ LSRS R1, R1, 0x18 \n\
/* 0800d5c0 */ LSLS R2, R4, 0x18 \n\
/* 0800d5c2 */ LSRS R2, R2, 0x18 \n\
/* 0800d5c4 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800d5c6 */ STR R5, [SP] \n\
/* 0800d5c8 */ STR R7, [SP, 0x4] \n\
/* 0800d5ca */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800d5cc */ BL func_08002050 \n\
/* 0800d5d0 */ BL branch_0800df9e \n\
 \n\
branch_0800d5d4: \n\
/* 0800d5d4 */ BL get_current_mem_id \n\
/* 0800d5d8 */ LSLS R0, R0, 0x10 \n\
/* 0800d5da */ LSRS R0, R0, 0x10 \n\
/* 0800d5dc */ LSLS R1, R5, 0x18 \n\
/* 0800d5de */ LSRS R1, R1, 0x18 \n\
/* 0800d5e0 */ LSLS R2, R4, 0x18 \n\
/* 0800d5e2 */ LSRS R2, R2, 0x18 \n\
/* 0800d5e4 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800d5e6 */ STR R3, [SP] \n\
/* 0800d5e8 */ STR R7, [SP, 0x4] \n\
/* 0800d5ea */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800d5ec */ BL func_08001fe0 \n\
/* 0800d5f0 */ BL branch_0800df9e \n\
\n\
jump_0800d5f4: \n\
/* 0800d5f4 */ MOVS R5, 0x3 @ Set R5 to 0x3 \n\
/* 0800d5f6 */ ANDS R5, R7 @ Set R5 to R5 & R7 \n\
/* 0800d5f8 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0800d5fa */ ANDS R7, R0 @ Set R7 to R7 & R0 \n\
/* 0800d5fc */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800d5fe */ BEQ branch_0800d608 \n\
/* 0800d600 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800d602 */ BL scene_show_bg_layer \n\
/* 0800d606 */ B branch_0800d60e \n\
 \n\
branch_0800d608: \n\
/* 0800d608 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800d60a */ BL scene_hide_bg_layer \n\
 \n\
branch_0800d60e: \n\
/* 0800d60e */ LDR R2, =D_03004b10 \n\
/* 0800d610 */ LSLS R0, R5, 0x2 \n\
/* 0800d612 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800d614 */ STRH R6, [R0, 0xC] \n\
/* 0800d616 */ ASRS R1, R6, 0x10 \n\
/* 0800d618 */ STRH R1, [R0, 0xE] \n\
/* 0800d61a */ LSLS R0, R5, 0x1 \n\
/* 0800d61c */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0800d61e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800d620 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d622 */ STRH R4, [R0] \n\
/* 0800d624 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d62c: \n\
/* 0800d62c */ ADD R3, SP, 0xC \n\
/* 0800d62e */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0800d630 */ ANDS R1, R7 @ Set R1 to R1 & R7 \n\
/* 0800d632 */ LDRB R2, [R3] \n\
/* 0800d634 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0800d636 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800d638 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800d63a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d63c */ STRB R0, [R3] \n\
/* 0800d63e */ LSRS R0, R7, 0x2 \n\
/* 0800d640 */ BL ticks_to_frames \n\
/* 0800d644 */ LDR R1, =0x7fff \n\
/* 0800d646 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800d648 */ LSLS R1, R1, 0x2 \n\
/* 0800d64a */ LDR R0, [SP, 0xC] \n\
/* 0800d64c */ LDR R2, =0xfffe0003 \n\
/* 0800d64e */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800d650 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d652 */ STR R0, [SP, 0xC] \n\
/* 0800d654 */ STR R6, [SP, 0x10] \n\
/* 0800d656 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800d658 */ LSLS R0, R5, 0x10 \n\
/* 0800d65a */ ASRS R0, R0, 0x10 \n\
/* 0800d65c */ STR R0, [SP, 0x14] \n\
/* 0800d65e */ ASRS R0, R5, 0x10 \n\
/* 0800d660 */ STR R0, [SP, 0x18] \n\
/* 0800d662 */ BL get_current_mem_id \n\
/* 0800d666 */ LSLS R0, R0, 0x10 \n\
/* 0800d668 */ LSRS R0, R0, 0x10 \n\
/* 0800d66a */ LDR R1, =integer_interp_task \n\
/* 0800d66c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800d66e */ STR R2, [SP] \n\
/* 0800d670 */ ADD R2, SP, 0xC \n\
/* 0800d672 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800d674 */ BL start_new_task \n\
/* 0800d678 */ B branch_0800dd68 \n\
\n\
.ltorg \n\
\n\
jump_0800d688: \n\
/* 0800d688 */ ADD R4, SP, 0x1C \n\
/* 0800d68a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0800d68c */ ANDS R1, R7 @ Set R1 to R1 & R7 \n\
/* 0800d68e */ LDRB R2, [R4] \n\
/* 0800d690 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0800d692 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800d694 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800d696 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d698 */ STRB R0, [R4] \n\
/* 0800d69a */ LSRS R0, R7, 0x2 \n\
/* 0800d69c */ BL ticks_to_frames \n\
/* 0800d6a0 */ LDR R1, =0x7fff \n\
/* 0800d6a2 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800d6a4 */ LSLS R1, R1, 0x2 \n\
/* 0800d6a6 */ LDR R0, [SP, 0x1C] \n\
/* 0800d6a8 */ LDR R2, =0xfffe0003 \n\
/* 0800d6aa */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800d6ac */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d6ae */ STR R0, [SP, 0x1C] \n\
/* 0800d6b0 */ STR R6, [R4, 0x4] \n\
/* 0800d6b2 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d6b4 */ LSLS R0, R6, 0x10 \n\
/* 0800d6b6 */ ASRS R0, R0, 0x10 \n\
/* 0800d6b8 */ STR R0, [R4, 0x8] \n\
/* 0800d6ba */ ASRS R0, R6, 0x10 \n\
/* 0800d6bc */ STR R0, [R4, 0xC] \n\
/* 0800d6be */ BL get_current_mem_id \n\
/* 0800d6c2 */ LSLS R0, R0, 0x10 \n\
/* 0800d6c4 */ LSRS R0, R0, 0x10 \n\
/* 0800d6c6 */ LDR R1, =integer_alternator_task \n\
/* 0800d6c8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800d6ca */ STR R2, [SP] \n\
/* 0800d6cc */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800d6ce */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800d6d0 */ BL start_new_task \n\
/* 0800d6d4 */ B branch_0800dd68 \n\
\n\
.ltorg \n\
\n\
jump_0800d6e4: \n\
/* 0800d6e4 */ ADD R4, SP, 0x2C \n\
/* 0800d6e6 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0800d6e8 */ ANDS R1, R7 @ Set R1 to R1 & R7 \n\
/* 0800d6ea */ LDRB R2, [R4] \n\
/* 0800d6ec */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0800d6ee */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800d6f0 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800d6f2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d6f4 */ STRB R0, [R4] \n\
/* 0800d6f6 */ LSRS R0, R7, 0x2 \n\
/* 0800d6f8 */ BL ticks_to_frames \n\
/* 0800d6fc */ LDR R1, =0x7fff \n\
/* 0800d6fe */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800d700 */ LSLS R1, R1, 0x2 \n\
/* 0800d702 */ LDR R0, [SP, 0x2C] \n\
/* 0800d704 */ LDR R2, =0xfffe0003 \n\
/* 0800d706 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800d708 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d70a */ STR R0, [SP, 0x2C] \n\
/* 0800d70c */ STR R6, [R4, 0x4] \n\
/* 0800d70e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d710 */ LSLS R0, R1, 0x10 \n\
/* 0800d712 */ ASRS R0, R0, 0x10 \n\
/* 0800d714 */ STR R0, [R4, 0x8] \n\
/* 0800d716 */ ASRS R0, R1, 0x10 \n\
/* 0800d718 */ STR R0, [R4, 0xC] \n\
/* 0800d71a */ BL get_current_mem_id \n\
/* 0800d71e */ LSLS R0, R0, 0x10 \n\
/* 0800d720 */ LSRS R0, R0, 0x10 \n\
/* 0800d722 */ LDR R1, =integer_incrementer_task \n\
/* 0800d724 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800d726 */ STR R2, [SP] \n\
/* 0800d728 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800d72a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800d72c */ BL start_new_task \n\
/* 0800d730 */ B branch_0800dd68 \n\
\n\
.ltorg \n\
\n\
jump_0800d740: \n\
/* 0800d740 */ ADD R4, SP, 0x3C \n\
/* 0800d742 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0800d744 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800d746 */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 0800d748 */ LDRB R2, [R4] \n\
/* 0800d74a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0800d74c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800d74e */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800d750 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d752 */ STRB R0, [R4] \n\
/* 0800d754 */ LSRS R0, R7, 0x2 \n\
/* 0800d756 */ STR R0, [R4, 0x8] \n\
/* 0800d758 */ STR R6, [R4, 0xC] \n\
/* 0800d75a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d75c */ LSLS R1, R2, 0x10 \n\
/* 0800d75e */ ASRS R1, R1, 0x6 \n\
/* 0800d760 */ LDR R0, [SP, 0x3C] \n\
/* 0800d762 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0800d764 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800d766 */ STR R0, [SP, 0x3C] \n\
/* 0800d768 */ ASRS R0, R2, 0x10 \n\
/* 0800d76a */ LSLS R0, R0, 0x8 \n\
/* 0800d76c */ STR R0, [R4, 0x4] \n\
/* 0800d76e */ BL get_current_mem_id \n\
/* 0800d772 */ LSLS R0, R0, 0x10 \n\
/* 0800d774 */ LSRS R0, R0, 0x10 \n\
/* 0800d776 */ LDR R1, =integer_sine_interp_task \n\
/* 0800d778 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800d77a */ STR R2, [SP] \n\
/* 0800d77c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800d77e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800d780 */ BL start_new_task \n\
/* 0800d784 */ B branch_0800dd68 \n\
\n\
.ltorg \n\
\n\
jump_0800d78c: \n\
/* 0800d78c */ LDR R0, =D_030053c0 \n\
/* 0800d78e */ LDRH R0, [R0, 0x10] \n\
/* 0800d790 */ BL func_0800ed60_stub \n\
/* 0800d794 */ BL branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d79c: \n\
/* 0800d79c */ LSLS R0, R7, 0x10 \n\
/* 0800d79e */ LSRS R0, R0, 0x10 \n\
/* 0800d7a0 */ LSLS R1, R6, 0x10 \n\
/* 0800d7a2 */ LSRS R1, R1, 0x10 \n\
/* 0800d7a4 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800d7a6 */ LSLS R2, R3, 0x10 \n\
/* 0800d7a8 */ LSRS R2, R2, 0x10 \n\
/* 0800d7aa */ BL func_080041d0 \n\
/* 0800d7ae */ BL branch_0800df9e \n\
\n\
jump_0800d7b2: \n\
/* 0800d7b2 */ LDR R2, =D_03004b10 \n\
/* 0800d7b4 */ LDRH R1, [R2] \n\
/* 0800d7b6 */ LDR R0, =0xfff8 \n\
/* 0800d7b8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800d7ba */ ORRS R0, R6 @ Set R0 to R0 | R6 \n\
/* 0800d7bc */ STRH R0, [R2] \n\
/* 0800d7be */ BL branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d7cc: \n\
/* 0800d7cc */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800d7ce */ BEQ branch_0800d7e8 \n\
/* 0800d7d0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800d7d2 */ BL ticks_to_frames \n\
/* 0800d7d6 */ LSLS R0, R0, 0x10 \n\
/* 0800d7d8 */ LSRS R0, R0, 0x10 \n\
/* 0800d7da */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d7dc */ LSLS R1, R4, 0x10 \n\
/* 0800d7de */ LSRS R1, R1, 0x10 \n\
/* 0800d7e0 */ BL func_080070c4 \n\
/* 0800d7e4 */ BL branch_0800df9e \n\
 \n\
branch_0800d7e8: \n\
/* 0800d7e8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800d7ea */ BL ticks_to_frames \n\
/* 0800d7ee */ LSLS R0, R0, 0x10 \n\
/* 0800d7f0 */ LSRS R0, R0, 0x10 \n\
/* 0800d7f2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800d7f4 */ LSLS R1, R5, 0x10 \n\
/* 0800d7f6 */ LSRS R1, R1, 0x10 \n\
/* 0800d7f8 */ BL func_0800703c \n\
/* 0800d7fc */ BL branch_0800df9e \n\
\n\
jump_0800d800: \n\
/* 0800d800 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800d802 */ B branch_0800d80c \n\
\n\
jump_0800d804: \n\
/* 0800d804 */ BL get_beatscript_tempo \n\
/* 0800d808 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0800d80a */ LSRS R0, R0, 0x8 \n\
 \n\
branch_0800d80c: \n\
/* 0800d80c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d80e */ BL scene_interpolate_tempo \n\
/* 0800d812 */ BL branch_0800df9e \n\
\n\
jump_0800d816: \n\
/* 0800d816 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800d818 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d81a */ BL scene_interpolate_music_pitch \n\
/* 0800d81e */ B branch_0800df9e \n\
\n\
jump_0800d820: \n\
/* 0800d820 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d822 */ BL ticks_to_frames \n\
/* 0800d826 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800d828 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800d82a */ BL scene_interpolate_music_volume \n\
/* 0800d82e */ B branch_0800df9e \n\
\n\
jump_0800d830: \n\
/* 0800d830 */ LSLS R0, R7, 0x10 \n\
/* 0800d832 */ LSRS R0, R0, 0x10 \n\
/* 0800d834 */ LSLS R1, R6, 0x10 \n\
/* 0800d836 */ LSRS R1, R1, 0x10 \n\
/* 0800d838 */ BL scene_set_music_track_volume \n\
/* 0800d83c */ B branch_0800df9e \n\
\n\
jump_0800d83e: \n\
/* 0800d83e */ LSLS R0, R7, 0x10 \n\
/* 0800d840 */ LSRS R0, R0, 0x10 \n\
/* 0800d842 */ LDR R1, =D_030053c0 \n\
/* 0800d844 */ MOVS R2, 0xC9 @ Set R2 to 0xC9 \n\
/* 0800d846 */ LSLS R2, R2, 0x1 \n\
/* 0800d848 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800d84a */ LDRH R1, [R1] \n\
/* 0800d84c */ BL scene_set_music_track_volume \n\
/* 0800d850 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d852 */ BL ticks_to_frames \n\
/* 0800d856 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800d858 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800d85a */ BL scene_interpolate_music_track_volume \n\
/* 0800d85e */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d864: \n\
/* 0800d864 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0800d866 */ LDR R0, [R3, 0x8] \n\
/* 0800d868 */ BL beatscript_stream_jump_cond_if \n\
\n\
branch_0800d86c: \n\
/* 0800d86c */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0800d86e */ STR R0, [R4, 0x8] \n\
/* 0800d870 */ B branch_0800df9e \n\
 \n\
jump_0800d872: \n\
/* 0800d872 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0800d874 */ LDR R0, [R5, 0x8] \n\
/* 0800d876 */ BL beatscript_stream_jump_cond_if \n\
/* 0800d87a */ STR R0, [R5, 0x8] \n\
/* 0800d87c */ B branch_0800df9e \n\
\n\
jump_0800d87e: \n\
/* 0800d87e */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 0800d880 */ ANDS R1, R6 @ Set R1 to R1 & R6 \n\
/* 0800d882 */ LSLS R1, R1, 0x1 \n\
/* 0800d884 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800d886 */ LSLS R3, R6, 0x10 \n\
/* 0800d888 */ LSLS R2, R6, 0xC \n\
/* 0800d88a */ LSLS R4, R6, 0x4 \n\
/* 0800d88c */ LSRS R5, R6, 0x1C \n\
/* 0800d88e */ LDR R0, =D_03005380 \n\
/* 0800d890 */ LDR R0, [R0] \n\
/* 0800d892 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800d894 */ LDRSH R1, [R1, R6] \n\
/* 0800d896 */ ASRS R3, R3, 0x18 \n\
/* 0800d898 */ ASRS R2, R2, 0x1C \n\
/* 0800d89a */ STR R2, [SP] \n\
/* 0800d89c */ ASRS R4, R4, 0x18 \n\
/* 0800d89e */ STR R4, [SP, 0x4] \n\
/* 0800d8a0 */ STR R5, [SP, 0x8] \n\
/* 0800d8a2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800d8a4 */ BL func_0804d8f8 \n\
/* 0800d8a8 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d8b0: \n\
/* 0800d8b0 */ LSLS R1, R6, 0x1 \n\
/* 0800d8b2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800d8b4 */ LDR R0, =D_03005380 \n\
/* 0800d8b6 */ LDR R0, [R0] \n\
/* 0800d8b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800d8ba */ LDRSH R1, [R1, R2] \n\
/* 0800d8bc */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800d8be */ LSLS R2, R3, 0x18 \n\
/* 0800d8c0 */ ASRS R2, R2, 0x18 \n\
/* 0800d8c2 */ BL func_0804cebc \n\
/* 0800d8c6 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d8cc: \n\
/* 0800d8cc */ LSLS R1, R6, 0x1 \n\
/* 0800d8ce */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800d8d0 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800d8d2 */ LSLS R2, R4, 0x1C \n\
/* 0800d8d4 */ LSLS R3, R4, 0x14 \n\
/* 0800d8d6 */ LSRS R4, R4, 0xC \n\
/* 0800d8d8 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0800d8da */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 0800d8dc */ LDR R0, =D_03005380 \n\
/* 0800d8de */ LDR R0, [R0] \n\
/* 0800d8e0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d8e2 */ LDRSH R1, [R1, R5] \n\
/* 0800d8e4 */ ASRS R2, R2, 0x1C \n\
/* 0800d8e6 */ ASRS R3, R3, 0x18 \n\
/* 0800d8e8 */ STR R4, [SP] \n\
/* 0800d8ea */ BL func_0804dae0 \n\
/* 0800d8ee */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d8f4: \n\
/* 0800d8f4 */ LDR R0, =0xffff \n\
/* 0800d8f6 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 0800d8f8 */ LSLS R0, R0, 0x1 \n\
/* 0800d8fa */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800d8fc */ LDRH R4, [R0] \n\
/* 0800d8fe */ ADD R2, SP, 0x4C \n\
/* 0800d900 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d902 */ STRH R0, [R2] \n\
/* 0800d904 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d906 */ LSRS R3, R1, 0x10 \n\
/* 0800d908 */ MOV R0, SP @ Set R0 to SP \n\
/* 0800d90a */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 0800d90c */ STRH R3, [R0] \n\
/* 0800d90e */ LSRS R6, R6, 0x10 \n\
/* 0800d910 */ LDR R0, =D_03005380 \n\
/* 0800d912 */ LDR R0, [R0] \n\
/* 0800d914 */ LSLS R1, R4, 0x10 \n\
/* 0800d916 */ ASRS R1, R1, 0x10 \n\
/* 0800d918 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800d91a */ LDRSH R2, [R2, R4] \n\
/* 0800d91c */ LSLS R3, R3, 0x10 \n\
/* 0800d91e */ ASRS R3, R3, 0x10 \n\
/* 0800d920 */ STR R6, [SP] \n\
/* 0800d922 */ BL func_0804d55c \n\
/* 0800d926 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d930: \n\
/* 0800d930 */ ADD R5, SP, 0x4C \n\
/* 0800d932 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800d934 */ STRH R0, [R5] \n\
/* 0800d936 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800d938 */ LSRS R0, R1, 0x10 \n\
/* 0800d93a */ MOV R4, SP @ Set R4 to SP \n\
/* 0800d93c */ ADDS R4, 0x4E @ Add 0x4E to R4 \n\
/* 0800d93e */ STRH R0, [R4] \n\
/* 0800d940 */ LSLS R1, R6, 0x10 \n\
/* 0800d942 */ ASRS R1, R1, 0x10 \n\
/* 0800d944 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800d946 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800d948 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0800d94a */ BL beatscript_stream_get_sprite_for_motion \n\
/* 0800d94e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800d950 */ LDR R0, =D_03005380 \n\
/* 0800d952 */ LDR R0, [R0] \n\
/* 0800d954 */ LSLS R1, R1, 0x10 \n\
/* 0800d956 */ ASRS R1, R1, 0x10 \n\
/* 0800d958 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800d95a */ LDRSH R2, [R5, R3] \n\
/* 0800d95c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d95e */ LDRSH R3, [R4, R5] \n\
/* 0800d960 */ BL func_0804d5d4 \n\
/* 0800d964 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d96c: \n\
/* 0800d96c */ LSLS R1, R6, 0x1 \n\
/* 0800d96e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800d970 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800d972 */ LSLS R0, R6, 0x10 \n\
/* 0800d974 */ LSRS R6, R0, 0x10 \n\
/* 0800d976 */ LDR R0, =D_03005380 \n\
/* 0800d978 */ LDR R0, [R0] \n\
/* 0800d97a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800d97c */ LDRSH R1, [R1, R2] \n\
/* 0800d97e */ B branch_0800da12 \n\
\n\
.ltorg \n\
\n\
jump_0800d984: \n\
/* 0800d984 */ LSLS R0, R7, 0x1 \n\
/* 0800d986 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800d988 */ LDRH R4, [R0] \n\
/* 0800d98a */ LDR R0, =0x7fff \n\
/* 0800d98c */ ADD R7, SP, 0x4C \n\
/* 0800d98e */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0800d990 */ BEQ branch_0800d99c \n\
/* 0800d992 */ STRH R6, [R7] \n\
/* 0800d994 */ B branch_0800d9a0 \n\
\n\
.ltorg \n\
 \n\
branch_0800d99c: \n\
/* 0800d99c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800d99e */ STRH R0, [R7] \n\
 \n\
branch_0800d9a0: \n\
/* 0800d9a0 */ LDR R0, =0x7fff \n\
/* 0800d9a2 */ MOV R6, SP @ Set R6 to SP \n\
/* 0800d9a4 */ ADDS R6, 0x4E @ Add 0x4E to R6 \n\
/* 0800d9a6 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0800d9a8 */ BEQ branch_0800d9b4 \n\
/* 0800d9aa */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800d9ac */ STRH R3, [R6] \n\
/* 0800d9ae */ B branch_0800d9b8 \n\
\n\
.ltorg \n\
 \n\
branch_0800d9b4: \n\
/* 0800d9b4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800d9b6 */ STRH R0, [R6] \n\
 \n\
branch_0800d9b8: \n\
/* 0800d9b8 */ LDR R5, =D_03005380 \n\
/* 0800d9ba */ LDR R0, [R5] \n\
/* 0800d9bc */ LSLS R4, R4, 0x10 \n\
/* 0800d9be */ ASRS R4, R4, 0x10 \n\
/* 0800d9c0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800d9c2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0800d9c4 */ BL func_0804ddb0 \n\
/* 0800d9c8 */ LDRH R1, [R7] \n\
/* 0800d9ca */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800d9cc */ STRH R1, [R7] \n\
/* 0800d9ce */ LDR R0, [R5] \n\
/* 0800d9d0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800d9d2 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0800d9d4 */ BL func_0804ddb0 \n\
/* 0800d9d8 */ LDRH R1, [R6] \n\
/* 0800d9da */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800d9dc */ STRH R1, [R6] \n\
/* 0800d9de */ LDR R0, [R5] \n\
/* 0800d9e0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800d9e2 */ LDRSH R2, [R7, R5] \n\
/* 0800d9e4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800d9e6 */ LDRSH R3, [R6, R1] \n\
/* 0800d9e8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800d9ea */ BL func_0804d5d4 \n\
/* 0800d9ee */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800d9f4: \n\
/* 0800d9f4 */ LSLS R1, R7, 0x1 \n\
/* 0800d9f6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800d9f8 */ LDR R4, =D_03005380 \n\
/* 0800d9fa */ LDR R0, [R4] \n\
/* 0800d9fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800d9fe */ LDRSH R5, [R1, R2] \n\
/* 0800da00 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800da02 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0800da04 */ BL func_0804ddb0 \n\
/* 0800da08 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0800da0a */ LSLS R0, R0, 0x10 \n\
/* 0800da0c */ LSRS R6, R0, 0x10 \n\
/* 0800da0e */ LDR R0, [R4] \n\
/* 0800da10 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
 \n\
branch_0800da12: \n\
/* 0800da12 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800da14 */ BL func_0804d67c \n\
/* 0800da18 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800da20: \n\
/* 0800da20 */ LSLS R1, R6, 0x1 \n\
/* 0800da22 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800da24 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800da26 */ LSLS R2, R3, 0x10 \n\
/* 0800da28 */ LSRS R2, R2, 0x10 \n\
/* 0800da2a */ LDR R0, =D_03005380 \n\
/* 0800da2c */ LDR R0, [R0] \n\
/* 0800da2e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800da30 */ LDRSH R1, [R1, R4] \n\
/* 0800da32 */ BL func_0804d770 \n\
/* 0800da36 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800da3c: \n\
/* 0800da3c */ LSLS R1, R6, 0x1 \n\
/* 0800da3e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800da40 */ LDR R0, =D_03005380 \n\
/* 0800da42 */ LDR R0, [R0] \n\
/* 0800da44 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800da46 */ LDRSH R1, [R1, R5] \n\
/* 0800da48 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800da4a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800da4c */ LDRSH R2, [R6, R3] \n\
/* 0800da4e */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0800da50 */ LDRSH R3, [R6, R4] \n\
/* 0800da52 */ BL func_0804d5d4 \n\
/* 0800da56 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800da5c: \n\
/* 0800da5c */ LSLS R1, R6, 0x1 \n\
/* 0800da5e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800da60 */ LDR R0, =D_03005380 \n\
/* 0800da62 */ LDR R0, [R0] \n\
/* 0800da64 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800da66 */ LDRSH R1, [R1, R5] \n\
/* 0800da68 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800da6a */ LSLS R2, R6, 0x18 \n\
/* 0800da6c */ ASRS R2, R2, 0x18 \n\
/* 0800da6e */ BL func_0804d8c4 \n\
/* 0800da72 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800da78: \n\
/* 0800da78 */ LSLS R1, R6, 0x1 \n\
/* 0800da7a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800da7c */ LDR R0, =D_03005380 \n\
/* 0800da7e */ LDR R0, [R0] \n\
/* 0800da80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800da82 */ LDRSH R1, [R1, R2] \n\
/* 0800da84 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800da86 */ LSLS R2, R3, 0x10 \n\
/* 0800da88 */ ASRS R2, R2, 0x10 \n\
/* 0800da8a */ BL func_0804d890 \n\
/* 0800da8e */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800da94: \n\
/* 0800da94 */ LSLS R0, R6, 0x1 \n\
/* 0800da96 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800da98 */ LDRH R4, [R0] \n\
/* 0800da9a */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800da9c */ BEQ branch_0800dabc \n\
/* 0800da9e */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800daa0 */ BCC branch_0800daa8 \n\
/* 0800daa2 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0800daa4 */ BEQ branch_0800dad0 \n\
/* 0800daa6 */ B branch_0800df9e \n\
 \n\
branch_0800daa8: \n\
/* 0800daa8 */ LDR R0, =D_03005380 \n\
/* 0800daaa */ LDR R0, [R0] \n\
/* 0800daac */ LSLS R1, R4, 0x10 \n\
/* 0800daae */ ASRS R1, R1, 0x10 \n\
/* 0800dab0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800dab2 */ BL func_0804d7b4 \n\
/* 0800dab6 */ B branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800dabc: \n\
/* 0800dabc */ LDR R0, =D_03005380 \n\
/* 0800dabe */ LDR R0, [R0] \n\
/* 0800dac0 */ LSLS R1, R4, 0x10 \n\
/* 0800dac2 */ ASRS R1, R1, 0x10 \n\
/* 0800dac4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800dac6 */ BL func_0804d7e8 \n\
/* 0800daca */ B branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800dad0: \n\
/* 0800dad0 */ LDR R0, =D_03005380 \n\
/* 0800dad2 */ LDR R0, [R0] \n\
/* 0800dad4 */ LSLS R1, R4, 0x10 \n\
/* 0800dad6 */ ASRS R1, R1, 0x10 \n\
/* 0800dad8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800dada */ BL func_0804d858 \n\
/* 0800dade */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800dae4: \n\
/* 0800dae4 */ LSLS R1, R6, 0x1 \n\
/* 0800dae6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800dae8 */ LDR R0, =D_03005380 \n\
/* 0800daea */ LDR R0, [R0] \n\
/* 0800daec */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800daee */ LDRSH R1, [R1, R4] \n\
/* 0800daf0 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800daf2 */ LSLS R2, R5, 0x10 \n\
/* 0800daf4 */ LSRS R2, R2, 0x10 \n\
/* 0800daf6 */ BL func_0804da20 \n\
/* 0800dafa */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800db00: \n\
/* 0800db00 */ LSLS R0, R6, 0x1 \n\
/* 0800db02 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800db04 */ LDRH R4, [R0] \n\
/* 0800db06 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800db08 */ BEQ branch_0800db10 \n\
/* 0800db0a */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0800db0c */ BEQ branch_0800db34 \n\
/* 0800db0e */ B branch_0800df9e \n\
 \n\
branch_0800db10: \n\
/* 0800db10 */ LDR R0, =D_03005380 \n\
/* 0800db12 */ LDR R0, [R0] \n\
/* 0800db14 */ LSLS R1, R4, 0x10 \n\
/* 0800db16 */ ASRS R1, R1, 0x10 \n\
/* 0800db18 */ LDR R2, =D_030053c0 \n\
/* 0800db1a */ LDRH R2, [R2, 0x10] \n\
/* 0800db1c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800db1e */ MULS R6, R2 @ Multiply R6 by R2 \n\
/* 0800db20 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800db22 */ LSLS R2, R2, 0x8 \n\
/* 0800db24 */ LSRS R2, R2, 0x10 \n\
/* 0800db26 */ BL func_0804dcb8 \n\
/* 0800db2a */ B branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800db34: \n\
/* 0800db34 */ LDR R0, =D_03005380 \n\
/* 0800db36 */ LDR R5, [R0] \n\
/* 0800db38 */ LSLS R4, R4, 0x10 \n\
/* 0800db3a */ ASRS R4, R4, 0x10 \n\
/* 0800db3c */ BL func_0800c1b4 \n\
/* 0800db40 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800db42 */ LSLS R2, R2, 0x10 \n\
/* 0800db44 */ LSRS R2, R2, 0x10 \n\
/* 0800db46 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800db48 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800db4a */ BL func_0804dcb8 \n\
/* 0800db4e */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800db54: \n\
/* 0800db54 */ LSLS R0, R7, 0x1 \n\
/* 0800db56 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800db58 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800db5a */ LDRSH R0, [R0, R1] \n\
/* 0800db5c */ LSLS R1, R6, 0x10 \n\
/* 0800db5e */ ASRS R1, R1, 0x10 \n\
/* 0800db60 */ ASRS R2, R6, 0x10 \n\
/* 0800db62 */ BL scene_move_sprite_indefinite \n\
/* 0800db66 */ B branch_0800dd68 \n\
\n\
jump_0800db68: \n\
/* 0800db68 */ ADD R5, SP, 0x4C \n\
/* 0800db6a */ STRH R6, [R5] \n\
/* 0800db6c */ MOV R4, SP @ Set R4 to SP \n\
/* 0800db6e */ ADDS R4, 0x4E @ Add 0x4E to R4 \n\
/* 0800db70 */ ASRS R0, R6, 0x10 \n\
/* 0800db72 */ STRH R0, [R4] \n\
/* 0800db74 */ LSLS R1, R7, 0x10 \n\
/* 0800db76 */ ASRS R1, R1, 0x10 \n\
/* 0800db78 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800db7a */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800db7c */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0800db7e */ BL beatscript_stream_get_sprite_for_motion \n\
/* 0800db82 */ LSLS R0, R0, 0x10 \n\
/* 0800db84 */ ASRS R0, R0, 0x10 \n\
/* 0800db86 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800db88 */ LDRSH R1, [R5, R2] \n\
/* 0800db8a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800db8c */ LDRSH R2, [R4, R3] \n\
/* 0800db8e */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800db90 */ LSLS R3, R4, 0x10 \n\
/* 0800db92 */ ASRS R3, R3, 0x10 \n\
/* 0800db94 */ BL scene_move_sprite_decelerate \n\
/* 0800db98 */ B branch_0800dd68 \n\
\n\
jump_0800db9a: \n\
/* 0800db9a */ ADD R5, SP, 0x4C \n\
/* 0800db9c */ STRH R6, [R5] \n\
/* 0800db9e */ MOV R4, SP @ Set R4 to SP \n\
/* 0800dba0 */ ADDS R4, 0x4E @ Add 0x4E to R4 \n\
/* 0800dba2 */ ASRS R0, R6, 0x10 \n\
/* 0800dba4 */ STRH R0, [R4] \n\
/* 0800dba6 */ LSLS R1, R7, 0x10 \n\
/* 0800dba8 */ ASRS R1, R1, 0x10 \n\
/* 0800dbaa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800dbac */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800dbae */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0800dbb0 */ BL beatscript_stream_get_sprite_for_motion \n\
/* 0800dbb4 */ LSLS R0, R0, 0x10 \n\
/* 0800dbb6 */ ASRS R0, R0, 0x10 \n\
/* 0800dbb8 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800dbba */ LDRSH R1, [R5, R6] \n\
/* 0800dbbc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800dbbe */ LDRSH R2, [R4, R3] \n\
/* 0800dbc0 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800dbc2 */ LSLS R3, R4, 0x10 \n\
/* 0800dbc4 */ ASRS R3, R3, 0x10 \n\
/* 0800dbc6 */ ASRS R4, R4, 0x10 \n\
/* 0800dbc8 */ STR R4, [SP] \n\
/* 0800dbca */ BL scene_move_sprite_accelerate \n\
/* 0800dbce */ B branch_0800dd68 \n\
\n\
jump_0800dbd0: \n\
/* 0800dbd0 */ ADD R5, SP, 0x4C \n\
/* 0800dbd2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800dbd4 */ STRH R6, [R5] \n\
/* 0800dbd6 */ MOV R5, SP @ Set R5 to SP \n\
/* 0800dbd8 */ ADDS R5, 0x4E @ Add 0x4E to R5 \n\
/* 0800dbda */ ASRS R0, R6, 0x10 \n\
/* 0800dbdc */ STRH R0, [R5] \n\
/* 0800dbde */ LSLS R1, R7, 0x10 \n\
/* 0800dbe0 */ ASRS R1, R1, 0x10 \n\
/* 0800dbe2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800dbe4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800dbe6 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800dbe8 */ BL beatscript_stream_get_sprite_for_motion \n\
/* 0800dbec */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800dbee */ LSLS R4, R4, 0x10 \n\
/* 0800dbf0 */ ASRS R4, R4, 0x10 \n\
/* 0800dbf2 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0800dbf4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800dbf6 */ LDRSH R7, [R6, R0] \n\
/* 0800dbf8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800dbfa */ LDRSH R5, [R5, R1] \n\
/* 0800dbfc */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800dbfe */ LSLS R0, R2, 0x10 \n\
/* 0800dc00 */ LSRS R0, R0, 0x10 \n\
/* 0800dc02 */ BL ticks_to_frames \n\
/* 0800dc06 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800dc08 */ LSLS R3, R3, 0x10 \n\
/* 0800dc0a */ LSRS R3, R3, 0x10 \n\
/* 0800dc0c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800dc0e */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800dc10 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800dc12 */ BL scene_move_sprite_lerp \n\
/* 0800dc16 */ B branch_0800dd68 \n\
\n\
jump_0800dc18: \n\
/* 0800dc18 */ ADD R3, SP, 0x4C \n\
/* 0800dc1a */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0800dc1c */ STRH R6, [R3] \n\
/* 0800dc1e */ MOV R5, SP @ Set R5 to SP \n\
/* 0800dc20 */ ADDS R5, 0x4E @ Add 0x4E to R5 \n\
/* 0800dc22 */ ASRS R0, R6, 0x10 \n\
/* 0800dc24 */ STRH R0, [R5] \n\
/* 0800dc26 */ LSLS R1, R7, 0x10 \n\
/* 0800dc28 */ ASRS R1, R1, 0x10 \n\
/* 0800dc2a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800dc2c */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800dc2e */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800dc30 */ BL beatscript_stream_get_sprite_for_motion \n\
/* 0800dc34 */ LSLS R0, R0, 0x10 \n\
/* 0800dc36 */ LSRS R4, R0, 0x10 \n\
/* 0800dc38 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800dc3a */ LSLS R0, R6, 0x10 \n\
/* 0800dc3c */ LSRS R0, R0, 0x10 \n\
/* 0800dc3e */ BL ticks_to_frames \n\
/* 0800dc42 */ LSLS R0, R0, 0x10 \n\
/* 0800dc44 */ LSRS R0, R0, 0x10 \n\
/* 0800dc46 */ LSLS R4, R4, 0x10 \n\
/* 0800dc48 */ ASRS R4, R4, 0x10 \n\
/* 0800dc4a */ LSRS R1, R6, 0x10 \n\
/* 0800dc4c */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0800dc4e */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800dc50 */ LDRSH R2, [R3, R6] \n\
/* 0800dc52 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800dc54 */ LDRSH R3, [R5, R6] \n\
/* 0800dc56 */ STR R0, [SP] \n\
/* 0800dc58 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800dc5a */ BL scene_move_sprite_sine_vel \n\
/* 0800dc5e */ B branch_0800dd68 \n\
\n\
jump_0800dc60: \n\
/* 0800dc60 */ ADD R0, SP, 0x4C \n\
/* 0800dc62 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0800dc64 */ STRH R6, [R0] \n\
/* 0800dc66 */ MOV R5, SP @ Set R5 to SP \n\
/* 0800dc68 */ ADDS R5, 0x4E @ Add 0x4E to R5 \n\
/* 0800dc6a */ ASRS R0, R6, 0x10 \n\
/* 0800dc6c */ STRH R0, [R5] \n\
/* 0800dc6e */ LSLS R1, R7, 0x10 \n\
/* 0800dc70 */ ASRS R1, R1, 0x10 \n\
/* 0800dc72 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800dc74 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800dc76 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800dc78 */ BL beatscript_stream_get_sprite_for_motion \n\
/* 0800dc7c */ LSLS R0, R0, 0x10 \n\
/* 0800dc7e */ LSRS R4, R0, 0x10 \n\
/* 0800dc80 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800dc82 */ LSLS R0, R1, 0x10 \n\
/* 0800dc84 */ LSRS R0, R0, 0x10 \n\
/* 0800dc86 */ BL ticks_to_frames \n\
/* 0800dc8a */ LSLS R0, R0, 0x10 \n\
/* 0800dc8c */ LSRS R0, R0, 0x10 \n\
/* 0800dc8e */ LSLS R4, R4, 0x10 \n\
/* 0800dc90 */ ASRS R4, R4, 0x10 \n\
/* 0800dc92 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800dc94 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800dc96 */ LDRSH R1, [R2, R3] \n\
/* 0800dc98 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800dc9a */ LDRSH R2, [R5, R6] \n\
/* 0800dc9c */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800dc9e */ ASRS R3, R5, 0x10 \n\
/* 0800dca0 */ B branch_0800dd60 \n\
\n\
jump_0800dca2: \n\
/* 0800dca2 */ LSLS R0, R7, 0x1 \n\
/* 0800dca4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800dca6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800dca8 */ LDRSH R0, [R0, R1] \n\
/* 0800dcaa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800dcac */ LDRSH R1, [R6, R2] \n\
/* 0800dcae */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0800dcb0 */ LDRSH R2, [R6, R3] \n\
/* 0800dcb2 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800dcb4 */ LSLS R3, R4, 0x10 \n\
/* 0800dcb6 */ ASRS R3, R3, 0x10 \n\
/* 0800dcb8 */ BL scene_move_sprite_decelerate \n\
/* 0800dcbc */ B branch_0800dd68 \n\
\n\
jump_0800dcbe: \n\
/* 0800dcbe */ LSLS R0, R7, 0x1 \n\
/* 0800dcc0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800dcc2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800dcc4 */ LDRSH R0, [R0, R5] \n\
/* 0800dcc6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800dcc8 */ LDRSH R1, [R6, R2] \n\
/* 0800dcca */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0800dccc */ LDRSH R2, [R6, R3] \n\
/* 0800dcce */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800dcd0 */ LSLS R3, R4, 0x10 \n\
/* 0800dcd2 */ ASRS R3, R3, 0x10 \n\
/* 0800dcd4 */ ASRS R4, R4, 0x10 \n\
/* 0800dcd6 */ STR R4, [SP] \n\
/* 0800dcd8 */ BL scene_move_sprite_accelerate \n\
/* 0800dcdc */ B branch_0800dd68 \n\
\n\
jump_0800dcde: \n\
/* 0800dcde */ LSLS R0, R7, 0x1 \n\
/* 0800dce0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800dce2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800dce4 */ LDRSH R4, [R0, R5] \n\
/* 0800dce6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800dce8 */ LDRSH R5, [R6, R0] \n\
/* 0800dcea */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0800dcec */ LDRSH R7, [R6, R1] \n\
/* 0800dcee */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800dcf0 */ LSLS R0, R2, 0x10 \n\
/* 0800dcf2 */ LSRS R0, R0, 0x10 \n\
/* 0800dcf4 */ BL ticks_to_frames \n\
/* 0800dcf8 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800dcfa */ LSLS R3, R3, 0x10 \n\
/* 0800dcfc */ LSRS R3, R3, 0x10 \n\
/* 0800dcfe */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800dd00 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800dd02 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0800dd04 */ BL scene_move_sprite_lerp \n\
/* 0800dd08 */ B branch_0800dd68 \n\
\n\
jump_0800dd0a: \n\
/* 0800dd0a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800dd0c */ LSLS R0, R3, 0x10 \n\
/* 0800dd0e */ LSRS R0, R0, 0x10 \n\
/* 0800dd10 */ STR R2, [SP, 0x50] \n\
/* 0800dd12 */ BL ticks_to_frames \n\
/* 0800dd16 */ LSLS R0, R0, 0x10 \n\
/* 0800dd18 */ LSRS R0, R0, 0x10 \n\
/* 0800dd1a */ LSLS R1, R7, 0x1 \n\
/* 0800dd1c */ LDR R2, [SP, 0x50] \n\
/* 0800dd1e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800dd20 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800dd22 */ LDRSH R4, [R1, R5] \n\
/* 0800dd24 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800dd26 */ LSRS R1, R2, 0x10 \n\
/* 0800dd28 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800dd2a */ LDRSH R2, [R6, R3] \n\
/* 0800dd2c */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 0800dd2e */ LDRSH R3, [R6, R5] \n\
/* 0800dd30 */ STR R0, [SP] \n\
/* 0800dd32 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800dd34 */ BL scene_move_sprite_sine_vel \n\
/* 0800dd38 */ B branch_0800dd68 \n\
\n\
jump_0800dd3a: \n\
/* 0800dd3a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800dd3c */ LSLS R0, R1, 0x10 \n\
/* 0800dd3e */ LSRS R0, R0, 0x10 \n\
/* 0800dd40 */ STR R2, [SP, 0x50] \n\
/* 0800dd42 */ BL ticks_to_frames \n\
/* 0800dd46 */ LSLS R0, R0, 0x10 \n\
/* 0800dd48 */ LSRS R0, R0, 0x10 \n\
/* 0800dd4a */ LSLS R1, R7, 0x1 \n\
/* 0800dd4c */ LDR R2, [SP, 0x50] \n\
/* 0800dd4e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800dd50 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800dd52 */ LDRSH R4, [R1, R2] \n\
/* 0800dd54 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800dd56 */ LDRSH R1, [R6, R3] \n\
/* 0800dd58 */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 0800dd5a */ LDRSH R2, [R6, R5] \n\
/* 0800dd5c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800dd5e */ ASRS R3, R6, 0x10 \n\
 \n\
branch_0800dd60: \n\
/* 0800dd60 */ STR R0, [SP] \n\
/* 0800dd62 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800dd64 */ BL scene_move_sprite_sine_wave \n\
 \n\
branch_0800dd68: \n\
/* 0800dd68 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800dd6a */ ADDS R1, 0x98 @ Add 0x98 to R1 \n\
/* 0800dd6c */ STR R0, [R1] \n\
/* 0800dd6e */ B branch_0800df9e \n\
\n\
jump_0800dd70: \n\
/* 0800dd70 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800dd72 */ ADDS R0, 0x98 @ Add 0x98 to R0 \n\
/* 0800dd74 */ LDR R0, [R0] \n\
/* 0800dd76 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800dd78 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800dd7a */ BL run_func_after_task \n\
/* 0800dd7e */ B branch_0800df9e \n\
\n\
jump_0800dd80: \n\
/* 0800dd80 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800dd82 */ LSLS R1, R0, 0x1 \n\
/* 0800dd84 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800dd86 */ LDR R5, =D_03005380 \n\
/* 0800dd88 */ LDR R0, [R5] \n\
/* 0800dd8a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800dd8c */ LDRSH R4, [R1, R2] \n\
/* 0800dd8e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800dd90 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0800dd92 */ BL func_0804ddb0 \n\
/* 0800dd96 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800dd98 */ LDR R0, [R6] \n\
/* 0800dd9a */ BL bmp_font_obj_delete_printed_anim \n\
/* 0800dd9e */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800dda0 */ BEQ branch_0800ddb0 \n\
/* 0800dda2 */ LDR R0, [R5] \n\
/* 0800dda4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800dda6 */ BL func_0804d504 \n\
/* 0800ddaa */ B branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800ddb0: \n\
/* 0800ddb0 */ LDR R0, [R5] \n\
/* 0800ddb2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800ddb4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800ddb6 */ BL func_0804d770 \n\
/* 0800ddba */ LDR R0, [R5] \n\
/* 0800ddbc */ LDR R2, =D_089ccbc0 \n\
/* 0800ddbe */ STR R7, [SP] \n\
/* 0800ddc0 */ STR R7, [SP, 0x4] \n\
/* 0800ddc2 */ STR R7, [SP, 0x8] \n\
/* 0800ddc4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800ddc6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800ddc8 */ BL func_0804d8f8 \n\
/* 0800ddcc */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800ddd4: \n\
/* 0800ddd4 */ CMP R7, 0x4 @ Compare R7 and 0x4 \n\
/* 0800ddd6 */ BLS branch_0800ddda \n\
/* 0800ddd8 */ B branch_0800df9e \n\
 \n\
branch_0800ddda: \n\
/* 0800ddda */ LSLS R0, R7, 0x2 \n\
/* 0800dddc */ LDR R1, =jtbl_0800dde8 \n\
/* 0800ddde */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800dde0 */ LDR R0, [R0] \n\
/* 0800dde2 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0800dde8: \n\
.word jump_0800ddfc \n\
.word jump_0800de18 \n\
.word jump_0800de3c \n\
.word jump_0800de58 \n\
.word jump_0800de70 \n\
\n\
jump_0800ddfc: \n\
/* 0800ddfc */ LDR R0, =D_03005380 \n\
/* 0800ddfe */ LDR R0, [R0] \n\
/* 0800de00 */ LDR R1, [R6] \n\
/* 0800de02 */ LDR R2, =D_0300558c \n\
/* 0800de04 */ LDR R3, [R2] \n\
/* 0800de06 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800de08 */ BL import_all_scene_objects \n\
/* 0800de0c */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800de18: \n\
/* 0800de18 */ BL get_current_mem_id \n\
/* 0800de1c */ LSLS R0, R0, 0x10 \n\
/* 0800de1e */ LSRS R0, R0, 0x10 \n\
/* 0800de20 */ LDR R1, =D_03005380 \n\
/* 0800de22 */ LDR R1, [R1] \n\
/* 0800de24 */ LDR R2, [R6] \n\
/* 0800de26 */ LDR R3, =D_0300558c \n\
/* 0800de28 */ LDR R3, [R3] \n\
/* 0800de2a */ STR R3, [SP] \n\
/* 0800de2c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800de2e */ BL start_new_scene_object_importer \n\
/* 0800de32 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800de3c: \n\
/* 0800de3c */ LDR R0, =D_03005380 \n\
/* 0800de3e */ LDR R0, [R0] \n\
/* 0800de40 */ LDR R1, [R6] \n\
/* 0800de42 */ LDR R2, =D_0300558c \n\
/* 0800de44 */ LDR R3, [R2] \n\
/* 0800de46 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800de48 */ BL delete_all_scene_objects \n\
/* 0800de4c */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800de58: \n\
/* 0800de58 */ LDR R0, =D_03005380 \n\
/* 0800de5a */ LDR R0, [R0] \n\
/* 0800de5c */ LDR R1, [R6] \n\
/* 0800de5e */ LDR R2, =D_0300558c \n\
/* 0800de60 */ LDR R3, [R2] \n\
/* 0800de62 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800de64 */ B branch_0800de7c \n\
\n\
.ltorg \n\
\n\
jump_0800de70: \n\
/* 0800de70 */ LDR R0, =D_03005380 \n\
/* 0800de72 */ LDR R0, [R0] \n\
/* 0800de74 */ LDR R1, [R6] \n\
/* 0800de76 */ LDR R2, =D_0300558c \n\
/* 0800de78 */ LDR R3, [R2] \n\
/* 0800de7a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0800de7c: \n\
/* 0800de7c */ STR R2, [SP] \n\
/* 0800de7e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800de80 */ BL display_all_scene_objects \n\
/* 0800de84 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800de90: \n\
/* 0800de90 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0800de92 */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 0800de94 */ LDR R1, =D_0300558c \n\
/* 0800de96 */ LDR R1, [R1] \n\
/* 0800de98 */ LSLS R0, R0, 0x1 \n\
/* 0800de9a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800de9c */ LDRH R4, [R0] \n\
/* 0800de9e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800dea0 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800dea2 */ BLT branch_0800decc \n\
/* 0800dea4 */ LDR R5, =D_03005380 \n\
/* 0800dea6 */ LDR R0, [R5] \n\
/* 0800dea8 */ LSLS R4, R4, 0x10 \n\
/* 0800deaa */ ASRS R4, R4, 0x10 \n\
/* 0800deac */ LSLS R2, R7, 0x10 \n\
/* 0800deae */ ASRS R2, R2, 0x18 \n\
/* 0800deb0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800deb2 */ BL func_0804df4c \n\
/* 0800deb6 */ LDR R0, [R5] \n\
/* 0800deb8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800deba */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800debc */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800debe */ BL func_0804daa8 \n\
/* 0800dec2 */ B branch_0800df9e \n\
\n\
.ltorg \n\
 \n\
branch_0800decc: \n\
/* 0800decc */ LDR R0, =D_03005380 \n\
/* 0800dece */ LDR R0, [R0] \n\
/* 0800ded0 */ LSLS R1, R4, 0x10 \n\
/* 0800ded2 */ ASRS R1, R1, 0x10 \n\
/* 0800ded4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800ded6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800ded8 */ BL func_0804daa8 \n\
/* 0800dedc */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800dee4: \n\
/* 0800dee4 */ LDR R0, =D_0300558c \n\
/* 0800dee6 */ LDR R1, [R0] \n\
/* 0800dee8 */ LSLS R0, R7, 0x1 \n\
/* 0800deea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800deec */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800deee */ LDRSH R0, [R0, R4] \n\
/* 0800def0 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800def2 */ BL func_0800e8f4 \n\
/* 0800def6 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800defc: \n\
/* 0800defc */ LDR R0, =D_0300558c \n\
/* 0800defe */ LDR R0, [R0] \n\
/* 0800df00 */ LSLS R1, R6, 0x1 \n\
/* 0800df02 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800df04 */ LDR R0, =D_03005380 \n\
/* 0800df06 */ LDR R0, [R0] \n\
/* 0800df08 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800df0a */ LDRSH R1, [R1, R5] \n\
/* 0800df0c */ BL func_0804d504 \n\
/* 0800df10 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800df1c: \n\
/* 0800df1c */ LDR R0, =D_03005380 \n\
/* 0800df1e */ LDR R4, [R0] \n\
/* 0800df20 */ BL get_current_mem_id \n\
/* 0800df24 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800df26 */ LSLS R1, R1, 0x10 \n\
/* 0800df28 */ LSRS R1, R1, 0x10 \n\
/* 0800df2a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800df2c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800df2e */ BL func_0804e0f0 \n\
/* 0800df32 */ B branch_0800df9e \n\
\n\
.ltorg \n\
\n\
jump_0800df38: \n\
/* 0800df38 */ BL get_current_mem_id \n\
/* 0800df3c */ LSLS R0, R0, 0x10 \n\
/* 0800df3e */ LSRS R0, R0, 0x10 \n\
/* 0800df40 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800df42 */ BL task_pool_pause_id \n\
/* 0800df46 */ B branch_0800df9e \n\
\n\
jump_0800df48: \n\
/* 0800df48 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800df4a */ ADDS R0, 0x98 @ Add 0x98 to R0 \n\
/* 0800df4c */ LDR R0, [R0] \n\
/* 0800df4e */ STR R0, [R6] \n\
/* 0800df50 */ B branch_0800df9e \n\
\n\
jump_0800df52: \n\
/* 0800df52 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800df54 */ BEQ branch_0800df5e \n\
/* 0800df56 */ LDR R0, [R6] \n\
/* 0800df58 */ BL force_stop_task \n\
/* 0800df5c */ B branch_0800df9e \n\
 \n\
branch_0800df5e: \n\
/* 0800df5e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800df60 */ ADDS R0, 0x98 @ Add 0x98 to R0 \n\
/* 0800df62 */ LDR R0, [R0] \n\
/* 0800df64 */ BL force_stop_task \n\
/* 0800df68 */ B branch_0800df9e \n\
\n\
jump_0800df6a: \n\
/* 0800df6a */ LSLS R2, R7, 0x1 \n\
/* 0800df6c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800df6e */ LSLS R0, R0, 0x2 \n\
/* 0800df70 */ STR R0, [SP] \n\
/* 0800df72 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800df74 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800df76 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0800df78 */ BL dma3_set \n\
/* 0800df7c */ B branch_0800df9e \n\
\n\
jump_0800df7e: \n\
/* 0800df7e */ LDR R0, =D_03005380 \n\
/* 0800df80 */ LDR R0, [R0] \n\
/* 0800df82 */ LDR R1, =D_0300558c \n\
/* 0800df84 */ LDR R2, [R1] \n\
/* 0800df86 */ LSLS R1, R6, 0x1 \n\
/* 0800df88 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800df8a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800df8c */ LDRSH R1, [R1, R6] \n\
/* 0800df8e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800df90 */ LSLS R3, R2, 0x2 \n\
/* 0800df92 */ LDR R4, =(D_03004b10 + 0xc) \n\
/* 0800df94 */ ADDS R2, R3, R4 @ Set R2 to R3 + R4 \n\
/* 0800df96 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0800df98 */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 0800df9a */ BL func_0804db44 \n\
 \n\
branch_0800df9e: \n\
/* 0800df9e */ ADD SP, 0x54 \n\
/* 0800dfa0 */ POP {R3-R5} \n\
/* 0800dfa2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800dfa4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800dfa6 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800dfa8 */ POP {R4-R7} \n\
/* 0800dfaa */ POP {R0} \n\
/* 0800dfac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
