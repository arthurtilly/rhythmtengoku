asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mr_upbeat_cue_barely \n\
/* 080353bc */ PUSH {R4, LR} \n\
/* 080353be */ LDR R0, =gCurrentEngineData \n\
/* 080353c0 */ LDR R4, [R0] \n\
/* 080353c2 */ BL func_08034ff4 \n\
/* 080353c6 */ BL func_08035358 \n\
/* 080353ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080353cc */ BEQ branch_080353e2 \n\
/* 080353ce */ BL gameplay_ignore_this_cue_result \n\
/* 080353d2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080353d4 */ BL gameplay_add_cue_result_miss \n\
/* 080353d8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080353da */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 080353dc */ LDRB R0, [R0] \n\
/* 080353de */ BL func_08035094 \n\
 \n\
branch_080353e2: \n\
/* 080353e2 */ POP {R4} \n\
/* 080353e4 */ POP {R0} \n\
/* 080353e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
