asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_cue_miss \n\
/* 080316e4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080316e6 */ STRB R0, [R1] \n\
/* 080316e8 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
