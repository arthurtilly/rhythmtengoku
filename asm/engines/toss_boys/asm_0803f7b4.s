asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_cue_hit \n\
/* 0803f7b4 */ PUSH {LR} \n\
/* 0803f7b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f7b8 */ BL func_0803f59c \n\
/* 0803f7bc */ POP {R0} \n\
/* 0803f7be */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
