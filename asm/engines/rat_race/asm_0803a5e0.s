asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_cue_hit_stop \n\
/* 0803a5e0 */ PUSH {R4-R6, LR} \n\
/* 0803a5e2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803a5e4 */ BL func_0803b034 \n\
/* 0803a5e8 */ LDR R5, =gCurrentEngineData \n\
/* 0803a5ea */ LDR R1, [R5] \n\
/* 0803a5ec */ LDR R4, =0x11d \n\
/* 0803a5ee */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803a5f0 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803a5f2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803a5f4 */ STRB R0, [R1] \n\
/* 0803a5f6 */ BL func_0803b924 \n\
/* 0803a5fa */ LDR R0, [R5] \n\
/* 0803a5fc */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803a5fe */ STRB R6, [R0] \n\
/* 0803a600 */ POP {R4-R6} \n\
/* 0803a602 */ POP {R0} \n\
/* 0803a604 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
