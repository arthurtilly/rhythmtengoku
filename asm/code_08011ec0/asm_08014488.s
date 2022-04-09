asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014488 \n\
/* 08014488 */ PUSH {R4-R7, LR} \n\
/* 0801448a */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0801448c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801448e */ PUSH {R6, R7} \n\
/* 08014490 */ SUB SP, 0x4 \n\
/* 08014492 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08014494 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08014496 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08014498 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801449a */ LDR R4, =D_030046a4 \n\
/* 0801449c */ LDR R0, [R4] \n\
/* 0801449e */ MOVS R1, 0xCA @ Set R1 to 0xCA \n\
/* 080144a0 */ LSLS R1, R1, 0x2 \n\
/* 080144a2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080144a4 */ STRB R7, [R0] \n\
/* 080144a6 */ LDR R0, [R4] \n\
/* 080144a8 */ LDR R2, =0x329 \n\
/* 080144aa */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080144ac */ STRB R6, [R0] \n\
/* 080144ae */ MOV R5, SP @ Set R5 to SP \n\
/* 080144b0 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 080144b2 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080144b4 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080144b6 */ MOV R2, SP @ Set R2 to SP \n\
/* 080144b8 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 080144ba */ BL func_0801332c \n\
/* 080144be */ MOV R0, SP @ Set R0 to SP \n\
/* 080144c0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080144c2 */ LDRSH R0, [R0, R1] \n\
/* 080144c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080144c6 */ LDRSH R1, [R5, R2] \n\
/* 080144c8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080144ca */ BL func_080139b0 \n\
/* 080144ce */ LDR R4, [R4] \n\
/* 080144d0 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 080144d2 */ LDRSB R1, [R4, R1] \n\
/* 080144d4 */ CMP R1, R7 @ Check R1 - R7 \n\
/* 080144d6 */ BEQ branch_080144e0 \n\
/* 080144d8 */ LDRB R1, [R4, 0x8] \n\
/* 080144da */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080144dc */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 080144de */ STRB R1, [R4, 0x8] \n\
 \n\
branch_080144e0: \n\
/* 080144e0 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080144e2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080144e4 */ BEQ branch_080144ee \n\
/* 080144e6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080144e8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080144ea */ BL func_08013b98 \n\
 \n\
branch_080144ee: \n\
/* 080144ee */ ADD SP, 0x4 \n\
/* 080144f0 */ POP {R3, R4} \n\
/* 080144f2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080144f4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080144f6 */ POP {R4-R7} \n\
/* 080144f8 */ POP {R1} \n\
/* 080144fa */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
