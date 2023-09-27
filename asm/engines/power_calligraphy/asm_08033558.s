asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033558 \n\
/* 08033558 */ PUSH {R4, LR} \n\
/* 0803355a */ SUB SP, 0x8 \n\
/* 0803355c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803355e */ BEQ branch_08033594 \n\
/* 08033560 */ BL get_current_mem_id \n\
/* 08033564 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08033566 */ LSLS R4, R4, 0x10 \n\
/* 08033568 */ LSRS R4, R4, 0x10 \n\
/* 0803356a */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803356c */ BL ticks_to_frames \n\
/* 08033570 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08033572 */ LSLS R1, R1, 0x18 \n\
/* 08033574 */ LSRS R1, R1, 0x18 \n\
/* 08033576 */ LDR R3, =(power_calligraphy_pal + 0x160) \n\
/* 08033578 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803357a */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0803357c */ STR R0, [SP] \n\
/* 0803357e */ LDR R0, =(D_03004b10 + 0x3b4) \n\
/* 08033580 */ STR R0, [SP, 0x4] \n\
/* 08033582 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08033584 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08033586 */ BL func_08001fe0 \n\
/* 0803358a */ B branch_080335d0 \n\
\n\
.ltorg \n\
 \n\
branch_08033594: \n\
/* 08033594 */ LDR R0, =D_03005380 \n\
/* 08033596 */ LDR R0, [R0] \n\
/* 08033598 */ LDR R1, =gCurrentEngineData \n\
/* 0803359a */ LDR R1, [R1] \n\
/* 0803359c */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 0803359e */ LDRSH R1, [R1, R2] \n\
/* 080335a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080335a2 */ BL func_0804cebc \n\
/* 080335a6 */ BL get_current_mem_id \n\
/* 080335aa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080335ac */ LSLS R4, R4, 0x10 \n\
/* 080335ae */ LSRS R4, R4, 0x10 \n\
/* 080335b0 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 080335b2 */ BL ticks_to_frames \n\
/* 080335b6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080335b8 */ LSLS R1, R1, 0x18 \n\
/* 080335ba */ LSRS R1, R1, 0x18 \n\
/* 080335bc */ LDR R3, =(power_calligraphy_pal + 0x1a0) \n\
/* 080335be */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080335c0 */ SUBS R0, 0x40 @ Subtract 0x40 from R0 \n\
/* 080335c2 */ STR R0, [SP] \n\
/* 080335c4 */ LDR R0, =(D_03004b10 + 0x3b4) \n\
/* 080335c6 */ STR R0, [SP, 0x4] \n\
/* 080335c8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080335ca */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080335cc */ BL func_08001fe0 \n\
 \n\
branch_080335d0: \n\
/* 080335d0 */ ADD SP, 0x8 \n\
/* 080335d2 */ POP {R4} \n\
/* 080335d4 */ POP {R0} \n\
/* 080335d6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
