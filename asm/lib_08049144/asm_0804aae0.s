asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804aae0 \n\
/* 0804aae0 */ PUSH {R4-R7, LR} \n\
/* 0804aae2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804aae4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804aae6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804aae8 */ PUSH {R5-R7} \n\
/* 0804aaea */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804aaec */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804aaee */ BL func_0804aaa4 \n\
/* 0804aaf2 */ LSLS R0, R0, 0x18 \n\
/* 0804aaf4 */ LSRS R6, R0, 0x18 \n\
/* 0804aaf6 */ LSLS R4, R4, 0x5 \n\
/* 0804aaf8 */ LDR R0, [R5, 0x18] \n\
/* 0804aafa */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804aafc */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0804aafe */ LDRB R0, [R0, 0x3] \n\
/* 0804ab00 */ LSRS R0, R0, 0x7 \n\
/* 0804ab02 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804ab04 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0804ab06 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ab08 */ BEQ branch_0804ab10 \n\
/* 0804ab0a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804ab0c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804ab0e */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_0804ab10: \n\
/* 0804ab10 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804ab12 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804ab14 */ LDR R0, =D_030064bc \n\
/* 0804ab16 */ LDR R7, [R0] \n\
/* 0804ab18 */ B branch_0804ab6c \n\
\n\
.ltorg \n\
 \n\
branch_0804ab20: \n\
/* 0804ab20 */ LDRB R0, [R7] \n\
/* 0804ab22 */ LSLS R0, R0, 0x1F \n\
/* 0804ab24 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ab26 */ BEQ branch_0804ab66 \n\
/* 0804ab28 */ LDR R0, [R7, 0xC] \n\
/* 0804ab2a */ CMP R0, R9 @ Compare R0 and R9 \n\
/* 0804ab2c */ BNE branch_0804ab66 \n\
/* 0804ab2e */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0804ab30 */ LDRSH R0, [R7, R1] \n\
/* 0804ab32 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 0804ab34 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804ab36 */ BGE branch_0804ab3a \n\
/* 0804ab38 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_0804ab3a: \n\
/* 0804ab3a */ CMP R6, 0x7F @ Compare R6 and 0x7F \n\
/* 0804ab3c */ BLE branch_0804ab40 \n\
/* 0804ab3e */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
 \n\
branch_0804ab40: \n\
/* 0804ab40 */ LSLS R4, R6, 0x18 \n\
/* 0804ab42 */ LSRS R4, R4, 0x18 \n\
/* 0804ab44 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804ab46 */ BL func_0804a674 \n\
/* 0804ab4a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804ab4c */ LSLS R5, R5, 0x18 \n\
/* 0804ab4e */ LSRS R5, R5, 0x18 \n\
/* 0804ab50 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804ab52 */ BL func_0804a65c \n\
/* 0804ab56 */ LSLS R0, R0, 0x18 \n\
/* 0804ab58 */ LSRS R0, R0, 0x18 \n\
/* 0804ab5a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0804ab5c */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 0804ab5e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804ab60 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804ab62 */ BL func_080493c8 \n\
 \n\
branch_0804ab66: \n\
/* 0804ab66 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804ab68 */ ADD R8, R0 @ Add R0 to R8 \n\
/* 0804ab6a */ ADDS R7, 0x20 @ Add 0x20 to R7 \n\
 \n\
branch_0804ab6c: \n\
/* 0804ab6c */ LDR R0, =D_03005b8c \n\
/* 0804ab6e */ LDRH R0, [R0] \n\
/* 0804ab70 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0804ab72 */ BLT branch_0804ab20 \n\
/* 0804ab74 */ POP {R3-R5} \n\
/* 0804ab76 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804ab78 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804ab7a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804ab7c */ POP {R4-R7} \n\
/* 0804ab7e */ POP {R0} \n\
/* 0804ab80 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
