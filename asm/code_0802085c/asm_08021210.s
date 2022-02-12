asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021210 \n\
/* 08021210 */ PUSH {R4-R7, LR} \n\
/* 08021212 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08021214 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08021216 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08021218 */ PUSH {R5-R7} \n\
/* 0802121a */ SUB SP, 0x14 \n\
/* 0802121c */ LDR R6, =D_030055d0 \n\
/* 0802121e */ LDR R1, [R6] \n\
/* 08021220 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08021222 */ STRB R0, [R1] \n\
/* 08021224 */ BL func_080211e4 \n\
/* 08021228 */ BL func_0800e0ec \n\
/* 0802122c */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0802122e */ STR R4, [SP] \n\
/* 08021230 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 08021232 */ STR R0, [SP, 0x4] \n\
/* 08021234 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021236 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08021238 */ STR R0, [SP, 0x8] \n\
/* 0802123a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802123c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802123e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021240 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021242 */ BL func_0800e0a0 \n\
/* 08021246 */ STR R7, [SP] \n\
/* 08021248 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0802124a */ STR R0, [SP, 0x4] \n\
/* 0802124c */ STR R4, [SP, 0x8] \n\
/* 0802124e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021250 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08021252 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021254 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021256 */ BL func_0800e0a0 \n\
/* 0802125a */ LDR R0, [R6] \n\
/* 0802125c */ LDRB R0, [R0] \n\
/* 0802125e */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08021260 */ BNE branch_0802126e \n\
/* 08021262 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08021264 */ BL func_0800e030 \n\
/* 08021268 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802126a */ BL func_0800e044 \n\
 \n\
