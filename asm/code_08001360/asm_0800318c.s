asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800318c \n\
/* 0800318c */ PUSH {R4-R7, LR} \n\
/* 0800318e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08003190 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08003192 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08003194 */ PUSH {R5-R7} \n\
/* 08003196 */ SUB SP, 0xC \n\
/* 08003198 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800319a */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800319c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800319e */ MOV R9, R3 @ Set R9 to R3 \n\
/* 080031a0 */ LDR R0, [SP, 0x34] \n\
/* 080031a2 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080031a4 */ LDR R1, [SP, 0x30] \n\
/* 080031a6 */ ADDS R0, R6, R1 @ Set R0 to R6 + R1 \n\
/* 080031a8 */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 080031aa */ BLS branch_080031e2 \n\
/* 080031ac */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 080031ae */ SUBS R4, R4, R6 @ Set R4 to R4 - R6 \n\
/* 080031b0 */ SUBS R5, R1, R4 @ Set R5 to R1 - R4 \n\
/* 080031b2 */ LDR R2, [SP, 0x2C] \n\
/* 080031b4 */ STR R2, [SP] \n\
/* 080031b6 */ STR R4, [SP, 0x4] \n\
/* 080031b8 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080031ba */ STR R3, [SP, 0x8] \n\
/* 080031bc */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080031be */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080031c0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080031c2 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080031c4 */ BL func_0800318c \n\
/* 080031c8 */ ADD R4, R9 @ Add R9 to R4 \n\
/* 080031ca */ LDR R0, [SP, 0x2C] \n\
/* 080031cc */ STR R0, [SP] \n\
/* 080031ce */ STR R5, [SP, 0x4] \n\
/* 080031d0 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080031d2 */ STR R1, [SP, 0x8] \n\
/* 080031d4 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080031d6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080031d8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080031da */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080031dc */ BL func_0800318c \n\
/* 080031e0 */ B branch_08003268 \n\
 \n\
branch_080031e2: \n\
/* 080031e2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080031e4 */ ADD R0, R10 @ Add R10 to R0 \n\
/* 080031e6 */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 080031e8 */ BLS branch_08003222 \n\
/* 080031ea */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 080031ec */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080031ee */ SUBS R4, R4, R2 @ Set R4 to R4 - R2 \n\
/* 080031f0 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080031f2 */ SUBS R5, R3, R4 @ Set R5 to R3 - R4 \n\
/* 080031f4 */ LDR R0, [SP, 0x2C] \n\
/* 080031f6 */ STR R0, [SP] \n\
/* 080031f8 */ LDR R1, [SP, 0x30] \n\
/* 080031fa */ STR R1, [SP, 0x4] \n\
/* 080031fc */ STR R4, [SP, 0x8] \n\
/* 080031fe */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08003200 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08003202 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08003204 */ BL func_0800318c \n\
/* 08003208 */ LDR R2, [SP, 0x2C] \n\
/* 0800320a */ ADDS R4, R2, R4 @ Set R4 to R2 + R4 \n\
/* 0800320c */ STR R4, [SP] \n\
/* 0800320e */ LDR R3, [SP, 0x30] \n\
/* 08003210 */ STR R3, [SP, 0x4] \n\
/* 08003212 */ STR R5, [SP, 0x8] \n\
/* 08003214 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08003216 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08003218 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800321a */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0800321c */ BL func_0800318c \n\
/* 08003220 */ B branch_08003268 \n\
 \n\
branch_08003222: \n\
/* 08003222 */ LSLS R1, R6, 0x1 \n\
/* 08003224 */ LDR R0, [R7, 0xC] \n\
/* 08003226 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08003228 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800322a */ LSLS R1, R2, 0x6 \n\
/* 0800322c */ ADDS R6, R0, R1 @ Set R6 to R0 + R1 \n\
/* 0800322e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08003230 */ LSLS R0, R3, 0x1 \n\
/* 08003232 */ LDR R1, [R7, 0x44] \n\
/* 08003234 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08003236 */ LDRB R0, [R7, 0x14] \n\
/* 08003238 */ LDR R2, [SP, 0x2C] \n\
/* 0800323a */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0800323c */ LSLS R0, R0, 0x1 \n\
/* 0800323e */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08003240 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08003242 */ CMP R5, R10 @ Compare R5 and R10 \n\
/* 08003244 */ BCS branch_08003268 \n\
 \n\
branch_08003246: \n\
/* 08003246 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08003248 */ LSLS R0, R0, 0x1 \n\
/* 0800324a */ STR R0, [SP] \n\
/* 0800324c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800324e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08003250 */ LDR R3, [SP, 0x30] \n\
/* 08003252 */ LSLS R2, R3, 0x1 \n\
/* 08003254 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08003256 */ BL dma3_set \n\
/* 0800325a */ ADDS R6, 0x40 @ Add 0x40 to R6 \n\
/* 0800325c */ LDRB R0, [R7, 0x14] \n\
/* 0800325e */ LSLS R0, R0, 0x1 \n\
/* 08003260 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08003262 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08003264 */ CMP R5, R10 @ Compare R5 and R10 \n\
/* 08003266 */ BCC branch_08003246 \n\
 \n\
branch_08003268: \n\
/* 08003268 */ ADD SP, 0xC \n\
/* 0800326a */ POP {R3-R5} \n\
/* 0800326c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800326e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08003270 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08003272 */ POP {R4-R7} \n\
/* 08003274 */ POP {R0} \n\
/* 08003276 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
