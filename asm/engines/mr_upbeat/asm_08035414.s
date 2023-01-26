asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mr_upbeat_common_display_text \n\
/* 08035414 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
