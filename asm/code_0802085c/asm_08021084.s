asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021084 \n\
/* 08021084 */ PUSH {R4-R6, LR} \n\
/* 08021086 */ SUB SP, 0xC \n\
/* 08021088 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802108a */ LDR R6, =D_030055d0 \n\
/* 0802108c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0802108e: \n\
/* 0802108e */ LDR R0, [R6] \n\
/* 08021090 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 08021092 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08021094 */ LDRH R0, [R0] \n\
/* 08021096 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021098 */ BNE branch_080210e4 \n\
/* 0802109a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802109c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802109e */ BL func_0802075c \n\
/* 080210a2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080210a4 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 080210a6 */ BHI branch_080210c2 \n\
/* 080210a8 */ LDR R1, [R6] \n\
/* 080210aa */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080210ac */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 080210ae */ LDRB R0, [R0] \n\
/* 080210b0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080210b2 */ BEQ branch_080210c2 \n\
/* 080210b4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080210b6 */ ADDS R0, 0x55 @ Add 0x55 to R0 \n\
/* 080210b8 */ LDRB R0, [R0] \n\
/* 080210ba */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080210bc */ BL func_0802075c \n\
/* 080210c0 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
 \n\
branch_080210c2: \n\
/* 080210c2 */ LDR R0, =D_03005380 \n\
/* 080210c4 */ LDR R0, [R0] \n\
/* 080210c6 */ LDR R1, [R6] \n\
/* 080210c8 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 080210ca */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080210cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080210ce */ LDRSH R1, [R1, R2] \n\
/* 080210d0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080210d2 */ STR R2, [SP] \n\
/* 080210d4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080210d6 */ STR R2, [SP, 0x4] \n\
/* 080210d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080210da */ STR R2, [SP, 0x8] \n\
/* 080210dc */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 080210de */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080210e0 */ BL func_0804d8f8 \n\
 \n\
branch_080210e4: \n\
/* 080210e4 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 080210e6 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080210e8 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 080210ea */ BLS branch_0802108e \n\
/* 080210ec */ LDR R6, =D_030055d0 \n\
/* 080210ee */ LDR R1, [R6] \n\
/* 080210f0 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080210f2 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 080210f4 */ LDRH R5, [R0] \n\
/* 080210f6 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080210f8 */ BNE branch_08021166 \n\
/* 080210fa */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 080210fc */ LDRB R4, [R0] \n\
/* 080210fe */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08021100 */ BEQ branch_08021144 \n\
/* 08021102 */ MOVS R0, 0x21 @ Set R0 to 0x21 \n\
/* 08021104 */ BL func_080206a0 \n\
/* 08021108 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802110a */ LDR R0, =D_03005380 \n\
/* 0802110c */ LDR R0, [R0] \n\
/* 0802110e */ LDR R1, [R6] \n\
/* 08021110 */ MOVS R3, 0x3E @ Set R3 to 0x3E \n\
/* 08021112 */ LDRSH R1, [R1, R3] \n\
/* 08021114 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08021116 */ STR R3, [SP] \n\
/* 08021118 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802111a */ STR R3, [SP, 0x4] \n\
/* 0802111c */ STR R5, [SP, 0x8] \n\
/* 0802111e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021120 */ BL func_0804d8f8 \n\
/* 08021124 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 08021126 */ BL func_0800c3a4 \n\
/* 0802112a */ LDR R1, [R6] \n\
/* 0802112c */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0802112e */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 08021130 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021132 */ STRH R0, [R2] \n\
/* 08021134 */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 08021136 */ STRB R3, [R1] \n\
/* 08021138 */ B branch_08021166 \n\
\n\
.ltorg \n\
 \n\
branch_08021144: \n\
/* 08021144 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08021146 */ BL func_080206a0 \n\
/* 0802114a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802114c */ LDR R0, =D_03005380 \n\
/* 0802114e */ LDR R0, [R0] \n\
/* 08021150 */ LDR R1, [R6] \n\
/* 08021152 */ MOVS R3, 0x3E @ Set R3 to 0x3E \n\
/* 08021154 */ LDRSH R1, [R1, R3] \n\
/* 08021156 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08021158 */ STR R3, [SP] \n\
/* 0802115a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802115c */ STR R3, [SP, 0x4] \n\
/* 0802115e */ STR R4, [SP, 0x8] \n\
/* 08021160 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021162 */ BL func_0804d8f8 \n\
 \n\
branch_08021166: \n\
/* 08021166 */ LDR R0, =D_030055d0 \n\
/* 08021168 */ LDR R0, [R0] \n\
/* 0802116a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802116c */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
/* 0802116e */ LDRB R0, [R1] \n\
/* 08021170 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021172 */ BEQ branch_08021178 \n\
/* 08021174 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08021176 */ STRB R0, [R1] \n\
 \n\
branch_08021178: \n\
/* 08021178 */ ADD SP, 0xC \n\
/* 0802117a */ POP {R4-R6} \n\
/* 0802117c */ POP {R0} \n\
/* 0802117e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
