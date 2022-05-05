asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004070 \n\
/* 08004070 */ PUSH {R4-R7, LR} \n\
/* 08004072 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08004074 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08004076 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08004078 */ PUSH {R5-R7} \n\
/* 0800407a */ SUB SP, 0x10 \n\
/* 0800407c */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800407e */ LDR R2, =D_03004b10 \n\
/* 08004080 */ LDR R1, =0x854 \n\
/* 08004082 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08004084 */ LDRH R1, [R0] \n\
/* 08004086 */ LDR R0, =0xfff2 \n\
/* 08004088 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800408a */ ADDS R2, 0x54 @ Add 0x54 to R2 \n\
/* 0800408c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800408e */ BEQ branch_08004092 \n\
/* 08004090 */ LDR R2, =D_030046c0 \n\
 \n\
branch_08004092: \n\
/* 08004092 */ LDR R0, =D_030008a0 \n\
/* 08004094 */ LDRH R0, [R0] \n\
/* 08004096 */ LSLS R0, R0, 0x1 \n\
/* 08004098 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800409a */ LDRH R0, [R0] \n\
/* 0800409c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800409e */ LDR R0, =D_030008a2 \n\
/* 080040a0 */ LDRH R0, [R0] \n\
/* 080040a2 */ LSLS R0, R0, 0x1 \n\
/* 080040a4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080040a6 */ LDRH R0, [R0] \n\
/* 080040a8 */ STR R0, [SP] \n\
/* 080040aa */ LDR R1, =D_030008a6 \n\
/* 080040ac */ LDR R2, =D_030008a8 \n\
/* 080040ae */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080040b0 */ BNE branch_080040c0 \n\
/* 080040b2 */ LDRH R0, [R1] \n\
/* 080040b4 */ CMP R9, R0 @ Compare R9 and R0 \n\
/* 080040b6 */ BNE branch_080040c0 \n\
/* 080040b8 */ LDRH R0, [R2] \n\
/* 080040ba */ LDR R3, [SP] \n\
/* 080040bc */ CMP R3, R0 @ Check R3 - R0 \n\
/* 080040be */ BEQ branch_08004192 \n\
 \n\
