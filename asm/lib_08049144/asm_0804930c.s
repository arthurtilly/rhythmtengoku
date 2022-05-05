asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804930c \n\
/* 0804930c */ PUSH {R4-R6, LR} \n\
/* 0804930e */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 08049310 */ LDR R1, =D_03005b88 \n\
/* 08049312 */ LSLS R0, R0, 0x5 \n\
/* 08049314 */ LDR R1, [R1] \n\
/* 08049316 */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 08049318 */ LDRB R1, [R6] \n\
/* 0804931a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804931c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804931e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08049320 */ STRB R0, [R6] \n\
/* 08049322 */ LDR R0, [R3, 0x14] \n\
/* 08049324 */ STR R0, [R6, 0x4] \n\
/* 08049326 */ LDR R0, [R3] \n\
/* 08049328 */ LSRS R0, R0, 0x2 \n\
/* 0804932a */ STR R0, [R6, 0x8] \n\
/* 0804932c */ LDR R1, [R3, 0xC] \n\
/* 0804932e */ LDR R0, [R3, 0x10] \n\
/* 08049330 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08049332 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049334 */ BEQ branch_08049344 \n\
/* 08049336 */ LSLS R0, R1, 0xE \n\
/* 08049338 */ STR R0, [R6, 0x10] \n\
/* 0804933a */ LDR R0, [R3, 0x10] \n\
/* 0804933c */ B branch_0804934c \n\
\n\
.ltorg \n\
 \n\
branch_08049344: \n\
/* 08049344 */ LDR R0, [R3] \n\
/* 08049346 */ LSLS R0, R0, 0xE \n\
/* 08049348 */ STR R0, [R6, 0x10] \n\
/* 0804934a */ LDR R0, [R3] \n\
 \n\
branch_0804934c: \n\
/* 0804934c */ LSLS R0, R0, 0xE \n\
/* 0804934e */ STR R0, [R6, 0x14] \n\
/* 08049350 */ LDR R1, =D_08a86008 \n\
/* 08049352 */ LDR R0, [R3, 0x8] \n\
/* 08049354 */ LSLS R0, R0, 0x1 \n\
/* 08049356 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08049358 */ LDRH R1, [R0] \n\
/* 0804935a */ LDR R0, =D_03005b94 \n\
/* 0804935c */ LDR R0, [R0] \n\
/* 0804935e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08049360 */ MULS R2, R1 @ Multiply R2 by R1 \n\
/* 08049362 */ LDR R0, [R3, 0x4] \n\
/* 08049364 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08049366 */ LSRS R5, R0, 0x4 \n\
/* 08049368 */ LSLS R4, R1, 0x1C \n\
/* 0804936a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804936c */ ORRS R1, R4 @ Set R1 to R1 | R4 \n\
/* 0804936e */ LSLS R0, R0, 0x1C \n\
/* 08049370 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08049372 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08049374 */ ADCS R1, R3 @ Add R3 to R1 with carry \n\
/* 08049376 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08049378 */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0804937a */ ASRS R5, R4, 0x1F \n\
/* 0804937c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804937e */ ADCS R1, R5 @ Add R5 to R1 with carry \n\
/* 08049380 */ BL __udivmoddi4 \n\
/* 08049384 */ STR R0, [R6, 0x1C] \n\
/* 08049386 */ POP {R4-R6} \n\
/* 08049388 */ POP {R0} \n\
/* 0804938a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
