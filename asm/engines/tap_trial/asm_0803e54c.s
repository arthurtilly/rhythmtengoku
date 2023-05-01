asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_cue_barely \n\
/* 0803e54c */ PUSH {LR} \n\
/* 0803e54e */ BL func_0803e644 \n\
/* 0803e552 */ LDR R0, =s_f_tap_tap_seqData \n\
/* 0803e554 */ BL stop_sound \n\
/* 0803e558 */ LDR R0, =s_tebyoushi_pati_seqData \n\
/* 0803e55a */ BL play_sound \n\
/* 0803e55e */ LDR R0, =gCurrentEngineData \n\
/* 0803e560 */ LDR R1, [R0] \n\
/* 0803e562 */ LDRH R0, [R1, 0x20] \n\
/* 0803e564 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803e566 */ STRH R0, [R1, 0x20] \n\
/* 0803e568 */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 0803e56a */ BL func_0803e420 \n\
/* 0803e56e */ POP {R0} \n\
/* 0803e570 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