branch_0802126e: \n\
/* 0802126e */ LDR R0, [R6] \n\
/* 08021270 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08021272 */ BL func_08021dd8 \n\
/* 08021276 */ LDR R0, [R6] \n\
/* 08021278 */ ADDS R0, 0x36 @ Add 0x36 to R0 \n\
/* 0802127a */ STRB R7, [R0] \n\
/* 0802127c */ BL func_08022050 \n\
/* 08021280 */ LDR R0, [R6] \n\
/* 08021282 */ ADDS R0, 0x34 @ Add 0x34 to R0 \n\
/* 08021284 */ STRB R7, [R0] \n\
/* 08021286 */ LDR R0, [R6] \n\
/* 08021288 */ ADDS R0, 0x35 @ Add 0x35 to R0 \n\
/* 0802128a */ STRB R7, [R0] \n\
/* 0802128c */ LDR R5, =D_03005380 \n\
/* 0802128e */ LDR R0, [R5] \n\
/* 08021290 */ LDR R1, =D_088acf04 \n\
/* 08021292 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08021294 */ STR R2, [SP] \n\
/* 08021296 */ STR R7, [SP, 0x4] \n\
/* 08021298 */ STR R7, [SP, 0x8] \n\
/* 0802129a */ STR R7, [SP, 0xC] \n\
/* 0802129c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802129e */ LSLS R2, R2, 0x8 \n\
/* 080212a0 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080212a2 */ STR R2, [SP, 0x10] \n\
/* 080212a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080212a6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080212a8 */ BL func_0804d160 \n\
/* 080212ac */ LDR R1, [R6] \n\
/* 080212ae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080212b0 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080212b2 */ STRH R0, [R1, 0x20] \n\
/* 080212b4 */ BL func_0800c3b8 \n\
/* 080212b8 */ LSLS R0, R0, 0x10 \n\
/* 080212ba */ LSRS R0, R0, 0x10 \n\
/* 080212bc */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 080212be */ MOVS R2, 0x70 @ Set R2 to 0x70 \n\
/* 080212c0 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 080212c2 */ BL func_0800a204 \n\
/* 080212c6 */ LDR R1, [R6] \n\
/* 080212c8 */ STR R0, [R1, 0x24] \n\
/* 080212ca */ MOVS R1, 0x7C @ Set R1 to 0x7C \n\
/* 080212cc */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 080212ce */ BL func_0800ac68 \n\
/* 080212d2 */ LDR R0, [R6] \n\
/* 080212d4 */ LDR R0, [R0, 0x24] \n\
/* 080212d6 */ MOVS R4, 0x9E @ Set R4 to 0x9E \n\
/* 080212d8 */ LSLS R4, R4, 0x7 \n\
/* 080212da */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080212dc */ BL func_0800aca0 \n\
/* 080212e0 */ LDR R0, [R6] \n\
/* 080212e2 */ LDR R0, [R0, 0x24] \n\
/* 080212e4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080212e6 */ BL func_0800acd8 \n\
/* 080212ea */ LDR R0, [R6] \n\
/* 080212ec */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 080212ee */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080212f0 */ STRB R1, [R0] \n\
/* 080212f2 */ LDR R0, [R5] \n\
/* 080212f4 */ LDR R1, =D_088acf2c \n\
/* 080212f6 */ MOVS R2, 0x70 @ Set R2 to 0x70 \n\
/* 080212f8 */ STR R2, [SP] \n\
/* 080212fa */ STR R4, [SP, 0x4] \n\
/* 080212fc */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080212fe */ STR R2, [SP, 0x8] \n\
/* 08021300 */ STR R7, [SP, 0xC] \n\
/* 08021302 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08021304 */ STR R2, [SP, 0x10] \n\
/* 08021306 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021308 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 0802130a */ BL func_0804d160 \n\
/* 0802130e */ LDR R1, [R6] \n\
/* 08021310 */ STRH R0, [R1, 0x28] \n\
/* 08021312 */ LDR R0, [R5] \n\
/* 08021314 */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 08021316 */ LDRSH R1, [R1, R2] \n\
/* 08021318 */ MOVS R2, 0xAC @ Set R2 to 0xAC \n\
/* 0802131a */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 0802131c */ BL func_0804d5d4 \n\
/* 08021320 */ LDR R0, [R5] \n\
/* 08021322 */ LDR R1, =D_088acf44 \n\
/* 08021324 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08021326 */ STR R2, [SP] \n\
/* 08021328 */ STR R7, [SP, 0x4] \n\
/* 0802132a */ STR R7, [SP, 0x8] \n\
/* 0802132c */ STR R7, [SP, 0xC] \n\
/* 0802132e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08021330 */ STR R2, [SP, 0x10] \n\
/* 08021332 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021334 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021336 */ BL func_0804d160 \n\
/* 0802133a */ LDR R1, [R6] \n\
/* 0802133c */ STRH R0, [R1, 0x2C] \n\
/* 0802133e */ LDR R0, [R5] \n\
/* 08021340 */ LDR R1, =D_088acf54 \n\
/* 08021342 */ MOVS R2, 0x4C @ Set R2 to 0x4C \n\
/* 08021344 */ STR R2, [SP] \n\
/* 08021346 */ STR R7, [SP, 0x4] \n\
/* 08021348 */ STR R7, [SP, 0x8] \n\
/* 0802134a */ STR R7, [SP, 0xC] \n\
/* 0802134c */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802134e */ STR R2, [SP, 0x10] \n\
/* 08021350 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021352 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 08021354 */ BL func_0804d160 \n\
/* 08021358 */ LDR R1, [R6] \n\
/* 0802135a */ STRH R0, [R1, 0x2E] \n\
/* 0802135c */ STRH R7, [R1, 0x30] \n\
/* 0802135e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021360 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08021362 */ BL func_08017338 \n\
/* 08021366 */ LDR R0, [R6] \n\
/* 08021368 */ LDRB R2, [R0] \n\
/* 0802136a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0802136c */ BEQ branch_08021374 \n\
/* 0802136e */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08021370 */ BNE branch_08021374 \n\
/* 08021372 */ STRH R7, [R0, 0x32] \n\
 \n\
branch_08021374: \n\
/* 08021374 */ ADD SP, 0x14 \n\
/* 08021376 */ POP {R3-R5} \n\
/* 08021378 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802137a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802137c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802137e */ POP {R4-R7} \n\
/* 08021380 */ POP {R0} \n\
/* 08021382 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
