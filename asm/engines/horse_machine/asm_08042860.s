asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start horse_machine_common_display_text \n\
/* 08042860 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
