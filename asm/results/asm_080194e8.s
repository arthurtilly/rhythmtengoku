asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080194e8 \n\
/* 080194e8 */ PUSH {R4-R7, LR} \n\
/* 080194ea */ SUB SP, 0x4 \n\
/* 080194ec */ LDR R1, =D_089d7980 \n\
/* 080194ee */ LDR R0, [R1] \n\
/* 080194f0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080194f2 */ ADDS R4, 0x50 @ Add 0x50 to R4 \n\
/* 080194f4 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 080194f6 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 080194f8 */ MOVS R6, 0x8 @ Set R6 to 0x8 \n\
/* 080194fa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_080194fc: \n\
/* 080194fc */ LDR R0, [R2] \n\
/* 080194fe */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08019500 */ STR R2, [SP] \n\
/* 08019502 */ BL func_08019480 \n\
/* 08019506 */ LDR R2, [SP] \n\
/* 08019508 */ LDR R1, [R2] \n\
/* 0801950a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0801950c */ LDRH R0, [R1, 0x8] \n\
/* 0801950e */ LDRH R3, [R4] \n\
/* 08019510 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08019512 */ STRH R0, [R4] \n\
/* 08019514 */ LDRH R0, [R1, 0xA] \n\
/* 08019516 */ LDRH R3, [R4, 0x2] \n\
/* 08019518 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801951a */ STRH R0, [R4, 0x2] \n\
/* 0801951c */ LDRH R0, [R1, 0xC] \n\
/* 0801951e */ LDRH R3, [R4, 0x4] \n\
/* 08019520 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08019522 */ STRH R0, [R4, 0x4] \n\
/* 08019524 */ LDRH R0, [R1, 0xE] \n\
/* 08019526 */ LDRH R3, [R4, 0x6] \n\
/* 08019528 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801952a */ STRH R0, [R4, 0x6] \n\
/* 0801952c */ LDRH R0, [R1, 0x10] \n\
/* 0801952e */ LDRH R1, [R4, 0x8] \n\
/* 08019530 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08019532 */ STRH R0, [R4, 0x8] \n\
/* 08019534 */ ADDS R6, 0x18 @ Add 0x18 to R6 \n\
/* 08019536 */ ADDS R5, 0x18 @ Add 0x18 to R5 \n\
/* 08019538 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801953a */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0801953c */ BLS branch_080194fc \n\
/* 0801953e */ LDR R0, =D_089d7980 \n\
/* 08019540 */ LDR R0, [R0] \n\
/* 08019542 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08019544 */ BL func_08019480 \n\
/* 08019548 */ ADD SP, 0x4 \n\
/* 0801954a */ POP {R4-R7} \n\
/* 0801954c */ POP {R0} \n\
/* 0801954e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
