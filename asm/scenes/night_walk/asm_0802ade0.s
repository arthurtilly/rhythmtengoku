asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ade0 \n\
/* 0802ade0 */ PUSH {R4-R7, LR} \n\
/* 0802ade2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802ade4 */ PUSH {R7} \n\
/* 0802ade6 */ SUB SP, 0xC \n\
/* 0802ade8 */ LSLS R1, R1, 0x10 \n\
/* 0802adea */ LSRS R1, R1, 0x10 \n\
/* 0802adec */ LSLS R2, R2, 0x10 \n\
/* 0802adee */ LSRS R2, R2, 0x10 \n\
/* 0802adf0 */ LSLS R3, R3, 0x10 \n\
/* 0802adf2 */ LSRS R3, R3, 0x10 \n\
/* 0802adf4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802adf6 */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 0802adf8 */ ANDS R1, R5 @ Set R1 to R1 & R5 \n\
/* 0802adfa */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802adfc */ BNE branch_0802ae08 \n\
/* 0802adfe */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802ae00 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 0802ae02 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ae04 */ BNE branch_0802ae08 \n\
/* 0802ae06 */ B branch_0802af4e \n\
 \n\
branch_0802ae08: \n\
/* 0802ae08 */ LDR R6, =D_03001568 \n\
/* 0802ae0a */ LDR R0, [R6] \n\
/* 0802ae0c */ LDR R4, =0x0000033a \n\
/* 0802ae0e */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 0802ae10 */ LDRH R0, [R1] \n\
/* 0802ae12 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802ae14 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802ae16 */ STRH R0, [R1] \n\
/* 0802ae18 */ LSLS R0, R0, 0x10 \n\
/* 0802ae1a */ LSRS R0, R0, 0x10 \n\
/* 0802ae1c */ LDR R3, =0x0000270f \n\
/* 0802ae1e */ CMP R0, R3 @ Check R0 - R3 \n\
/* 0802ae20 */ BLS branch_0802ae24 \n\
/* 0802ae22 */ STRH R3, [R1] \n\
 \n\
branch_0802ae24: \n\
/* 0802ae24 */ ANDS R2, R5 @ Set R2 to R2 & R5 \n\
/* 0802ae26 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0802ae28 */ BEQ branch_0802ae30 \n\
/* 0802ae2a */ LDR R0, [R6] \n\
/* 0802ae2c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802ae2e */ STRH R7, [R0] \n\
 \n\
branch_0802ae30: \n\
/* 0802ae30 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0802ae32 */ BL func_0800c3a4 \n\
/* 0802ae36 */ LDR R2, [R6] \n\
/* 0802ae38 */ ADDS R1, R2, R4 @ Set R1 to R2 + R4 \n\
/* 0802ae3a */ LDRH R1, [R1] \n\
/* 0802ae3c */ SUBS R4, R1, R0 @ Set R4 to R1 - R0 \n\
/* 0802ae3e */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0802ae40 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802ae42 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0802ae44 */ BNE branch_0802ae98 \n\
/* 0802ae46 */ MOVS R0, 0xD1 @ Set R0 to 0xD1 \n\
/* 0802ae48 */ LSLS R0, R0, 0x2 \n\
/* 0802ae4a */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0802ae4c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ae4e */ LDRSH R0, [R1, R3] \n\
/* 0802ae50 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ae52 */ BLT branch_0802ae74 \n\
/* 0802ae54 */ LDR R0, =D_03005380 \n\
/* 0802ae56 */ LDR R0, [R0] \n\
/* 0802ae58 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ae5a */ LDRSH R1, [R1, R3] \n\
/* 0802ae5c */ MOVS R3, 0xD3 @ Set R3 to 0xD3 \n\
/* 0802ae5e */ LSLS R3, R3, 0x2 \n\
/* 0802ae60 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802ae62 */ LDR R2, [R2] \n\
/* 0802ae64 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802ae66 */ STR R3, [SP] \n\
/* 0802ae68 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802ae6a */ STR R3, [SP, 0x4] \n\
/* 0802ae6c */ STR R7, [SP, 0x8] \n\
/* 0802ae6e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ae70 */ BL func_0804d8f8 \n\
 \n\
