asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802310c \n\
/* 0802310c */ PUSH {R4, LR} \n\
/* 0802310e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023110 */ BL gameplay_inputs_enabled \n\
/* 08023114 */ LDR R4, =gCurrentEngineData \n\
/* 08023116 */ LDR R0, [R4] \n\
/* 08023118 */ LDR R1, =0x0000040c \n\
/* 0802311a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802311c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802311e */ STRB R1, [R0] \n\
/* 08023120 */ BL scene_stop_music \n\
/* 08023124 */ LDR R0, =s_ghost_just_hit_seqData \n\
/* 08023126 */ BL play_sound \n\
/* 0802312a */ LDR R0, [R4] \n\
/* 0802312c */ MOVS R1, 0x82 @ Set R1 to 0x82 \n\
/* 0802312e */ LSLS R1, R1, 0x3 \n\
/* 08023130 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08023132 */ LDR R0, [R0] \n\
/* 08023134 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023136 */ BEQ branch_0802313c \n\
/* 08023138 */ BL func_0801d968 \n\
 \n\
branch_0802313c: \n\
/* 0802313c */ POP {R4} \n\
/* 0802313e */ POP {R0} \n\
/* 08023140 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
