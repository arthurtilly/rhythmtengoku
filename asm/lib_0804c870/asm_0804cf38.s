asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804cf38 \n\
/* 0804cf38 */ PUSH {R4-R7, LR} \n\
/* 0804cf3a */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0804cf3c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0804cf3e */ PUSH {R6, R7} \n\
/* 0804cf40 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804cf42 */ LSLS R1, R1, 0x10 \n\
/* 0804cf44 */ LDR R5, [R7, 0x8] \n\
/* 0804cf46 */ LDRH R0, [R7, 0xC] \n\
/* 0804cf48 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0804cf4a */ LDRH R2, [R7, 0xE] \n\
/* 0804cf4c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0804cf4e */ LSRS R6, R1, 0x10 \n\
/* 0804cf50 */ ASRS R1, R1, 0x10 \n\
/* 0804cf52 */ LSLS R0, R1, 0x4 \n\
/* 0804cf54 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804cf56 */ LSLS R0, R0, 0x2 \n\
/* 0804cf58 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804cf5a */ LDRH R2, [R0, 0x6] \n\
/* 0804cf5c */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0804cf5e */ LSLS R0, R4, 0x10 \n\
/* 0804cf60 */ ASRS R1, R0, 0x10 \n\
/* 0804cf62 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0804cf64 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0804cf66 */ CMP R1, R3 @ Check R1 - R3 \n\
/* 0804cf68 */ BEQ branch_0804cf9e \n\
/* 0804cf6a */ LSLS R0, R1, 0x4 \n\
/* 0804cf6c */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804cf6e */ LSLS R0, R0, 0x2 \n\
/* 0804cf70 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804cf72 */ LDRH R0, [R0, 0x6] \n\
/* 0804cf74 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804cf76 */ BCS branch_0804cf9e \n\
/* 0804cf78 */ MOV R9, R3 @ Set R9 to R3 \n\
 \n\
branch_0804cf7a: \n\
/* 0804cf7a */ LSLS R1, R4, 0x10 \n\
/* 0804cf7c */ ASRS R1, R1, 0x10 \n\
/* 0804cf7e */ LSLS R0, R1, 0x4 \n\
/* 0804cf80 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804cf82 */ LSLS R0, R0, 0x2 \n\
/* 0804cf84 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804cf86 */ LDRH R4, [R0, 0x18] \n\
/* 0804cf88 */ MOVS R3, 0x18 @ Set R3 to 0x18 \n\
/* 0804cf8a */ LDRSH R1, [R0, R3] \n\
/* 0804cf8c */ CMP R1, R9 @ Compare R1 and R9 \n\
/* 0804cf8e */ BEQ branch_0804cf9e \n\
/* 0804cf90 */ LSLS R0, R1, 0x4 \n\
/* 0804cf92 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804cf94 */ LSLS R0, R0, 0x2 \n\
/* 0804cf96 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804cf98 */ LDRH R0, [R0, 0x6] \n\
/* 0804cf9a */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804cf9c */ BCC branch_0804cf7a \n\
 \n\
branch_0804cf9e: \n\
/* 0804cf9e */ LSLS R0, R4, 0x10 \n\
/* 0804cfa0 */ ASRS R1, R0, 0x10 \n\
/* 0804cfa2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804cfa4 */ BLT branch_0804cfd6 \n\
/* 0804cfa6 */ LSLS R0, R1, 0x4 \n\
/* 0804cfa8 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804cfaa */ LSLS R0, R0, 0x2 \n\
/* 0804cfac */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804cfae */ LDRH R2, [R0, 0x1A] \n\
/* 0804cfb0 */ STRH R6, [R0, 0x1A] \n\
/* 0804cfb2 */ LSLS R3, R6, 0x10 \n\
/* 0804cfb4 */ ASRS R1, R3, 0x10 \n\
/* 0804cfb6 */ LSLS R0, R1, 0x4 \n\
/* 0804cfb8 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804cfba */ LSLS R0, R0, 0x2 \n\
/* 0804cfbc */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804cfbe */ STRH R4, [R0, 0x18] \n\
/* 0804cfc0 */ STRH R2, [R0, 0x1A] \n\
/* 0804cfc2 */ LSLS R2, R2, 0x10 \n\
/* 0804cfc4 */ ASRS R2, R2, 0x10 \n\
/* 0804cfc6 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804cfc8 */ BLT branch_0804d01a \n\
/* 0804cfca */ LSLS R0, R2, 0x4 \n\
/* 0804cfcc */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0804cfce */ LSLS R0, R0, 0x2 \n\
/* 0804cfd0 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804cfd2 */ STRH R6, [R0, 0x18] \n\
/* 0804cfd4 */ B branch_0804d01a \n\
 \n\
