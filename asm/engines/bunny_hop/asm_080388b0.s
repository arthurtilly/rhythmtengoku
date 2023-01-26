asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_common_display_text \n\
/* 080388b0 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
