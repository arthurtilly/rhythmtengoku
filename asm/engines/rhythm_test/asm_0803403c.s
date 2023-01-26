asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_test_cue_hit \n\
/* 0803403c */ PUSH {R4, LR} \n\
/* 0803403e */ BL func_08033f08 \n\
/* 08034042 */ BL func_080340a4 \n\
/* 08034046 */ BL gameplay_get_last_hit_offset \n\
/* 0803404a */ LSLS R4, R0, 0x1 \n\
/* 0803404c */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803404e */ BL agb_random \n\
/* 08034052 */ SUBS R1, R4, 0x1 @ Set R1 to R4 - 0x1 \n\
/* 08034054 */ LSLS R0, R0, 0x10 \n\
/* 08034056 */ LSRS R0, R0, 0x10 \n\
/* 08034058 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 0803405a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803405c */ BL func_080339bc \n\
/* 08034060 */ POP {R4} \n\
/* 08034062 */ POP {R0} \n\
/* 08034064 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
