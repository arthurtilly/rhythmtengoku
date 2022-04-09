asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800152c \n\
/* 0800152c */ PUSH {R4-R6, LR} \n\
/* 0800152e */ LSLS R0, R0, 0x10 \n\
/* 08001530 */ LSRS R5, R0, 0x10 \n\
/* 08001532 */ LDR R1, =D_03005378 \n\
/* 08001534 */ LDR R2, =D_030046b8 \n\
/* 08001536 */ LDRH R3, [R2] \n\
/* 08001538 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800153a */ EORS R0, R3 @ Set R0 to R0 ^ R3 \n\
/* 0800153c */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 0800153e */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 08001540 */ STRH R4, [R1] \n\
/* 08001542 */ LDR R1, =D_030046b4 \n\
/* 08001544 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08001546 */ STRH R0, [R1] \n\
/* 08001548 */ STRH R5, [R2] \n\
/* 0800154a */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0800154c */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0800154e */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08001550 */ BEQ branch_08001574 \n\
/* 08001552 */ LDR R0, =D_0300537c \n\
/* 08001554 */ STRH R4, [R0] \n\
/* 08001556 */ LDR R1, =D_030000a6 \n\
/* 08001558 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800155a */ STRH R0, [R1] \n\
/* 0800155c */ B branch_080015b0 \n\
\n\
.ltorg \n\
 \n\
branch_08001574: \n\
/* 08001574 */ LDR R4, =D_0300537c \n\
/* 08001576 */ STRH R3, [R4] \n\
/* 08001578 */ LDR R0, =D_030000a4 \n\
/* 0800157a */ LDRH R1, [R0] \n\
/* 0800157c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800157e */ CMP R1, R5 @ Check R1 - R5 \n\
/* 08001580 */ BNE branch_080015a8 \n\
/* 08001582 */ LDR R1, =D_030000a6 \n\
/* 08001584 */ LDRH R0, [R1] \n\
/* 08001586 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08001588 */ STRH R0, [R1] \n\
/* 0800158a */ LSLS R0, R0, 0x10 \n\
/* 0800158c */ LSRS R0, R0, 0x10 \n\
/* 0800158e */ CMP R0, 0xE @ Compare R0 and 0xE \n\
/* 08001590 */ BLS branch_080015ac \n\
/* 08001592 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08001594 */ STRH R0, [R1] \n\
/* 08001596 */ STRH R5, [R4] \n\
/* 08001598 */ B branch_080015ac \n\
\n\
.ltorg \n\
 \n\
branch_080015a8: \n\
/* 080015a8 */ LDR R0, =D_030000a6 \n\
/* 080015aa */ STRH R3, [R0] \n\
 \n\
branch_080015ac: \n\
/* 080015ac */ LDRH R0, [R6] \n\
/* 080015ae */ STRH R0, [R2] \n\
 \n\
branch_080015b0: \n\
/* 080015b0 */ POP {R4-R6} \n\
/* 080015b2 */ POP {R0} \n\
/* 080015b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
