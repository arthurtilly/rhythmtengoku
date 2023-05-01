asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d96c \n\
/* 0802d96c */ PUSH {R4, LR} \n\
/* 0802d96e */ LDR R0, =gCurrentEngineData \n\
/* 0802d970 */ LDR R4, [R0] \n\
/* 0802d972 */ MOVS R0, 0xF1 @ Set R0 to 0xF1 \n\
/* 0802d974 */ LSLS R0, R0, 0x2 \n\
/* 0802d976 */ ADDS R2, R4, R0 @ Set R2 to R4 + R0 \n\
/* 0802d978 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0802d97a */ STR R0, [R2] \n\
/* 0802d97c */ LDR R1, =D_03004b10 \n\
/* 0802d97e */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0802d980 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 0802d982 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d984 */ LDR R0, =0x00003a44 \n\
/* 0802d986 */ STRH R0, [R1] \n\
/* 0802d988 */ LDR R2, [R2] \n\
/* 0802d98a */ LSLS R1, R2, 0x8 \n\
/* 0802d98c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802d98e */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0802d990 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0802d992 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0802d994 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 0802d996 */ STRH R1, [R0] \n\
/* 0802d998 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0802d99a */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0802d99c */ STRH R0, [R2, 0x3C] \n\
/* 0802d99e */ STRH R0, [R2, 0x3E] \n\
/* 0802d9a0 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0802d9a2 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 0802d9a4 */ LDR R0, =0x000080a0 \n\
/* 0802d9a6 */ STRH R0, [R1] \n\
/* 0802d9a8 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0802d9aa */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0802d9ac */ STRH R0, [R1] \n\
/* 0802d9ae */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0802d9b0 */ LDR R0, =0x00003337 \n\
/* 0802d9b2 */ STRH R0, [R1] \n\
/* 0802d9b4 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0802d9b6 */ LDR R0, =0x00002033 \n\
/* 0802d9b8 */ STRH R0, [R1] \n\
/* 0802d9ba */ LDRH R1, [R2] \n\
/* 0802d9bc */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802d9be */ LSLS R2, R2, 0x6 \n\
/* 0802d9c0 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802d9c2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802d9c4 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0802d9c6 */ STRH R0, [R1] \n\
/* 0802d9c8 */ MOVS R2, 0xFA @ Set R2 to 0xFA \n\
/* 0802d9ca */ LSLS R2, R2, 0x1 \n\
/* 0802d9cc */ ADDS R0, R4, R2 @ Set R0 to R4 + R2 \n\
/* 0802d9ce */ STR R3, [R0] \n\
/* 0802d9d0 */ MOVS R1, 0xFC @ Set R1 to 0xFC \n\
/* 0802d9d2 */ LSLS R1, R1, 0x1 \n\
/* 0802d9d4 */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 0802d9d6 */ STR R3, [R0] \n\
/* 0802d9d8 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 0802d9da */ ADDS R0, R4, R2 @ Set R0 to R4 + R2 \n\
/* 0802d9dc */ STR R3, [R0] \n\
/* 0802d9de */ POP {R4} \n\
/* 0802d9e0 */ POP {R0} \n\
/* 0802d9e2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
