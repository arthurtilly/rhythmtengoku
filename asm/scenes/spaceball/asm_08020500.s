asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020500 \n\
/* 08020500 */ PUSH {R4, LR} \n\
/* 08020502 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08020504 */ LDR R0, =D_030055d0 \n\
/* 08020506 */ LDR R0, [R0] \n\
/* 08020508 */ LDR R0, [R0, 0x4] \n\
/* 0802050a */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802050c */ LDR R3, [R4, 0x18] \n\
/* 0802050e */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08020510 */ BLT branch_0802055c \n\
/* 08020512 */ LDR R2, [R4, 0x14] \n\
/* 08020514 */ ASRS R1, R2, 0x8 \n\
/* 08020516 */ MOVS R0, 0xFA @ Set R0 to 0xFA \n\
/* 08020518 */ LSLS R0, R0, 0x2 \n\
/* 0802051a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0802051c */ BGT branch_0802055c \n\
/* 0802051e */ LDR R1, [R4, 0x10] \n\
/* 08020520 */ LDR R0, [R4, 0x20] \n\
/* 08020522 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08020524 */ STR R1, [R4, 0x10] \n\
/* 08020526 */ LDR R0, [R4, 0x24] \n\
/* 08020528 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0802052a */ STR R2, [R4, 0x14] \n\
/* 0802052c */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802052e */ STR R0, [R4, 0x24] \n\
/* 08020530 */ SUBS R3, 0x4 @ Subtract 0x4 from R3 \n\
/* 08020532 */ STR R3, [R4, 0x18] \n\
/* 08020534 */ LDR R0, [R4, 0x4] \n\
/* 08020536 */ SUBS R1, 0x78 @ Subtract 0x78 from R1 \n\
/* 08020538 */ ASRS R2, R2, 0x8 \n\
/* 0802053a */ SUBS R2, 0x50 @ Subtract 0x50 from R2 \n\
/* 0802053c */ BL func_0801fd70 \n\
/* 08020540 */ LDR R0, [R4, 0x4] \n\
/* 08020542 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08020544 */ LDRSH R1, [R4, R2] \n\
/* 08020546 */ BL func_0800fe94 \n\
/* 0802054a */ LDRH R0, [R4, 0xE] \n\
/* 0802054c */ LDRH R1, [R4, 0xC] \n\
/* 0802054e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020550 */ STRH R0, [R4, 0xC] \n\
/* 08020552 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020554 */ B branch_0802055e \n\
\n\
.ltorg \n\
 \n\
branch_0802055c: \n\
/* 0802055c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802055e: \n\
/* 0802055e */ POP {R4} \n\
/* 08020560 */ POP {R1} \n\
/* 08020562 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
