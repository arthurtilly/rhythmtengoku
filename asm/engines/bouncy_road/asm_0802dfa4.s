asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802dfa4 \n\
/* 0802dfa4 */ PUSH {LR} \n\
/* 0802dfa6 */ LDR R0, =s_change_ball_seqData \n\
/* 0802dfa8 */ BL stop_sound \n\
/* 0802dfac */ LDR R0, =gCurrentEngineData \n\
/* 0802dfae */ LDR R0, [R0] \n\
/* 0802dfb0 */ LDR R2, =0x1d3 \n\
/* 0802dfb2 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802dfb4 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0802dfb6 */ STRB R0, [R1] \n\
/* 0802dfb8 */ POP {R0} \n\
/* 0802dfba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
