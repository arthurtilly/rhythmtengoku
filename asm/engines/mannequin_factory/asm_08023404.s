asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_cue_spawn \n\
/* 08023404 */ LDR R0, =gCurrentEngineData \n\
/* 08023406 */ LDR R0, [R0] \n\
/* 08023408 */ ADDS R0, 0x8C @ Add 0x8C to R0 \n\
/* 0802340a */ LDR R0, [R0] \n\
/* 0802340c */ STR R0, [R1] \n\
/* 0802340e */ STRB R2, [R1, 0x4] \n\
/* 08023410 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
