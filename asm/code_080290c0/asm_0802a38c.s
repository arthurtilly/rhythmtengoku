asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a38c \n\
/* 0802a38c */ PUSH {R4-R7, LR} \n\
/* 0802a38e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802a390 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802a392 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802a394 */ PUSH {R5-R7} \n\
/* 0802a396 */ SUB SP, 0x18 \n\
/* 0802a398 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0802a39a */ LDR R0, =D_030055d0 \n\
/* 0802a39c */ LDR R0, [R0] \n\
/* 0802a39e */ MOVS R1, 0xD6 @ Set R1 to 0xD6 \n\
/* 0802a3a0 */ LSLS R1, R1, 0x2 \n\
/* 0802a3a2 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802a3a4 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802a3a6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802a3a8 */ STRB R2, [R1, 0x1C] \n\
/* 0802a3aa */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802a3ac */ CMP R7, R9 @ Compare R7 and R9 \n\
/* 0802a3ae */ BCS branch_0802a450 \n\
/* 0802a3b0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a3b2 */ STR R3, [SP, 0x14] \n\
/* 0802a3b4 */ MOV R10, R3 @ Set R10 to R3 \n\
 \n\
branch_0802a3b6: \n\
/* 0802a3b6 */ LSLS R6, R7, 0x1 \n\
/* 0802a3b8 */ LDR R1, [SP, 0x14] \n\
/* 0802a3ba */ LSRS R0, R1, 0x10 \n\
/* 0802a3bc */ BL func_08001980 \n\
/* 0802a3c0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802a3c2 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802a3c4 */ LSRS R0, R2, 0x1 \n\
/* 0802a3c6 */ SUBS R0, 0x40 @ Subtract 0x40 from R0 \n\
/* 0802a3c8 */ SUBS R5, R5, R0 @ Set R5 to R5 - R0 \n\
/* 0802a3ca */ SUBS R5, R5, R7 @ Set R5 to R5 - R7 \n\
/* 0802a3cc */ LSLS R5, R5, 0x10 \n\
/* 0802a3ce */ LSRS R5, R5, 0x10 \n\
/* 0802a3d0 */ MOVS R4, 0x78 @ Set R4 to 0x78 \n\
/* 0802a3d2 */ SUBS R4, R4, R6 @ Set R4 to R4 - R6 \n\
/* 0802a3d4 */ LSLS R4, R4, 0x10 \n\
/* 0802a3d6 */ LSRS R4, R4, 0x10 \n\
/* 0802a3d8 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0802a3da */ BL func_08001980 \n\
/* 0802a3de */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802a3e0 */ LSLS R2, R2, 0x18 \n\
/* 0802a3e2 */ ASRS R2, R2, 0x18 \n\
/* 0802a3e4 */ LDR R3, =D_03005380 \n\
/* 0802a3e6 */ LDR R0, [R3] \n\
/* 0802a3e8 */ LSLS R5, R5, 0x10 \n\
/* 0802a3ea */ ASRS R5, R5, 0x10 \n\
/* 0802a3ec */ LSLS R4, R4, 0x10 \n\
/* 0802a3ee */ ASRS R4, R4, 0x10 \n\
/* 0802a3f0 */ STR R4, [SP] \n\
/* 0802a3f2 */ LDR R3, =0x000047ff \n\
/* 0802a3f4 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0802a3f6 */ SUBS R1, R1, R7 @ Set R1 to R1 - R7 \n\
/* 0802a3f8 */ LSLS R1, R1, 0x10 \n\
/* 0802a3fa */ LSRS R1, R1, 0x10 \n\
/* 0802a3fc */ STR R1, [SP, 0x4] \n\
/* 0802a3fe */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802a400 */ STR R1, [SP, 0x8] \n\
/* 0802a402 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802a404 */ STR R1, [SP, 0xC] \n\
/* 0802a406 */ STR R1, [SP, 0x10] \n\
/* 0802a408 */ LDR R1, =D_088c9d88 \n\
/* 0802a40a */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0802a40c */ BL func_0804d160 \n\
/* 0802a410 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802a412 */ LSLS R4, R4, 0x10 \n\
/* 0802a414 */ LSRS R4, R4, 0x10 \n\
/* 0802a416 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802a418 */ ADDS R0, 0x1E @ Add 0x1E to R0 \n\
/* 0802a41a */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802a41c */ STRH R4, [R0] \n\
/* 0802a41e */ LDR R0, =D_03005380 \n\
/* 0802a420 */ LDR R5, [R0] \n\
/* 0802a422 */ LSLS R4, R4, 0x10 \n\
/* 0802a424 */ ASRS R4, R4, 0x10 \n\
/* 0802a426 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0802a428 */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 0802a42a */ BL func_0804f150 \n\
/* 0802a42e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802a430 */ LSLS R2, R2, 0x18 \n\
/* 0802a432 */ ASRS R2, R2, 0x18 \n\
/* 0802a434 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802a436 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802a438 */ BL func_0804d8c4 \n\
/* 0802a43c */ LDR R1, [SP, 0x14] \n\
/* 0802a43e */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0802a440 */ LSLS R2, R2, 0xA \n\
/* 0802a442 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802a444 */ STR R1, [SP, 0x14] \n\
/* 0802a446 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0802a448 */ ADD R10, R3 @ Add R3 to R10 \n\
/* 0802a44a */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0802a44c */ CMP R7, R9 @ Compare R7 and R9 \n\
/* 0802a44e */ BCC branch_0802a3b6 \n\
 \n\
branch_0802a450: \n\
/* 0802a450 */ LDR R0, =D_03005380 \n\
/* 0802a452 */ LDR R0, [R0] \n\
/* 0802a454 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802a456 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802a458 */ LDRSH R1, [R2, R3] \n\
/* 0802a45a */ LDR R2, =D_088c9a98 \n\
/* 0802a45c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a45e */ STR R3, [SP] \n\
/* 0802a460 */ STR R3, [SP, 0x4] \n\
/* 0802a462 */ STR R3, [SP, 0x8] \n\
/* 0802a464 */ BL func_0804d8f8 \n\
/* 0802a468 */ ADD SP, 0x18 \n\
/* 0802a46a */ POP {R3-R5} \n\
/* 0802a46c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802a46e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802a470 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802a472 */ POP {R4-R7} \n\
/* 0802a474 */ POP {R0} \n\
/* 0802a476 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
