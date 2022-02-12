asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021554 \n\
/* 08021554 */ PUSH {R4, LR} \n\
/* 08021556 */ LDR R4, =D_030055d0 \n\
/* 08021558 */ LDR R2, [R4] \n\
/* 0802155a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802155c */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 0802155e */ LDRB R0, [R0] \n\
/* 08021560 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021562 */ BEQ branch_08021594 \n\
/* 08021564 */ LDR R0, =D_03004afc \n\
/* 08021566 */ LDRH R1, [R0] \n\
/* 08021568 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802156a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802156c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802156e */ BEQ branch_08021594 \n\
/* 08021570 */ LDR R0, =D_03005380 \n\
/* 08021572 */ LDR R0, [R0] \n\
/* 08021574 */ MOVS R3, 0x28 @ Set R3 to 0x28 \n\
/* 08021576 */ LDRSH R1, [R2, R3] \n\
/* 08021578 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802157a */ BL func_0804d770 \n\
/* 0802157e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021580 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08021582 */ BL func_08017338 \n\
/* 08021586 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08021588 */ BL func_0800bd04 \n\
/* 0802158c */ LDR R0, [R4] \n\
/* 0802158e */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 08021590 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08021592 */ STRB R1, [R0] \n\
 \n\
branch_08021594: \n\
/* 08021594 */ LDR R4, =D_030055d0 \n\
/* 08021596 */ LDR R0, [R4] \n\
/* 08021598 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 0802159a */ BL func_08021e58 \n\
/* 0802159e */ LDR R0, [R4] \n\
/* 080215a0 */ LDRB R0, [R0] \n\
/* 080215a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080215a4 */ BEQ branch_080215ae \n\
/* 080215a6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080215a8 */ BNE branch_080215ae \n\
/* 080215aa */ BL func_080213e4 \n\
 \n\
branch_080215ae: \n\
/* 080215ae */ LDR R0, =D_030055d0 \n\
/* 080215b0 */ LDR R0, [R0] \n\
/* 080215b2 */ LDR R0, [R0, 0x24] \n\
/* 080215b4 */ BL func_0800a914 \n\
/* 080215b8 */ POP {R4} \n\
/* 080215ba */ POP {R0} \n\
/* 080215bc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
