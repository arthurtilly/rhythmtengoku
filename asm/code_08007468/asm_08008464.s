asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008464 \n\
/* 08008464 */ PUSH {R4-R7, LR} \n\
/* 08008466 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08008468 */ PUSH {R7} \n\
/* 0800846a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800846c */ LDR R4, [R7] \n\
/* 0800846e */ LDR R2, [R7, 0x4] \n\
/* 08008470 */ LDR R5, =0x33333333 \n\
/* 08008472 */ LDR R3, [R7, 0x10] \n\
/* 08008474 */ LDR R0, [R7, 0xC] \n\
/* 08008476 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08008478 */ LDR R0, [R7, 0x8] \n\
/* 0800847a */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0800847c */ BLS branch_08008480 \n\
/* 0800847e */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_08008480: \n\
/* 08008480 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08008482 */ LSRS R1, R1, 0x2 \n\
/* 08008484 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 08008486 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08008488 */ CMP R6, R12 @ Compare R6 and R12 \n\
/* 0800848a */ BCS branch_080084de \n\
 \n\
branch_0800848c: \n\
/* 0800848c */ SUBS R4, 0x10 @ Subtract 0x10 from R4 \n\
/* 0800848e */ SUBS R2, 0x20 @ Subtract 0x20 from R2 \n\
/* 08008490 */ LDR R1, [R4, 0xC] \n\
/* 08008492 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08008494 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 08008496 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08008498 */ STR R0, [R2, 0x18] \n\
/* 0800849a */ LSRS R0, R1, 0x2 \n\
/* 0800849c */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 0800849e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080084a0 */ STR R0, [R2, 0x1C] \n\
/* 080084a2 */ LDR R1, [R4, 0x8] \n\
/* 080084a4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080084a6 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080084a8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080084aa */ STR R0, [R2, 0x10] \n\
/* 080084ac */ LSRS R0, R1, 0x2 \n\
/* 080084ae */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080084b0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080084b2 */ STR R0, [R2, 0x14] \n\
/* 080084b4 */ LDR R1, [R4, 0x4] \n\
/* 080084b6 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080084b8 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080084ba */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080084bc */ STR R0, [R2, 0x8] \n\
/* 080084be */ LSRS R0, R1, 0x2 \n\
/* 080084c0 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080084c2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080084c4 */ STR R0, [R2, 0xC] \n\
/* 080084c6 */ LDR R1, [R4] \n\
/* 080084c8 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080084ca */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080084cc */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080084ce */ STR R0, [R2] \n\
/* 080084d0 */ LSRS R0, R1, 0x2 \n\
/* 080084d2 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080084d4 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080084d6 */ STR R0, [R2, 0x4] \n\
/* 080084d8 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 080084da */ CMP R6, R12 @ Compare R6 and R12 \n\
/* 080084dc */ BCC branch_0800848c \n\
 \n\
branch_080084de: \n\
/* 080084de */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080084e0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080084e2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080084e4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080084e6 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 080084e8 */ BCS branch_08008508 \n\
/* 080084ea */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_080084ec: \n\
/* 080084ec */ SUBS R4, 0x4 @ Subtract 0x4 from R4 \n\
/* 080084ee */ SUBS R2, 0x8 @ Subtract 0x8 from R2 \n\
/* 080084f0 */ LDR R1, [R4] \n\
/* 080084f2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080084f4 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080084f6 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080084f8 */ STR R0, [R2] \n\
/* 080084fa */ LSRS R0, R1, 0x2 \n\
/* 080084fc */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080084fe */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08008500 */ STR R0, [R2, 0x4] \n\
/* 08008502 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08008504 */ CMP R6, R12 @ Compare R6 and R12 \n\
/* 08008506 */ BCC branch_080084ec \n\
 \n\
branch_08008508: \n\
/* 08008508 */ STR R4, [R7] \n\
/* 0800850a */ STR R2, [R7, 0x4] \n\
/* 0800850c */ LDR R0, [R7, 0x8] \n\
/* 0800850e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08008510 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08008512 */ STR R0, [R7, 0x8] \n\
/* 08008514 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08008516 */ BNE branch_08008520 \n\
/* 08008518 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800851a */ B branch_08008522 \n\
\n\
.ltorg \n\
 \n\
branch_08008520: \n\
/* 08008520 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08008522: \n\
/* 08008522 */ POP {R3} \n\
/* 08008524 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08008526 */ POP {R4-R7} \n\
/* 08008528 */ POP {R1} \n\
/* 0800852a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
