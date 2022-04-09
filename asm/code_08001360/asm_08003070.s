asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003070 \n\
/* 08003070 */ PUSH {R4-R7, LR} \n\
/* 08003072 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08003074 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08003076 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08003078 */ PUSH {R5-R7} \n\
/* 0800307a */ SUB SP, 0xC \n\
/* 0800307c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800307e */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08003080 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08003082 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 08003084 */ ADDS R0, R6, R3 @ Set R0 to R6 + R3 \n\
/* 08003086 */ LDRB R2, [R7, 0x14] \n\
/* 08003088 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0800308a */ BLS branch_080030c4 \n\
/* 0800308c */ SUBS R4, R2, R6 @ Set R4 to R2 - R6 \n\
/* 0800308e */ SUBS R5, R3, R4 @ Set R5 to R3 - R4 \n\
/* 08003090 */ LDR R0, [SP, 0x2C] \n\
/* 08003092 */ STR R0, [SP] \n\
/* 08003094 */ LDR R1, [SP, 0x30] \n\
/* 08003096 */ STR R1, [SP, 0x4] \n\
/* 08003098 */ LDR R3, [SP, 0x34] \n\
/* 0800309a */ STR R3, [SP, 0x8] \n\
/* 0800309c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800309e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080030a0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080030a2 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080030a4 */ BL func_08003070 \n\
/* 080030a8 */ LDR R0, [SP, 0x2C] \n\
/* 080030aa */ STR R0, [SP] \n\
/* 080030ac */ LDR R1, [SP, 0x30] \n\
/* 080030ae */ ADDS R4, R1, R4 @ Set R4 to R1 + R4 \n\
/* 080030b0 */ STR R4, [SP, 0x4] \n\
/* 080030b2 */ LDR R3, [SP, 0x34] \n\
/* 080030b4 */ STR R3, [SP, 0x8] \n\
/* 080030b6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080030b8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080030ba */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080030bc */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 080030be */ BL func_08003070 \n\
/* 080030c2 */ B branch_0800317a \n\
 \n\
branch_080030c4: \n\
/* 080030c4 */ LDR R0, [SP, 0x2C] \n\
/* 080030c6 */ ADD R0, R9 @ Add R9 to R0 \n\
/* 080030c8 */ LDRB R4, [R7, 0x15] \n\
/* 080030ca */ CMP R0, R4 @ Check R0 - R4 \n\
/* 080030cc */ BLS branch_08003106 \n\
/* 080030ce */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080030d0 */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 080030d2 */ LDR R1, [SP, 0x2C] \n\
/* 080030d4 */ SUBS R5, R1, R4 @ Set R5 to R1 - R4 \n\
/* 080030d6 */ STR R4, [SP] \n\
/* 080030d8 */ LDR R3, [SP, 0x30] \n\
/* 080030da */ STR R3, [SP, 0x4] \n\
/* 080030dc */ LDR R0, [SP, 0x34] \n\
/* 080030de */ STR R0, [SP, 0x8] \n\
/* 080030e0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080030e2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080030e4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080030e6 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080030e8 */ BL func_08003070 \n\
/* 080030ec */ STR R5, [SP] \n\
/* 080030ee */ LDR R1, [SP, 0x30] \n\
/* 080030f0 */ STR R1, [SP, 0x4] \n\
/* 080030f2 */ LDR R3, [SP, 0x34] \n\
/* 080030f4 */ ADDS R4, R3, R4 @ Set R4 to R3 + R4 \n\
/* 080030f6 */ STR R4, [SP, 0x8] \n\
/* 080030f8 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080030fa */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080030fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080030fe */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08003100 */ BL func_08003070 \n\
/* 08003104 */ B branch_0800317a \n\
 \n\
branch_08003106: \n\
/* 08003106 */ LDRB R1, [R7] \n\
/* 08003108 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800310a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800310c */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0800310e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08003110 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003112 */ BNE branch_08003118 \n\
/* 08003114 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08003116 */ MOV R8, R3 @ Set R8 to R3 \n\
 \n\
branch_08003118: \n\
/* 08003118 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800311a */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0800311c */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0800311e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08003120 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08003122 */ LDR R0, [R7, 0x8] \n\
/* 08003124 */ ADDS R6, R0, R1 @ Set R6 to R0 + R1 \n\
/* 08003126 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08003128 */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 0800312a */ LDRB R0, [R2] \n\
/* 0800312c */ LDR R1, [SP, 0x34] \n\
/* 0800312e */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08003130 */ LDR R3, [SP, 0x30] \n\
/* 08003132 */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 08003134 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08003136 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08003138 */ LDR R0, [R7, 0x18] \n\
/* 0800313a */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 0800313c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800313e */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08003140 */ LDR R0, [SP, 0x2C] \n\
/* 08003142 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08003144 */ BCS branch_0800317a \n\
 \n\
branch_08003146: \n\
/* 08003146 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08003148 */ LSLS R0, R0, 0x1 \n\
/* 0800314a */ STR R0, [SP] \n\
/* 0800314c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800314e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08003150 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08003152 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08003154 */ MULS R2, R3 @ Multiply R2 by R3 \n\
/* 08003156 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08003158 */ BL func_0800186c \n\
/* 0800315c */ LDRB R0, [R7, 0x14] \n\
/* 0800315e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08003160 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08003162 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08003164 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 08003166 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08003168 */ LDRB R0, [R3] \n\
/* 0800316a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800316c */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0800316e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08003170 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08003172 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08003174 */ LDR R3, [SP, 0x2C] \n\
/* 08003176 */ CMP R5, R3 @ Check R5 - R3 \n\
/* 08003178 */ BCC branch_08003146 \n\
 \n\
branch_0800317a: \n\
/* 0800317a */ ADD SP, 0xC \n\
/* 0800317c */ POP {R3-R5} \n\
/* 0800317e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08003180 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08003182 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08003184 */ POP {R4-R7} \n\
/* 08003186 */ POP {R0} \n\
/* 08003188 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
