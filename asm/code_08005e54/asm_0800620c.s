asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800620c \n\
/* 0800620c */ PUSH {R4-R7, LR} \n\
/* 0800620e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08006210 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08006212 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08006214 */ PUSH {R5-R7} \n\
/* 08006216 */ SUB SP, 0x10 \n\
/* 08006218 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800621a */ STR R1, [SP, 0x4] \n\
/* 0800621c */ STR R2, [SP, 0x8] \n\
/* 0800621e */ STR R3, [SP, 0xC] \n\
/* 08006220 */ LDR R0, [SP, 0x34] \n\
/* 08006222 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08006224 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08006226 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08006228 */ ADD R2, SP, 0x8 \n\
/* 0800622a */ ADD R6, SP, 0xC \n\
/* 0800622c */ ADD R3, SP, 0x30 \n\
/* 0800622e */ STR R3, [SP] \n\
/* 08006230 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08006232 */ ADD R1, SP, 0x4 \n\
/* 08006234 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08006236 */ BL func_08005e54 \n\
/* 0800623a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800623c */ BEQ branch_08006316 \n\
/* 0800623e */ LDR R0, [SP, 0x4] \n\
/* 08006240 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 08006242 */ LDR R1, [SP, 0x38] \n\
/* 08006244 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08006246 */ STR R4, [SP, 0x38] \n\
/* 08006248 */ LDR R0, [SP, 0x8] \n\
/* 0800624a */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 0800624c */ LDR R1, [SP, 0x3C] \n\
/* 0800624e */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 08006250 */ STR R5, [SP, 0x3C] \n\
/* 08006252 */ ADD R1, SP, 0x38 \n\
/* 08006254 */ ADD R2, SP, 0x3C \n\
/* 08006256 */ ADD R0, SP, 0x30 \n\
/* 08006258 */ STR R0, [SP] \n\
/* 0800625a */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800625c */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800625e */ BL func_08005e54 \n\
/* 08006262 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006264 */ BEQ branch_08006316 \n\
/* 08006266 */ LDR R3, [SP, 0x38] \n\
/* 08006268 */ SUBS R1, R3, R4 @ Set R1 to R3 - R4 \n\
/* 0800626a */ LDR R0, [SP, 0x4] \n\
/* 0800626c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800626e */ STR R0, [SP, 0x4] \n\
/* 08006270 */ LDR R4, [SP, 0x3C] \n\
/* 08006272 */ SUBS R1, R4, R5 @ Set R1 to R4 - R5 \n\
/* 08006274 */ LDR R2, [SP, 0x8] \n\
/* 08006276 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08006278 */ STR R2, [SP, 0x8] \n\
/* 0800627a */ LSLS R0, R0, 0x1 \n\
/* 0800627c */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800627e */ LDR R1, [R5] \n\
/* 08006280 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08006282 */ LDRH R0, [R5, 0x4] \n\
/* 08006284 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08006286 */ LSLS R0, R0, 0x1 \n\
/* 08006288 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0800628a */ LSLS R3, R3, 0x1 \n\
/* 0800628c */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800628e */ LDR R1, [R0] \n\
/* 08006290 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08006292 */ LDRH R0, [R0, 0x4] \n\
/* 08006294 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08006296 */ LSLS R0, R0, 0x1 \n\
/* 08006298 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800629a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800629c */ LDR R7, [SP, 0x30] \n\
/* 0800629e */ CMP R0, R7 @ Check R0 - R7 \n\
/* 080062a0 */ BCS branch_08006316 \n\
/* 080062a2 */ LDR R5, [SP, 0xC] \n\
/* 080062a4 */ ASRS R3, R5, 0x3 \n\
/* 080062a6 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 080062a8 */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 080062aa */ MOV R12, R3 @ Set R12 to R3 \n\
/* 080062ac */ ANDS R3, R5 @ Set R3 to R3 & R5 \n\
/* 080062ae */ MOV R12, R3 @ Set R12 to R3 \n\
 \n\
branch_080062b0: \n\
/* 080062b0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080062b2 */ ADDS R6, R0, 0x1 @ Set R6 to R0 + 0x1 \n\
/* 080062b4 */ CMP R4, R9 @ Compare R4 and R9 \n\
/* 080062b6 */ BCS branch_080062e4 \n\
/* 080062b8 */ ASRS R3, R5, 0x3 \n\
 \n\
branch_080062ba: \n\
/* 080062ba */ LDRH R0, [R2] \n\
/* 080062bc */ STRH R0, [R1] \n\
/* 080062be */ LDRH R0, [R2, 0x2] \n\
/* 080062c0 */ STRH R0, [R1, 0x2] \n\
/* 080062c2 */ LDRH R0, [R2, 0x4] \n\
/* 080062c4 */ STRH R0, [R1, 0x4] \n\
/* 080062c6 */ LDRH R0, [R2, 0x6] \n\
/* 080062c8 */ STRH R0, [R1, 0x6] \n\
/* 080062ca */ LDRH R0, [R2, 0x8] \n\
/* 080062cc */ STRH R0, [R1, 0x8] \n\
/* 080062ce */ LDRH R0, [R2, 0xA] \n\
/* 080062d0 */ STRH R0, [R1, 0xA] \n\
/* 080062d2 */ LDRH R0, [R2, 0xC] \n\
/* 080062d4 */ STRH R0, [R1, 0xC] \n\
/* 080062d6 */ LDRH R0, [R2, 0xE] \n\
/* 080062d8 */ STRH R0, [R1, 0xE] \n\
/* 080062da */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 080062dc */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 080062de */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080062e0 */ CMP R4, R3 @ Check R4 - R3 \n\
/* 080062e2 */ BCC branch_080062ba \n\
 \n\
branch_080062e4: \n\
/* 080062e4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080062e6 */ CMP R4, R12 @ Compare R4 and R12 \n\
/* 080062e8 */ BCS branch_080062fc \n\
/* 080062ea */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 080062ec */ ANDS R3, R5 @ Set R3 to R3 & R5 \n\
 \n\
branch_080062ee: \n\
/* 080062ee */ LDRH R0, [R2] \n\
/* 080062f0 */ STRH R0, [R1] \n\
/* 080062f2 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 080062f4 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 080062f6 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080062f8 */ CMP R4, R3 @ Check R4 - R3 \n\
/* 080062fa */ BCC branch_080062ee \n\
 \n\
branch_080062fc: \n\
/* 080062fc */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080062fe */ LDRH R0, [R3, 0x4] \n\
/* 08006300 */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 08006302 */ LSLS R0, R0, 0x1 \n\
/* 08006304 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08006306 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08006308 */ LDRH R0, [R3, 0x4] \n\
/* 0800630a */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 0800630c */ LSLS R0, R0, 0x1 \n\
/* 0800630e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08006310 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08006312 */ CMP R0, R7 @ Check R0 - R7 \n\
/* 08006314 */ BCC branch_080062b0 \n\
 \n\
branch_08006316: \n\
/* 08006316 */ ADD SP, 0x10 \n\
/* 08006318 */ POP {R3-R5} \n\
/* 0800631a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800631c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800631e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08006320 */ POP {R4-R7} \n\
/* 08006322 */ POP {R0} \n\
/* 08006324 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
