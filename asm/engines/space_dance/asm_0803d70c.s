asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_cue_barely \n\
/* 0803d70c */ PUSH {LR} \n\
/* 0803d70e */ BL space_dance_cue_hit \n\
/* 0803d712 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d714 */ BL func_0803d670 \n\
/* 0803d718 */ POP {R0} \n\
/* 0803d71a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
