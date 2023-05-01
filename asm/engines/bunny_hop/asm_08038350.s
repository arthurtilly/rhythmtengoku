asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_engine_update \n\
/* 08038350 */ PUSH {LR} \n\
/* 08038352 */ BL func_0800c398 \n\
/* 08038356 */ LDR R1, =gCurrentEngineData \n\
/* 08038358 */ LDR R2, [R1] \n\
/* 0803835a */ ADDS R2, 0xF0 @ Add 0xF0 to R2 \n\
/* 0803835c */ LDR R1, [R2] \n\
/* 0803835e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08038360 */ STR R1, [R2] \n\
/* 08038362 */ BL func_08039440 \n\
/* 08038366 */ BL func_08038ef8 \n\
/* 0803836a */ BL func_080394a4 \n\
/* 0803836e */ BL func_08039698 \n\
/* 08038372 */ BL func_080397f8 \n\
/* 08038376 */ BL func_080382ac \n\
/* 0803837a */ POP {R0} \n\
/* 0803837c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
