asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080087e8 \n\
/* 080087e8 */ PUSH {R4-R7, LR} \n\
/* 080087ea */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080087ec */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080087ee */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080087f0 */ PUSH {R5-R7} \n\
/* 080087f2 */ SUB SP, 0x20 \n\
/* 080087f4 */ STR R0, [SP, 0x1C] \n\
/* 080087f6 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080087f8 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 080087fa */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 080087fc */ LDR R3, [SP, 0x44] \n\
/* 080087fe */ LDR R0, [SP, 0x48] \n\
/* 08008800 */ LDR R1, [SP, 0x4C] \n\
/* 08008802 */ LSLS R0, R0, 0x10 \n\
/* 08008804 */ LSRS R4, R0, 0x10 \n\
/* 08008806 */ LSLS R1, R1, 0x10 \n\
/* 08008808 */ LSRS R1, R1, 0x10 \n\
/* 0800880a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800880c */ LDR R0, [SP, 0x1C] \n\
/* 0800880e */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
/* 08008810 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08008812 */ BHI branch_080088f8 \n\
/* 08008814 */ LDR R0, [SP, 0x50] \n\
/* 08008816 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08008818 */ BNE branch_08008838 \n\
/* 0800881a */ LDR R1, =D_08935fcc \n\
/* 0800881c */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0800881e */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 08008820 */ LSLS R0, R3, 0x1 \n\
/* 08008822 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 08008824 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08008826 */ LDRSH R6, [R1, R2] \n\
/* 08008828 */ LDR R1, =D_089361cc \n\
/* 0800882a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800882c */ B branch_08008854 \n\
\n\
.ltorg \n\
 \n\
branch_08008838: \n\
/* 08008838 */ LDR R2, =gSineTable \n\
/* 0800883a */ LDR R1, =0x7ff \n\
/* 0800883c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800883e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08008840 */ LSLS R0, R0, 0x1 \n\
/* 08008842 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08008844 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08008846 */ LDRSH R6, [R0, R5] \n\
/* 08008848 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 0800884a */ LSLS R5, R5, 0x2 \n\
/* 0800884c */ ADDS R0, R3, R5 @ Set R0 to R3 + R5 \n\
/* 0800884e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08008850 */ LSLS R0, R0, 0x1 \n\
/* 08008852 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
 \n\
branch_08008854: \n\
/* 08008854 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08008856 */ LDRSH R5, [R0, R1] \n\
/* 08008858 */ LSLS R0, R4, 0x10 \n\
/* 0800885a */ ASRS R0, R0, 0x10 \n\
/* 0800885c */ MULS R0, R7 @ Multiply R0 by R7 \n\
/* 0800885e */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 08008860 */ BL func_08007b80 \n\
/* 08008864 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008866 */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 08008868 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800886a */ LSLS R0, R2, 0x10 \n\
/* 0800886c */ ASRS R0, R0, 0x10 \n\
/* 0800886e */ LDR R1, [SP, 0x40] \n\
/* 08008870 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08008872 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08008874 */ BL func_08007b80 \n\
/* 08008878 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800887a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800887c */ MULS R1, R5 @ Multiply R1 by R5 \n\
/* 0800887e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08008880 */ MULS R2, R6 @ Multiply R2 by R6 \n\
/* 08008882 */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
/* 08008884 */ ASRS R1, R1, 0x8 \n\
/* 08008886 */ ADD R1, R9 @ Add R9 to R1 \n\
/* 08008888 */ STR R1, [SP, 0x14] \n\
/* 0800888a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800888c */ MULS R1, R6 @ Multiply R1 by R6 \n\
/* 0800888e */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08008890 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08008892 */ ASRS R1, R1, 0x8 \n\
/* 08008894 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 08008896 */ STR R1, [SP, 0x18] \n\
/* 08008898 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800889a */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 0800889c */ ASRS R0, R0, 0x8 \n\
/* 0800889e */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 080088a0 */ BL func_08007b80 \n\
/* 080088a4 */ ADD R1, SP, 0xC \n\
/* 080088a6 */ STRH R0, [R1] \n\
/* 080088a8 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080088aa */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 080088ac */ ASRS R0, R0, 0x8 \n\
/* 080088ae */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 080088b0 */ BL func_08007b80 \n\
/* 080088b4 */ ADD R1, SP, 0xC \n\
/* 080088b6 */ STRH R0, [R1, 0x4] \n\
/* 080088b8 */ LDR R2, [SP, 0x40] \n\
/* 080088ba */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080088bc */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 080088be */ ASRS R0, R0, 0x8 \n\
/* 080088c0 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 080088c2 */ BL func_08007b80 \n\
/* 080088c6 */ ADD R1, SP, 0xC \n\
/* 080088c8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080088ca */ STRH R0, [R1, 0x2] \n\
/* 080088cc */ LDR R1, [SP, 0x40] \n\
/* 080088ce */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080088d0 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 080088d2 */ ASRS R0, R0, 0x8 \n\
/* 080088d4 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 080088d6 */ BL func_08007b80 \n\
/* 080088da */ ADD R1, SP, 0xC \n\
/* 080088dc */ STRH R0, [R1, 0x6] \n\
/* 080088de */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080088e0 */ LDRH R1, [R0] \n\
/* 080088e2 */ LDRH R2, [R0, 0x2] \n\
/* 080088e4 */ LDRH R3, [R0, 0x4] \n\
/* 080088e6 */ LDRH R0, [R0, 0x6] \n\
/* 080088e8 */ STR R0, [SP] \n\
/* 080088ea */ LDR R0, [SP, 0x14] \n\
/* 080088ec */ STR R0, [SP, 0x4] \n\
/* 080088ee */ LDR R0, [SP, 0x18] \n\
/* 080088f0 */ STR R0, [SP, 0x8] \n\
/* 080088f2 */ LDR R0, [SP, 0x1C] \n\
/* 080088f4 */ BL func_08006e30 \n\
 \n\
branch_080088f8: \n\
/* 080088f8 */ ADD SP, 0x20 \n\
/* 080088fa */ POP {R3-R5} \n\
/* 080088fc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080088fe */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08008900 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08008902 */ POP {R4-R7} \n\
/* 08008904 */ POP {R0} \n\
/* 08008906 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
