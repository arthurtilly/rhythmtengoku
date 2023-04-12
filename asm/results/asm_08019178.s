asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start score_results_scene_stop \n\
/* 08019178 */ PUSH {LR} \n\
/* 0801917a */ BL func_08008628 \n\
/* 0801917e */ BL func_08004058 \n\
/* 08019182 */ POP {R0} \n\
/* 08019184 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
