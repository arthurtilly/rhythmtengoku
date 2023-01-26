asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start scene_set_bg_layer_pos \n\
/* 0800e058 */ LDR R3, =(D_03004b10 + 0xc) \n\
/* 0800e05a */ LSLS R0, R0, 0x2 \n\
/* 0800e05c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800e05e */ STRH R1, [R0] \n\
/* 0800e060 */ STRH R2, [R0, 0x2] \n\
/* 0800e062 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
