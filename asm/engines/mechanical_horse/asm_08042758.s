asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mechanical_horse_cue_spawn \n\
/* 08042758 */ PUSH {R4, R5, LR} \n\
/* 0804275a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804275c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804275e */ STRB R0, [R4] \n\
/* 08042760 */ STRB R2, [R4, 0x1] \n\
/* 08042762 */ BL func_08041940 \n\
/* 08042766 */ STRB R0, [R4, 0x2] \n\
/* 08042768 */ LDR R5, =gCurrentEngineData \n\
/* 0804276a */ LDR R1, [R5] \n\
/* 0804276c */ LDRB R2, [R4, 0x2] \n\
/* 0804276e */ LSLS R0, R2, 0x3 \n\
/* 08042770 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 08042772 */ LSLS R0, R0, 0x2 \n\
/* 08042774 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08042776 */ ADDS R1, 0x3E @ Add 0x3E to R1 \n\
/* 08042778 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804277a */ STRB R0, [R1] \n\
/* 0804277c */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804277e */ BL ticks_to_frames \n\
/* 08042782 */ LDR R2, [R5] \n\
/* 08042784 */ LDRB R3, [R4, 0x2] \n\
/* 08042786 */ LSLS R1, R3, 0x3 \n\
/* 08042788 */ SUBS R1, R1, R3 @ Set R1 to R1 - R3 \n\
/* 0804278a */ LSLS R1, R1, 0x2 \n\
/* 0804278c */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0804278e */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 08042790 */ STRB R0, [R2] \n\
/* 08042792 */ LDR R1, [R5] \n\
/* 08042794 */ LDRB R2, [R4, 0x2] \n\
/* 08042796 */ LSLS R0, R2, 0x3 \n\
/* 08042798 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0804279a */ LSLS R0, R0, 0x2 \n\
/* 0804279c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804279e */ LDRB R0, [R4, 0x1] \n\
/* 080427a0 */ ADDS R1, 0x3F @ Add 0x3F to R1 \n\
/* 080427a2 */ STRB R0, [R1] \n\
/* 080427a4 */ POP {R4, R5} \n\
/* 080427a6 */ POP {R0} \n\
/* 080427a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
