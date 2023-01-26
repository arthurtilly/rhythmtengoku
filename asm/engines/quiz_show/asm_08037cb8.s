asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037cb8 \n\
/* 08037cb8 */ PUSH {LR} \n\
/* 08037cba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037cbc */ BEQ branch_08037cc6 \n\
/* 08037cbe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037cc0 */ BL scene_show_bg_layer \n\
/* 08037cc4 */ B branch_08037ccc \n\
 \n\
branch_08037cc6: \n\
/* 08037cc6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037cc8 */ BL scene_hide_bg_layer \n\
 \n\
branch_08037ccc: \n\
/* 08037ccc */ POP {R0} \n\
/* 08037cce */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
