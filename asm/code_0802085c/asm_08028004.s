asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08028004 \n\
/* 08028004 */ PUSH {R4-R7, LR} \n\
/* 08028006 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08028008 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802800a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802800c */ PUSH {R5-R7} \n\
/* 0802800e */ SUB SP, 0x10 \n\
/* 08028010 */ LDR R0, =D_030055d0 \n\
/* 08028012 */ LDR R0, [R0] \n\
/* 08028014 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 08028016 */ LSLS R1, R1, 0x3 \n\
/* 08028018 */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 0802801a */ ADD R1, SP, 0xC \n\
/* 0802801c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802801e */ STRB R0, [R1, 0x1] \n\
/* 08028020 */ BL func_0801a060 \n\
/* 08028024 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08028026 */ BL func_08027fc8 \n\
/* 0802802a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0802802c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802802e */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08028030 */ BL func_0804f150 \n\
/* 08028034 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08028036 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08028038 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0802803a */ BL __udivsi3 \n\
/* 0802803e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08028040 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08028042 */ BL func_0804f150 \n\
/* 08028046 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08028048 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802804a */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0802804c */ BL __udivsi3 \n\
/* 08028050 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08028052 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08028054 */ BL func_0804f150 \n\
/* 08028058 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802805a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802805c */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0802805e */ BL __udivsi3 \n\
/* 08028062 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08028064 */ BL func_0804f150 \n\
/* 08028068 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802806a */ LDR R1, =D_0805a0c0 \n\
/* 0802806c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802806e */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08028070 */ BL func_0804f210 \n\
/* 08028074 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08028076 */ BEQ branch_08028090 \n\
/* 08028078 */ ADD R1, SP, 0xC \n\
/* 0802807a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802807c */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0802807e */ STRB R0, [R1] \n\
/* 08028080 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08028082 */ BL func_080081a8 \n\
/* 08028086 */ B branch_08028094 \n\
\n\
.ltorg \n\
 \n\
branch_08028090: \n\
/* 08028090 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08028092 */ BEQ branch_080280a2 \n\
 \n\
branch_08028094: \n\
/* 08028094 */ ADD R1, SP, 0xC \n\
/* 08028096 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08028098 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0802809a */ STRB R0, [R1] \n\
/* 0802809c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802809e */ BL func_080081a8 \n\
 \n\
branch_080280a2: \n\
/* 080280a2 */ ADD R1, SP, 0xC \n\
/* 080280a4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080280a6 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 080280a8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080280aa */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080280ac */ STRB R0, [R1] \n\
/* 080280ae */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080280b0 */ BL func_080081a8 \n\
/* 080280b4 */ LDR R1, =D_0805a0c8 \n\
/* 080280b6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080280b8 */ BL func_080081a8 \n\
/* 080280bc */ ADD R1, SP, 0xC \n\
/* 080280be */ MOV R0, R10 @ Set R0 to R10 \n\
/* 080280c0 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 080280c2 */ STRB R0, [R1] \n\
/* 080280c4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080280c6 */ BL func_080081a8 \n\
/* 080280ca */ LDR R1, =D_0805a0cc \n\
/* 080280cc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080280ce */ BL func_080081a8 \n\
/* 080280d2 */ LDR R0, =D_089e1778 \n\
/* 080280d4 */ LSLS R4, R7, 0x2 \n\
/* 080280d6 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 080280d8 */ LDR R1, [R0] \n\
/* 080280da */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080280dc */ BL func_080081a8 \n\
/* 080280e0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080280e2 */ BL func_08027ba0 \n\
/* 080280e6 */ MOVS R0, 0x96 @ Set R0 to 0x96 \n\
/* 080280e8 */ BL func_0800bdf8 \n\
/* 080280ec */ LDR R0, =D_089e178c \n\
/* 080280ee */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 080280f0 */ LDR R0, [R0] \n\
/* 080280f2 */ BL func_0800bf7c \n\
/* 080280f6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080280f8 */ BL func_0800bd04 \n\
/* 080280fc */ LDR R5, =D_030055d0 \n\
/* 080280fe */ LDR R0, [R5] \n\
/* 08028100 */ LDR R3, =0x0000045c \n\
/* 08028102 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08028104 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08028106 */ STRB R3, [R0] \n\
/* 08028108 */ LDR R0, =D_03005380 \n\
/* 0802810a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802810c */ LDR R0, [R0] \n\
/* 0802810e */ LDR R1, [R5] \n\
/* 08028110 */ LDR R6, =0x0000045e \n\
/* 08028112 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08028114 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028116 */ LDRSH R1, [R1, R2] \n\
/* 08028118 */ LDR R2, =D_089e1764 \n\
/* 0802811a */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 0802811c */ LDR R2, [R4] \n\
/* 0802811e */ STR R3, [SP] \n\
/* 08028120 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08028122 */ STR R3, [SP, 0x4] \n\
/* 08028124 */ STR R3, [SP, 0x8] \n\
/* 08028126 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08028128 */ BL func_0804d8f8 \n\
/* 0802812c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802812e */ LDR R0, [R1] \n\
/* 08028130 */ LDR R1, [R5] \n\
/* 08028132 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08028134 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028136 */ LDRSH R1, [R1, R2] \n\
/* 08028138 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802813a */ BL func_0804d770 \n\
/* 0802813e */ BL func_0801d6d0 \n\
/* 08028142 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08028144 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08028146 */ BLT branch_08028158 \n\
/* 08028148 */ BL func_080281c4 \n\
/* 0802814c */ CMP R0, R7 @ Check R0 - R7 \n\
/* 0802814e */ BCS branch_08028158 \n\
/* 08028150 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08028152 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08028154 */ BL func_0802818c \n\
 \n\
branch_08028158: \n\
/* 08028158 */ ADD SP, 0x10 \n\
/* 0802815a */ POP {R3-R5} \n\
/* 0802815c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802815e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08028160 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08028162 */ POP {R4-R7} \n\
/* 08028164 */ POP {R0} \n\
/* 08028166 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
