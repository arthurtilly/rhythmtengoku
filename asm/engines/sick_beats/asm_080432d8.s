asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080432d8 \n\
/* 080432d8 */ PUSH {R4-R7, LR} \n\
/* 080432da */ SUB SP, 0xC \n\
/* 080432dc */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080432de */ LDR R0, =gCurrentEngineData \n\
/* 080432e0 */ LDR R5, [R0] \n\
/* 080432e2 */ ADDS R7, R5, 0x4 @ Set R7 to R5 + 0x4 \n\
/* 080432e4 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080432e6 */ BNE branch_08043320 \n\
/* 080432e8 */ LDR R4, =D_03005380 \n\
/* 080432ea */ LDR R0, [R4] \n\
/* 080432ec */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080432ee */ LDRSH R1, [R5, R2] \n\
/* 080432f0 */ LDR R2, =sick_beats_microbe_event_anim \n\
/* 080432f2 */ LDR R2, [R2] \n\
/* 080432f4 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080432f6 */ STR R3, [SP] \n\
/* 080432f8 */ MOVS R3, 0x1B @ Set R3 to 0x1B \n\
/* 080432fa */ STR R3, [SP, 0x4] \n\
/* 080432fc */ STR R6, [SP, 0x8] \n\
/* 080432fe */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08043300 */ BL func_0804d8f8 \n\
/* 08043304 */ LDR R0, [R4] \n\
/* 08043306 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08043308 */ LDRSH R1, [R5, R2] \n\
/* 0804330a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804330c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804330e */ BL func_0804daa8 \n\
/* 08043312 */ B branch_08043350 \n\
\n\
.ltorg \n\
 \n\
branch_08043320: \n\
/* 08043320 */ LDR R4, =D_03005380 \n\
/* 08043322 */ LDR R0, [R4] \n\
/* 08043324 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08043326 */ LDRSH R1, [R5, R2] \n\
/* 08043328 */ LDR R3, =sick_beats_microbe_event_anim \n\
/* 0804332a */ LSLS R2, R6, 0x2 \n\
/* 0804332c */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0804332e */ LDR R2, [R2] \n\
/* 08043330 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08043332 */ STR R3, [SP] \n\
/* 08043334 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08043336 */ STR R3, [SP, 0x4] \n\
/* 08043338 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0804333a */ STR R3, [SP, 0x8] \n\
/* 0804333c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804333e */ BL func_0804d8f8 \n\
/* 08043342 */ LDR R0, [R4] \n\
/* 08043344 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08043346 */ LDRSH R1, [R5, R2] \n\
/* 08043348 */ LDR R2, =func_080432d0 \n\
/* 0804334a */ ADDS R3, R5, 0x7 @ Set R3 to R5 + 0x7 \n\
/* 0804334c */ BL func_0804daa8 \n\
 \n\
branch_08043350: \n\
/* 08043350 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08043352 */ STRB R6, [R7, 0x2] \n\
/* 08043354 */ STRB R0, [R7, 0x3] \n\
/* 08043356 */ LDR R1, =sick_beats_microbe_event_durations \n\
/* 08043358 */ LSLS R0, R6, 0x1 \n\
/* 0804335a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804335c */ LDRH R0, [R0] \n\
/* 0804335e */ BL beats_to_ticks \n\
/* 08043362 */ STRH R0, [R7, 0x4] \n\
/* 08043364 */ ADD SP, 0xC \n\
/* 08043366 */ POP {R4-R7} \n\
/* 08043368 */ POP {R0} \n\
/* 0804336a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
