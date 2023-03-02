asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f09c \n\
/* 0800f09c */ PUSH {LR} \n\
/* 0800f09e */ LDR R1, =func_0800eebc \n\
/* 0800f0a0 */ LDR R2, =0x101 \n\
/* 0800f0a2 */ BL bmp_font_obj_set_format_parser \n\
/* 0800f0a6 */ POP {R0} \n\
/* 0800f0a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
