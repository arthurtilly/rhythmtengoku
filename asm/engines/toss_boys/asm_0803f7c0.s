asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_cue_barely \n\
/* 0803f7c0 */ PUSH {LR} \n\
/* 0803f7c2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803f7c4 */ BL func_0803f59c \n\
/* 0803f7c8 */ POP {R0} \n\
/* 0803f7ca */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
