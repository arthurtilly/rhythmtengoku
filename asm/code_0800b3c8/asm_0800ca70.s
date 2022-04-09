asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ca70 \n\
/* 0800ca70 */ PUSH {R4-R7, LR} \n\
/* 0800ca72 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800ca74 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800ca76 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800ca78 */ PUSH {R5-R7} \n\
/* 0800ca7a */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0800ca7c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800ca7e */ LSLS R1, R1, 0x10 \n\
/* 0800ca80 */ ASRS R6, R1, 0x10 \n\
/* 0800ca82 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800ca84 */ BGE branch_0800ca8c \n\
/* 0800ca86 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800ca88 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800ca8a */ B branch_0800cb18 \n\
 \n\
branch_0800ca8c: \n\
/* 0800ca8c */ MOVS R1, 0x41 @ Set R1 to 0x41 \n\
/* 0800ca8e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800ca90 */ ANDS R1, R6 @ Set R1 to R1 & R6 \n\
/* 0800ca92 */ LSLS R1, R1, 0x1 \n\
/* 0800ca94 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800ca96 */ LDR R5, =D_03005380 \n\
/* 0800ca98 */ LDR R0, [R5] \n\
/* 0800ca9a */ LDRH R2, [R1] \n\
/* 0800ca9c */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0800ca9e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800caa0 */ LDRSH R4, [R1, R2] \n\
/* 0800caa2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800caa4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0800caa6 */ BL func_0804ddb0 \n\
/* 0800caaa */ LSLS R0, R0, 0x10 \n\
/* 0800caac */ LSRS R0, R0, 0x10 \n\
/* 0800caae */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800cab0 */ LDR R0, [R5] \n\
/* 0800cab2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800cab4 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0800cab6 */ BL func_0804ddb0 \n\
/* 0800caba */ LSLS R0, R0, 0x10 \n\
/* 0800cabc */ LSRS R4, R0, 0x10 \n\
/* 0800cabe */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0800cac0 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 0800cac2 */ LSLS R0, R0, 0x10 \n\
/* 0800cac4 */ ASRS R3, R0, 0x10 \n\
/* 0800cac6 */ LDRH R2, [R7] \n\
/* 0800cac8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800caca */ LDRSH R1, [R7, R5] \n\
/* 0800cacc */ LDR R0, =0x7fff \n\
/* 0800cace */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800cad0 */ BNE branch_0800cae0 \n\
/* 0800cad2 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800cad4 */ B branch_0800caec \n\
\n\
.ltorg \n\
 \n\
branch_0800cae0: \n\
/* 0800cae0 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800cae2 */ BEQ branch_0800caee \n\
/* 0800cae4 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800cae6 */ LSLS R0, R1, 0x10 \n\
/* 0800cae8 */ ASRS R0, R0, 0x10 \n\
/* 0800caea */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
 \n\
branch_0800caec: \n\
/* 0800caec */ STRH R0, [R7] \n\
 \n\
branch_0800caee: \n\
/* 0800caee */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800caf0 */ LDRH R2, [R5] \n\
/* 0800caf2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800caf4 */ LDRSH R1, [R5, R0] \n\
/* 0800caf6 */ LDR R0, =0x7fff \n\
/* 0800caf8 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800cafa */ BNE branch_0800cb04 \n\
/* 0800cafc */ STRH R4, [R5] \n\
/* 0800cafe */ B branch_0800cb12 \n\
\n\
.ltorg \n\
 \n\
branch_0800cb04: \n\
/* 0800cb04 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800cb06 */ BEQ branch_0800cb12 \n\
/* 0800cb08 */ LSLS R0, R4, 0x10 \n\
/* 0800cb0a */ ASRS R0, R0, 0x10 \n\
/* 0800cb0c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800cb0e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800cb10 */ STRH R0, [R1] \n\
 \n\
branch_0800cb12: \n\
/* 0800cb12 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800cb14 */ LSLS R0, R2, 0x10 \n\
/* 0800cb16 */ ASRS R0, R0, 0x10 \n\
 \n\
branch_0800cb18: \n\
/* 0800cb18 */ POP {R3-R5} \n\
/* 0800cb1a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800cb1c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800cb1e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800cb20 */ POP {R4-R7} \n\
/* 0800cb22 */ POP {R1} \n\
/* 0800cb24 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