branch_0802ae74: \n\
/* 0802ae74 */ LDR R0, [R6] \n\
/* 0802ae76 */ MOVS R2, 0xD0 @ Set R2 to 0xD0 \n\
/* 0802ae78 */ LSLS R2, R2, 0x2 \n\
/* 0802ae7a */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802ae7c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ae7e */ LDRSH R0, [R1, R3] \n\
/* 0802ae80 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ae82 */ BEQ branch_0802ae98 \n\
/* 0802ae84 */ LDR R0, =D_03005380 \n\
/* 0802ae86 */ LDR R0, [R0] \n\
/* 0802ae88 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ae8a */ LDRSH R1, [R1, R2] \n\
/* 0802ae8c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802ae8e */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0802ae90 */ STR R7, [SP] \n\
/* 0802ae92 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ae94 */ BL func_0804dae0 \n\
 \n\
branch_0802ae98: \n\
/* 0802ae98 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802ae9a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802ae9c */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0802ae9e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802aea0 */ BEQ branch_0802af4e \n\
/* 0802aea2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802aea4 */ BGE branch_0802aecc \n\
/* 0802aea6 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802aea8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802aeaa */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0802aeac */ BGE branch_0802aec4 \n\
/* 0802aeae */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802aeb0 */ B branch_0802aece \n\
\n\
.ltorg \n\
 \n\
branch_0802aec4: \n\
/* 0802aec4 */ LSLS R0, R4, 0x4 \n\
/* 0802aec6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802aec8 */ ADDS R1, 0x60 @ Add 0x60 to R1 \n\
/* 0802aeca */ B branch_0802aece \n\
 \n\
branch_0802aecc: \n\
/* 0802aecc */ MOVS R1, 0x60 @ Set R1 to 0x60 \n\
 \n\
branch_0802aece: \n\
/* 0802aece */ LDR R5, =D_03001568 \n\
/* 0802aed0 */ LDR R0, [R5] \n\
/* 0802aed2 */ LDR R3, =0x00000342 \n\
/* 0802aed4 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 0802aed6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802aed8 */ LDRSH R0, [R2, R3] \n\
/* 0802aeda */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802aedc */ BLT branch_0802aee4 \n\
/* 0802aede */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802aee0 */ BL func_0802ab7c \n\
 \n\
branch_0802aee4: \n\
/* 0802aee4 */ LDR R2, [R5] \n\
/* 0802aee6 */ MOVS R0, 0xD1 @ Set R0 to 0xD1 \n\
/* 0802aee8 */ LSLS R0, R0, 0x2 \n\
/* 0802aeea */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0802aeec */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802aeee */ LDRSH R0, [R1, R3] \n\
/* 0802aef0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802aef2 */ BLT branch_0802af16 \n\
/* 0802aef4 */ LDR R0, =D_03005380 \n\
/* 0802aef6 */ LDR R0, [R0] \n\
/* 0802aef8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802aefa */ LDRSH R1, [R1, R3] \n\
/* 0802aefc */ MOVS R3, 0xD2 @ Set R3 to 0xD2 \n\
/* 0802aefe */ LSLS R3, R3, 0x2 \n\
/* 0802af00 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802af02 */ LDR R2, [R2] \n\
/* 0802af04 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802af06 */ STR R3, [SP] \n\
/* 0802af08 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802af0a */ STR R3, [SP, 0x4] \n\
/* 0802af0c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802af0e */ STR R3, [SP, 0x8] \n\
/* 0802af10 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802af12 */ BL func_0804d8f8 \n\
 \n\
branch_0802af16: \n\
/* 0802af16 */ LDR R0, [R5] \n\
/* 0802af18 */ MOVS R2, 0xD0 @ Set R2 to 0xD0 \n\
/* 0802af1a */ LSLS R2, R2, 0x2 \n\
/* 0802af1c */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802af1e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802af20 */ LDRSH R0, [R1, R3] \n\
/* 0802af22 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802af24 */ BEQ branch_0802af4e \n\
/* 0802af26 */ LDR R4, =D_03005380 \n\
/* 0802af28 */ LDR R0, [R4] \n\
/* 0802af2a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802af2c */ LDRSH R1, [R1, R2] \n\
/* 0802af2e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802af30 */ STR R2, [SP] \n\
/* 0802af32 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802af34 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802af36 */ BL func_0804dae0 \n\
/* 0802af3a */ LDR R0, [R4] \n\
/* 0802af3c */ LDR R1, [R5] \n\
/* 0802af3e */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0802af40 */ LSLS R3, R3, 0x2 \n\
/* 0802af42 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0802af44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802af46 */ LDRSH R1, [R1, R2] \n\
/* 0802af48 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802af4a */ BL func_0804cebc \n\
 \n\
branch_0802af4e: \n\
/* 0802af4e */ ADD SP, 0xC \n\
/* 0802af50 */ POP {R3} \n\
/* 0802af52 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802af54 */ POP {R4-R7} \n\
/* 0802af56 */ POP {R0} \n\
/* 0802af58 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
