asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_engine_stop \n\
/* 0803e4fc */ LDR R0, =D_03004b10 \n\
/* 0803e4fe */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 0803e500 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803e502 */ STRH R1, [R0] \n\
/* 0803e504 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
