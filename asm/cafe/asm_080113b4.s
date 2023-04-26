asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080113b4 \n\
/* 080113b4 */ PUSH {LR} \n\
/* 080113b6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080113b8 */ BL scene_hide_bg_layer \n\
/* 080113bc */ LDR R0, =gCurrentSceneData \n\
/* 080113be */ LDR R0, [R0] \n\
/* 080113c0 */ LDR R0, [R0, 0x4] \n\
/* 080113c2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080113c4 */ BL text_printer_show_text \n\
/* 080113c8 */ POP {R0} \n\
/* 080113ca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
