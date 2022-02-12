asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802c23c \n\
/* 0802c23c */ PUSH {R4-R7, LR} \n\
/* 0802c23e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802c240 */ PUSH {R7} \n\
/* 0802c242 */ SUB SP, 0x14 \n\
/* 0802c244 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802c246 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802c248 */ LDR R5, =D_030055d0 \n\
/* 0802c24a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802c24c */ LDR R6, =D_03005380 \n\
/* 0802c24e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0802c250: \n\
/* 0802c250 */ LDR R1, [R5] \n\
/* 0802c252 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802c254 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0802c256 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c258 */ STR R7, [R0] \n\
/* 0802c25a */ LDRB R2, [R1, 0x6] \n\
/* 0802c25c */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0802c25e */ BEQ branch_0802c288 \n\
/* 0802c260 */ LDR R0, [R6] \n\
/* 0802c262 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802c264 */ STR R1, [SP] \n\
/* 0802c266 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 0802c268 */ LSLS R1, R1, 0x7 \n\
/* 0802c26a */ STR R1, [SP, 0x4] \n\
/* 0802c26c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802c26e */ STR R1, [SP, 0x8] \n\
/* 0802c270 */ STR R7, [SP, 0xC] \n\
/* 0802c272 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802c274 */ STR R1, [SP, 0x10] \n\
/* 0802c276 */ LDR R1, =D_088cb4a4 \n\
/* 0802c278 */ B branch_0802c29e \n\
\n\
.ltorg \n\
 \n\
branch_0802c288: \n\
/* 0802c288 */ LDR R0, [R6] \n\
/* 0802c28a */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802c28c */ STR R1, [SP] \n\
/* 0802c28e */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 0802c290 */ LSLS R1, R1, 0x7 \n\
/* 0802c292 */ STR R1, [SP, 0x4] \n\
/* 0802c294 */ STR R2, [SP, 0x8] \n\
/* 0802c296 */ STR R7, [SP, 0xC] \n\
/* 0802c298 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802c29a */ STR R1, [SP, 0x10] \n\
/* 0802c29c */ LDR R1, =D_088cb994 \n\
 \n\
branch_0802c29e: \n\
/* 0802c29e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c2a0 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802c2a2 */ BL func_0804d160 \n\
/* 0802c2a6 */ LDR R1, [R5] \n\
/* 0802c2a8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c2aa */ STRH R0, [R1, 0x8] \n\
/* 0802c2ac */ LDR R1, [R5] \n\
/* 0802c2ae */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802c2b0 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0802c2b2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c2b4 */ STR R7, [R0] \n\
/* 0802c2b6 */ LDR R0, [R6] \n\
/* 0802c2b8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c2ba */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802c2bc */ LDRSH R1, [R1, R2] \n\
/* 0802c2be */ LDR R2, =(func_0802c1f0 + 1) \n\
/* 0802c2c0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802c2c2 */ BL func_0804daa8 \n\
/* 0802c2c6 */ LDR R0, [R6] \n\
/* 0802c2c8 */ LDR R1, [R5] \n\
/* 0802c2ca */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c2cc */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802c2ce */ LDRSH R1, [R1, R2] \n\
/* 0802c2d0 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0802c2d2 */ BL func_0804cebc \n\
/* 0802c2d6 */ LDR R0, [R6] \n\
/* 0802c2d8 */ LDR R1, [R5] \n\
/* 0802c2da */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c2dc */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802c2de */ LDRSH R1, [R1, R2] \n\
/* 0802c2e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c2e2 */ BL func_0804dcb8 \n\
/* 0802c2e6 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 0802c2e8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802c2ea */ ADD R8, R0 @ Add R0 to R8 \n\
/* 0802c2ec */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802c2ee */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0802c2f0 */ BLE branch_0802c250 \n\
/* 0802c2f2 */ LDR R5, =D_03005380 \n\
/* 0802c2f4 */ LDR R0, [R5] \n\
/* 0802c2f6 */ LDR R4, =D_030055d0 \n\
/* 0802c2f8 */ LDR R1, [R4] \n\
/* 0802c2fa */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802c2fc */ LDRSH R1, [R1, R2] \n\
/* 0802c2fe */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 0802c300 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0802c302 */ BL func_0804d5d4 \n\
/* 0802c306 */ LDR R0, [R5] \n\
/* 0802c308 */ LDR R1, [R4] \n\
/* 0802c30a */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0802c30c */ LDRSH R1, [R1, R2] \n\
/* 0802c30e */ MOVS R2, 0xB8 @ Set R2 to 0xB8 \n\
/* 0802c310 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0802c312 */ BL func_0804d5d4 \n\
/* 0802c316 */ ADD SP, 0x14 \n\
/* 0802c318 */ POP {R3} \n\
/* 0802c31a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802c31c */ POP {R4-R7} \n\
/* 0802c31e */ POP {R0} \n\
/* 0802c320 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
