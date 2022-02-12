asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021740 \n\
/* 08021740 */ PUSH {R4-R7, LR} \n\
/* 08021742 */ SUB SP, 0x4 \n\
/* 08021744 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08021746 */ LDRH R0, [R7, 0x28] \n\
/* 08021748 */ CMP R0, 0x7F @ Compare R0 and 0x7F \n\
/* 0802174a */ BHI branch_08021766 \n\
/* 0802174c */ LDR R4, =D_03005380 \n\
/* 0802174e */ LDR R0, [R4] \n\
/* 08021750 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021752 */ LDRSH R1, [R7, R2] \n\
/* 08021754 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021756 */ BL func_0804d770 \n\
/* 0802175a */ LDR R0, [R4] \n\
/* 0802175c */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802175e */ LDRSH R1, [R7, R2] \n\
/* 08021760 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021762 */ BL func_0804d770 \n\
 \n\
branch_08021766: \n\
/* 08021766 */ LDR R5, [R7, 0xC] \n\
/* 08021768 */ LDR R3, [R7, 0x10] \n\
/* 0802176a */ LDR R6, =D_03005380 \n\
/* 0802176c */ LDR R0, [R6] \n\
/* 0802176e */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021770 */ LDRSH R1, [R7, R2] \n\
/* 08021772 */ LSLS R5, R5, 0x8 \n\
/* 08021774 */ ASRS R5, R5, 0x10 \n\
/* 08021776 */ LSLS R3, R3, 0x8 \n\
/* 08021778 */ ASRS R3, R3, 0x10 \n\
/* 0802177a */ MOVS R2, 0x8E @ Set R2 to 0x8E \n\
/* 0802177c */ LSLS R2, R2, 0x7 \n\
/* 0802177e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08021780 */ LDRH R2, [R7, 0x2E] \n\
/* 08021782 */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 08021784 */ LDRH R2, [R7, 0x28] \n\
/* 08021786 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08021788 */ LSLS R2, R2, 0x10 \n\
/* 0802178a */ LSRS R2, R2, 0x10 \n\
/* 0802178c */ STR R2, [SP] \n\
/* 0802178e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08021790 */ BL func_0804d55c \n\
/* 08021794 */ LDR R0, [R6] \n\
/* 08021796 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08021798 */ LDRSH R1, [R7, R2] \n\
/* 0802179a */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0802179c */ LDRSH R3, [R7, R2] \n\
/* 0802179e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 080217a0 */ BL func_0804d5d4 \n\
/* 080217a4 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080217a6 */ LDRSB R0, [R7, R0] \n\
/* 080217a8 */ MOVS R2, 0x2A @ Set R2 to 0x2A \n\
/* 080217aa */ LDRSH R1, [R7, R2] \n\
/* 080217ac */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 080217ae */ ADDS R2, 0x2C @ Add 0x2C to R2 \n\
/* 080217b0 */ LDRB R2, [R2] \n\
/* 080217b2 */ LSLS R2, R2, 0x18 \n\
/* 080217b4 */ ASRS R2, R2, 0x18 \n\
/* 080217b6 */ BL func_08007498 \n\
/* 080217ba */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 080217bc */ LDRSB R0, [R7, R0] \n\
/* 080217be */ MOVS R2, 0x2A @ Set R2 to 0x2A \n\
/* 080217c0 */ LDRSH R1, [R7, R2] \n\
/* 080217c2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080217c4 */ BL func_08007498 \n\
/* 080217c8 */ LDR R0, [R6] \n\
/* 080217ca */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080217cc */ LDRSH R1, [R7, R2] \n\
/* 080217ce */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080217d0 */ BL func_0804d770 \n\
/* 080217d4 */ LDR R0, [R6] \n\
/* 080217d6 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080217d8 */ LDRSH R1, [R7, R2] \n\
/* 080217da */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080217dc */ BL func_0804d770 \n\
/* 080217e0 */ ADD SP, 0x4 \n\
/* 080217e2 */ POP {R4-R7} \n\
/* 080217e4 */ POP {R0} \n\
/* 080217e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