branch_080040c0: \n\
/* 080040c0 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 080040c2 */ STRH R5, [R1] \n\
/* 080040c4 */ MOV R0, SP @ Set R0 to SP \n\
/* 080040c6 */ LDRH R0, [R0] \n\
/* 080040c8 */ STRH R0, [R2] \n\
/* 080040ca */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 080040cc */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
/* 080040ce */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080040d0 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 080040d2 */ STR R2, [SP, 0x4] \n\
/* 080040d4 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080040d6 */ LSRS R3, R3, 0x5 \n\
/* 080040d8 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 080040da */ STR R3, [SP, 0x8] \n\
/* 080040dc */ MOV R5, R9 @ Set R5 to R9 \n\
/* 080040de */ LSRS R5, R5, 0xA \n\
/* 080040e0 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 080040e2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080040e4 */ LDR R2, [SP] \n\
/* 080040e6 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080040e8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080040ea */ ANDS R3, R1 @ Set R3 to R3 & R1 \n\
/* 080040ec */ LSRS R7, R2, 0x5 \n\
/* 080040ee */ ANDS R7, R0 @ Set R7 to R7 & R0 \n\
/* 080040f0 */ LSRS R6, R2, 0xA \n\
/* 080040f2 */ ANDS R6, R0 @ Set R6 to R6 & R0 \n\
/* 080040f4 */ LDR R5, [SP, 0x4] \n\
/* 080040f6 */ SUBS R3, R3, R5 @ Set R3 to R3 - R5 \n\
/* 080040f8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080040fa */ LDR R0, [SP, 0x8] \n\
/* 080040fc */ SUBS R7, R7, R0 @ Set R7 to R7 - R0 \n\
/* 080040fe */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08004100 */ SUBS R6, R6, R1 @ Set R6 to R6 - R1 \n\
/* 08004102 */ LDR R0, =D_030008ad \n\
/* 08004104 */ LDRB R1, [R0] \n\
/* 08004106 */ LDR R0, =D_030008ac \n\
/* 08004108 */ LDRB R0, [R0] \n\
/* 0800410a */ SUBS R5, R1, R0 @ Set R5 to R1 - R0 \n\
/* 0800410c */ LSLS R0, R0, 0x1 \n\
/* 0800410e */ LDR R1, =D_03000760 \n\
/* 08004110 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 08004112 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08004114 */ LSLS R0, R0, 0x11 \n\
/* 08004116 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08004118 */ BL Div \n\
/* 0800411c */ STR R0, [SP, 0xC] \n\
/* 0800411e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004120 */ MOV R12, R2 @ Set R12 to R2 \n\
/* 08004122 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08004124 */ BLE branch_0800415c \n\
/* 08004126 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
 \n\
branch_08004128: \n\
/* 08004128 */ MOV R5, R12 @ Set R5 to R12 \n\
/* 0800412a */ LSRS R0, R5, 0x10 \n\
/* 0800412c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800412e */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 08004130 */ ASRS R2, R2, 0x8 \n\
/* 08004132 */ LDR R1, [SP, 0x4] \n\
/* 08004134 */ ADDS R2, R1, R2 @ Set R2 to R1 + R2 \n\
/* 08004136 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08004138 */ MULS R1, R7 @ Multiply R1 by R7 \n\
/* 0800413a */ ASRS R1, R1, 0x8 \n\
/* 0800413c */ LDR R5, [SP, 0x8] \n\
/* 0800413e */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 08004140 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 08004142 */ ASRS R0, R0, 0x8 \n\
/* 08004144 */ ADD R0, R10 @ Add R10 to R0 \n\
/* 08004146 */ LSLS R1, R1, 0x5 \n\
/* 08004148 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 0800414a */ LSLS R0, R0, 0xA \n\
/* 0800414c */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0800414e */ STRH R2, [R4] \n\
/* 08004150 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08004152 */ LDR R0, [SP, 0xC] \n\
/* 08004154 */ ADD R12, R0 @ Add R0 to R12 \n\
/* 08004156 */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 08004158 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800415a */ BNE branch_08004128 \n\
 \n\
branch_0800415c: \n\
/* 0800415c */ LDR R4, =D_03000760 \n\
/* 0800415e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08004160 */ LDR R1, =D_030008ac \n\
/* 08004162 */ LDR R2, =D_030008ad \n\
/* 08004164 */ LDRB R5, [R1] \n\
/* 08004166 */ CMP R3, R5 @ Check R3 - R5 \n\
/* 08004168 */ BGE branch_0800417a \n\
/* 0800416a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_0800416c: \n\
/* 0800416c */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0800416e */ STRH R5, [R0] \n\
/* 08004170 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 08004172 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08004174 */ LDRB R5, [R1] \n\
/* 08004176 */ CMP R3, R5 @ Check R3 - R5 \n\
/* 08004178 */ BLT branch_0800416c \n\
 \n\
branch_0800417a: \n\
/* 0800417a */ LDRB R3, [R2] \n\
/* 0800417c */ CMP R3, 0x9F @ Compare R3 and 0x9F \n\
/* 0800417e */ BGT branch_08004192 \n\
/* 08004180 */ LSLS R0, R3, 0x1 \n\
/* 08004182 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
 \n\
branch_08004184: \n\
/* 08004184 */ MOV R1, SP @ Set R1 to SP \n\
/* 08004186 */ LDRH R1, [R1] \n\
/* 08004188 */ STRH R1, [R0] \n\
/* 0800418a */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0800418c */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0800418e */ CMP R3, 0x9F @ Compare R3 and 0x9F \n\
/* 08004190 */ BLE branch_08004184 \n\
 \n\
branch_08004192: \n\
/* 08004192 */ ADD SP, 0x10 \n\
/* 08004194 */ POP {R3-R5} \n\
/* 08004196 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08004198 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800419a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800419c */ POP {R4-R7} \n\
/* 0800419e */ POP {R0} \n\
/* 080041a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
