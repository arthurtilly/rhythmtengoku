asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a4e0 \n\
/* 0804a4e0 */ PUSH {R4-R7, LR} \n\
/* 0804a4e2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804a4e4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804a4e6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804a4e8 */ PUSH {R5-R7} \n\
/* 0804a4ea */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0804a4ec */ LSLS R3, R1, 0x5 \n\
/* 0804a4ee */ LDR R2, [R0, 0x18] \n\
/* 0804a4f0 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0804a4f2 */ LDRH R0, [R2, 0xA] \n\
/* 0804a4f4 */ LSRS R0, R0, 0x6 \n\
/* 0804a4f6 */ LSLS R0, R0, 0x4 \n\
/* 0804a4f8 */ ADDS R0, 0xF @ Add 0xF to R0 \n\
/* 0804a4fa */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804a4fc */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0804a4fe */ LDR R0, [R2, 0x8] \n\
/* 0804a500 */ LSLS R0, R0, 0xA \n\
/* 0804a502 */ LSRS R0, R0, 0x18 \n\
/* 0804a504 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804a506 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0804a508 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804a50a */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0804a50c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804a50e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804a510 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0804a512 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0804a514 */ LDR R0, =D_030064bc \n\
/* 0804a516 */ LDR R3, [R0] \n\
/* 0804a518 */ LDR R0, =D_03005b8c \n\
/* 0804a51a */ LDRH R0, [R0] \n\
/* 0804a51c */ CMP R7, R0 @ Check R7 - R0 \n\
/* 0804a51e */ BGE branch_0804a5a4 \n\
/* 0804a520 */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_0804a522: \n\
/* 0804a522 */ LDRB R0, [R3] \n\
/* 0804a524 */ LSLS R0, R0, 0x1F \n\
/* 0804a526 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a528 */ BEQ branch_0804a59c \n\
/* 0804a52a */ LDRH R0, [R3, 0x16] \n\
/* 0804a52c */ LSLS R1, R0, 0x11 \n\
/* 0804a52e */ LSRS R0, R1, 0x11 \n\
/* 0804a530 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0804a532 */ BHI branch_0804a59c \n\
/* 0804a534 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0804a536 */ BNE branch_0804a586 \n\
/* 0804a538 */ LDRB R2, [R3, 0x1] \n\
/* 0804a53a */ LDR R4, [R3, 0xC] \n\
/* 0804a53c */ CMP R5, R9 @ Compare R5 and R9 \n\
/* 0804a53e */ BNE branch_0804a55a \n\
/* 0804a540 */ LDRB R1, [R3, 0x17] \n\
/* 0804a542 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804a544 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804a546 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a548 */ BEQ branch_0804a55a \n\
/* 0804a54a */ LSLS R1, R2, 0x19 \n\
/* 0804a54c */ LSRS R1, R1, 0x19 \n\
/* 0804a54e */ LDR R0, [R4, 0x8] \n\
/* 0804a550 */ LSLS R0, R0, 0xA \n\
/* 0804a552 */ LSRS R0, R0, 0x18 \n\
/* 0804a554 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0804a556 */ CMP R1, R8 @ Compare R1 and R8 \n\
/* 0804a558 */ BHI branch_0804a59c \n\
 \n\
branch_0804a55a: \n\
/* 0804a55a */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0804a55c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804a55e */ BGE branch_0804a570 \n\
/* 0804a560 */ LSLS R1, R2, 0x19 \n\
/* 0804a562 */ LSRS R1, R1, 0x19 \n\
/* 0804a564 */ LDR R0, [R4, 0x8] \n\
/* 0804a566 */ B branch_0804a592 \n\
\n\
.ltorg \n\
 \n\
branch_0804a570: \n\
/* 0804a570 */ LSLS R1, R2, 0x19 \n\
/* 0804a572 */ LSRS R1, R1, 0x19 \n\
/* 0804a574 */ LDR R0, [R4, 0x8] \n\
/* 0804a576 */ LSLS R0, R0, 0xA \n\
/* 0804a578 */ LSRS R0, R0, 0x18 \n\
/* 0804a57a */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0804a57c */ CMP R6, R1 @ Check R6 - R1 \n\
/* 0804a57e */ BLS branch_0804a59c \n\
/* 0804a580 */ MOV R12, R7 @ Set R12 to R7 \n\
/* 0804a582 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0804a584 */ B branch_0804a59c \n\
 \n\
branch_0804a586: \n\
/* 0804a586 */ LSRS R5, R1, 0x11 \n\
/* 0804a588 */ LDRB R1, [R3, 0x1] \n\
/* 0804a58a */ LSLS R1, R1, 0x19 \n\
/* 0804a58c */ LSRS R1, R1, 0x19 \n\
/* 0804a58e */ LDR R0, [R3, 0xC] \n\
/* 0804a590 */ LDR R0, [R0, 0x8] \n\
 \n\
branch_0804a592: \n\
/* 0804a592 */ LSLS R0, R0, 0xA \n\
/* 0804a594 */ LSRS R0, R0, 0x18 \n\
/* 0804a596 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0804a598 */ MULS R6, R0 @ Multiply R6 by R0 \n\
/* 0804a59a */ MOV R12, R7 @ Set R12 to R7 \n\
 \n\
branch_0804a59c: \n\
/* 0804a59c */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0804a59e */ ADDS R3, 0x20 @ Add 0x20 to R3 \n\
/* 0804a5a0 */ CMP R7, R10 @ Compare R7 and R10 \n\
/* 0804a5a2 */ BLT branch_0804a522 \n\
 \n\
branch_0804a5a4: \n\
/* 0804a5a4 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0804a5a6 */ POP {R3-R5} \n\
/* 0804a5a8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804a5aa */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804a5ac */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804a5ae */ POP {R4-R7} \n\
/* 0804a5b0 */ POP {R1} \n\
/* 0804a5b2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
