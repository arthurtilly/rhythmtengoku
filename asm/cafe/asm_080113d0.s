asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start cafe_scene_init_static_var \n\
/* 080113d0 */ PUSH {LR} \n\
/* 080113d2 */ BL func_08010854 \n\
/* 080113d6 */ POP {R0} \n\
/* 080113d8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
