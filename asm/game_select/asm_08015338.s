asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015338 \n\
/* 08015338 */ PUSH {R4-R6, LR} \n\
/* 0801533a */ LDR R0, =D_030046a8 \n\
/* 0801533c */ LDR R0, [R0] \n\
/* 0801533e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08015340 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08015342 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015344 */ LDR R3, =0xffff \n\
/* 08015346 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
 \n\
branch_08015348: \n\
/* 08015348 */ LDRH R1, [R0] \n\
/* 0801534a */ CMP R1, R3 @ Check R1 - R3 \n\
/* 0801534c */ BEQ branch_08015352 \n\
/* 0801534e */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08015350 */ ADDS R6, R6, R1 @ Set R6 to R6 + R1 \n\
 \n\
branch_08015352: \n\
/* 08015352 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 08015354 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08015356 */ CMP R2, 0x36 @ Compare R2 and 0x36 \n\
/* 08015358 */ BLS branch_08015348 \n\
/* 0801535a */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801535c */ BEQ branch_080153a0 \n\
/* 0801535e */ SUBS R0, R5, 0x3 @ Set R0 to R5 - 0x3 \n\
/* 08015360 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08015362 */ MOVS R2, 0x19 @ Set R2 to 0x19 \n\
/* 08015364 */ BL clamp_int32 \n\
/* 08015368 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801536a */ LSLS R0, R1, 0x3 \n\
/* 0801536c */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0801536e */ LSLS R0, R0, 0x8 \n\
/* 08015370 */ MOVS R1, 0xFA @ Set R1 to 0xFA \n\
/* 08015372 */ BL __divsi3 \n\
/* 08015376 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08015378 */ ADDS R4, 0xB3 @ Add 0xB3 to R4 \n\
/* 0801537a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801537c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801537e */ BL __udivsi3 \n\
/* 08015382 */ ADDS R0, 0x5 @ Add 0x5 to R0 \n\
/* 08015384 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08015386 */ BL __udivsi3 \n\
/* 0801538a */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 0801538c */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 0801538e */ BL clamp_int32 \n\
/* 08015392 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08015394 */ LSRS R0, R0, 0x8 \n\
/* 08015396 */ B branch_080153a2 \n\
\n\
.ltorg \n\
 \n\
branch_080153a0: \n\
/* 080153a0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080153a2: \n\
/* 080153a2 */ POP {R4-R6} \n\
/* 080153a4 */ POP {R1} \n\
/* 080153a6 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