branch_0804cfd6: \n\
/* 0804cfd6 */ MOV R4, R12 @ Set R4 to R12 \n\
/* 0804cfd8 */ LSLS R0, R4, 0x10 \n\
/* 0804cfda */ ASRS R1, R0, 0x10 \n\
/* 0804cfdc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804cfde */ BLT branch_0804cffa \n\
/* 0804cfe0 */ LSLS R0, R1, 0x4 \n\
/* 0804cfe2 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804cfe4 */ LSLS R0, R0, 0x2 \n\
/* 0804cfe6 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804cfe8 */ STRH R6, [R0, 0x18] \n\
/* 0804cfea */ LSLS R2, R6, 0x10 \n\
/* 0804cfec */ ASRS R1, R2, 0x10 \n\
/* 0804cfee */ LSLS R0, R1, 0x4 \n\
/* 0804cff0 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804cff2 */ LSLS R0, R0, 0x2 \n\
/* 0804cff4 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804cff6 */ STRH R4, [R0, 0x1A] \n\
/* 0804cff8 */ B branch_0804d00a \n\
 \n\
branch_0804cffa: \n\
/* 0804cffa */ LSLS R2, R6, 0x10 \n\
/* 0804cffc */ ASRS R1, R2, 0x10 \n\
/* 0804cffe */ LSLS R0, R1, 0x4 \n\
/* 0804d000 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804d002 */ LSLS R0, R0, 0x2 \n\
/* 0804d004 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804d006 */ LDR R1, =0x0000ffff \n\
/* 0804d008 */ STRH R1, [R0, 0x1A] \n\
 \n\
branch_0804d00a: \n\
/* 0804d00a */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804d00c */ ASRS R0, R3, 0x10 \n\
/* 0804d00e */ LSLS R1, R0, 0x4 \n\
/* 0804d010 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804d012 */ LSLS R1, R1, 0x2 \n\
/* 0804d014 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0804d016 */ LDR R0, =0x0000ffff \n\
/* 0804d018 */ STRH R0, [R1, 0x18] \n\
 \n\
branch_0804d01a: \n\
/* 0804d01a */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804d01c */ ASRS R0, R2, 0x10 \n\
/* 0804d01e */ LSLS R1, R0, 0x4 \n\
/* 0804d020 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804d022 */ LSLS R1, R1, 0x2 \n\
/* 0804d024 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0804d026 */ MOVS R4, 0x18 @ Set R4 to 0x18 \n\
/* 0804d028 */ LDRSH R0, [R1, R4] \n\
/* 0804d02a */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0804d02c */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0804d02e */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0804d030 */ BNE branch_0804d036 \n\
/* 0804d032 */ LSRS R2, R2, 0x10 \n\
/* 0804d034 */ MOV R12, R2 @ Set R12 to R2 \n\
 \n\
branch_0804d036: \n\
/* 0804d036 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0804d038 */ LDRSH R0, [R1, R2] \n\
/* 0804d03a */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0804d03c */ BNE branch_0804d042 \n\
/* 0804d03e */ LSRS R3, R3, 0x10 \n\
/* 0804d040 */ MOV R8, R3 @ Set R8 to R3 \n\
 \n\
branch_0804d042: \n\
/* 0804d042 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 0804d044 */ STRH R3, [R7, 0xC] \n\
/* 0804d046 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0804d048 */ STRH R4, [R7, 0xE] \n\
/* 0804d04a */ POP {R3, R4} \n\
/* 0804d04c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804d04e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804d050 */ POP {R4-R7} \n\
/* 0804d052 */ POP {R0} \n\
/* 0804d054 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
