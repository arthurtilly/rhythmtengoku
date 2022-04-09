asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080327d4 \n\
/* 080327d4 */ PUSH {R4-R7, LR} \n\
/* 080327d6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080327d8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080327da */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080327dc */ PUSH {R5-R7} \n\
/* 080327de */ SUB SP, 0x14 \n\
/* 080327e0 */ LDR R0, =D_030055d0 \n\
/* 080327e2 */ LDR R0, [R0] \n\
/* 080327e4 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 080327e6 */ LSLS R1, R1, 0x1 \n\
/* 080327e8 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 080327ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080327ec */ MOV R10, R2 @ Set R10 to R2 \n\
/* 080327ee */ LDR R3, =D_03005380 \n\
/* 080327f0 */ MOV R9, R3 @ Set R9 to R3 \n\
 \n\
branch_080327f2: \n\
/* 080327f2 */ LDR R0, =D_089e4958 \n\
/* 080327f4 */ LSLS R1, R2, 0x2 \n\
/* 080327f6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080327f8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080327fa */ LDRSH R0, [R1, R3] \n\
/* 080327fc */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080327fe */ LDRSH R5, [R1, R3] \n\
/* 08032800 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08032802 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08032804 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08032806 */ LSLS R7, R0, 0x10 \n\
 \n\
branch_08032808: \n\
/* 08032808 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803280a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803280c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803280e */ STRB R0, [R4, 0x2] \n\
/* 08032810 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08032812 */ LDR R0, [R1] \n\
/* 08032814 */ LDR R2, =D_089e4960 \n\
/* 08032816 */ LDRB R1, [R4, 0x2] \n\
/* 08032818 */ LSLS R1, R1, 0x3 \n\
/* 0803281a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803281c */ LDR R1, [R1] \n\
/* 0803281e */ LSLS R2, R5, 0x10 \n\
/* 08032820 */ ASRS R2, R2, 0x10 \n\
/* 08032822 */ STR R2, [SP] \n\
/* 08032824 */ LDR R3, =0xffff8800 \n\
/* 08032826 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08032828 */ SUBS R2, R2, R5 @ Set R2 to R2 - R5 \n\
/* 0803282a */ LSLS R2, R2, 0x10 \n\
/* 0803282c */ LSRS R2, R2, 0x10 \n\
/* 0803282e */ STR R2, [SP, 0x4] \n\
/* 08032830 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08032832 */ STR R2, [SP, 0x8] \n\
/* 08032834 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08032836 */ STR R2, [SP, 0xC] \n\
/* 08032838 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803283a */ STR R2, [SP, 0x10] \n\
/* 0803283c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803283e */ ASRS R3, R7, 0x10 \n\
/* 08032840 */ BL func_0804d160 \n\
/* 08032844 */ STRH R0, [R4] \n\
/* 08032846 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08032848 */ LDR R0, [R3] \n\
/* 0803284a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803284c */ LDRSH R1, [R4, R2] \n\
/* 0803284e */ MOVS R2, 0xB0 @ Set R2 to 0xB0 \n\
/* 08032850 */ LSLS R2, R2, 0x2 \n\
/* 08032852 */ BL func_0804d890 \n\
/* 08032856 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08032858 */ STRB R3, [R4, 0x3] \n\
/* 0803285a */ LSLS R0, R5, 0x8 \n\
/* 0803285c */ STR R0, [R4, 0x4] \n\
/* 0803285e */ ADDS R5, 0x20 @ Add 0x20 to R5 \n\
/* 08032860 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08032862 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08032864 */ CMP R6, 0x5 @ Compare R6 and 0x5 \n\
/* 08032866 */ BLS branch_08032808 \n\
/* 08032868 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803286a */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0803286c */ BLS branch_080327f2 \n\
/* 0803286e */ LDR R4, =D_030055d0 \n\
/* 08032870 */ LDR R1, [R4] \n\
/* 08032872 */ MOVS R0, 0x84 @ Set R0 to 0x84 \n\
/* 08032874 */ LSLS R0, R0, 0x2 \n\
/* 08032876 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08032878 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803287a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803287c */ STRH R0, [R2] \n\
/* 0803287e */ LDR R2, =0x212 \n\
/* 08032880 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08032882 */ STRB R3, [R1] \n\
/* 08032884 */ LDR R0, [R4] \n\
/* 08032886 */ LDR R1, =0x213 \n\
/* 08032888 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803288a */ STRB R3, [R0] \n\
/* 0803288c */ ADD SP, 0x14 \n\
/* 0803288e */ POP {R3-R5} \n\
/* 08032890 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08032892 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08032894 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08032896 */ POP {R4-R7} \n\
/* 08032898 */ POP {R0} \n\
/* 0803289a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
