asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start score_results_scene_init_static_var \n\
/* 08018e60 */ LDR R0, =D_03001330 \n\
/* 08018e62 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08018e64 */ STR R1, [R0] \n\
/* 08018e66 */ LDR R0, =D_03001334 \n\
/* 08018e68 */ STR R1, [R0] \n\
/* 08018e6a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
