asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_cue_hit_dash \n\
/* 0803a610 */ PUSH {R4-R6, LR} \n\
/* 0803a612 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803a614 */ BL func_0803b034 \n\
/* 0803a618 */ LDR R5, =gCurrentEngineData \n\
/* 0803a61a */ LDR R1, [R5] \n\
/* 0803a61c */ LDR R4, =0x11d \n\
/* 0803a61e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803a620 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803a622 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803a624 */ STRB R0, [R1] \n\
/* 0803a626 */ BL func_0803b9fc \n\
/* 0803a62a */ LDR R0, [R5] \n\
/* 0803a62c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803a62e */ STRB R6, [R0] \n\
/* 0803a630 */ POP {R4-R6} \n\
/* 0803a632 */ POP {R0} \n\
/* 0803a634 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
