asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start score_results_scene_init_gfx4 \n\
/* 08018e74 */ PUSH {LR} \n\
/* 08018e76 */ LDR R0, =D_03004b10 \n\
/* 08018e78 */ LDR R1, =0x436 \n\
/* 08018e7a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018e7c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08018e7e */ STRH R1, [R0] \n\
/* 08018e80 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018e82 */ BL set_pause_beatscript_scene \n\
/* 08018e86 */ POP {R0} \n\
/* 08018e88 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
