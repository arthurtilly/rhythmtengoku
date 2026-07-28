asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_cue_spawn \n\
/* 0803f4ec */ PUSH {R4-R7, LR} \n\
/* 0803f4ee */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803f4f0 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0803f4f2 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 0803f4f4 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803f4f6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803f4f8 */ STRB R0, [R4] \n\
/* 0803f4fa */ LSRS R2, R2, 0x4 \n\
/* 0803f4fc */ STRB R2, [R4, 0xA] \n\
/* 0803f4fe */ LDR R5, =gCurrentEngineData \n\
/* 0803f500 */ LDR R1, [R5] \n\
/* 0803f502 */ MOVS R2, 0xDD @ Set R2 to 0xDD \n\
/* 0803f504 */ LSLS R2, R2, 0x2 \n\
/* 0803f506 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803f508 */ LDRH R0, [R0] \n\
/* 0803f50a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803f50c */ STRH R0, [R4, 0x2] \n\
/* 0803f50e */ SUBS R2, 0x2 @ Subtract 0x2 from R2 \n\
/* 0803f510 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803f512 */ LDRH R0, [R0] \n\
/* 0803f514 */ STRH R0, [R4, 0x4] \n\
/* 0803f516 */ LDR R0, =0x371 \n\
/* 0803f518 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803f51a */ LDRB R0, [R1] \n\
/* 0803f51c */ STRB R0, [R4, 0x6] \n\
/* 0803f51e */ LDR R0, [R5] \n\
/* 0803f520 */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0803f522 */ LSLS R1, R1, 0x2 \n\
/* 0803f524 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f526 */ LDRB R0, [R0] \n\
/* 0803f528 */ STRB R0, [R4, 0x7] \n\
/* 0803f52a */ STRB R7, [R4, 0xB] \n\
/* 0803f52c */ LDR R1, [R5] \n\
/* 0803f52e */ MOVS R0, 0xE4 @ Set R0 to 0xE4 \n\
/* 0803f530 */ LSLS R0, R0, 0x2 \n\
/* 0803f532 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0803f534 */ LDRH R0, [R2] \n\
/* 0803f536 */ STRH R0, [R4, 0x8] \n\
/* 0803f538 */ LDR R0, =0xffff \n\
/* 0803f53a */ STRH R0, [R2] \n\
/* 0803f53c */ MOVS R6, 0xE6 @ Set R6 to 0xE6 \n\
/* 0803f53e */ LSLS R6, R6, 0x2 \n\
/* 0803f540 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0803f542 */ LDRB R0, [R1] \n\
/* 0803f544 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f546 */ BEQ branch_0803f564 \n\
/* 0803f548 */ LDRH R0, [R4, 0x4] \n\
/* 0803f54a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f54c */ BEQ branch_0803f564 \n\
/* 0803f54e */ CMP R0, 0x18 @ Compare R0 and 0x18 \n\
/* 0803f550 */ BEQ branch_0803f564 \n\
/* 0803f552 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803f554 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f556 */ BL gameplay_set_cue_input_buttons \n\
/* 0803f55a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803f55c */ STRB R0, [R4, 0xB] \n\
/* 0803f55e */ LDR R0, [R5] \n\
/* 0803f560 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0803f562 */ STRB R7, [R0] \n\
 \n\
branch_0803f564: \n\
/* 0803f564 */ POP {R4-R7} \n\
/* 0803f566 */ POP {R0} \n\
/* 0803f568 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
