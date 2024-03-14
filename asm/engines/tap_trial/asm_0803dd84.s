asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803dd84 \n\
/* 0803dd84 */ PUSH {LR} \n\
/* 0803dd86 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803dd88 */ LDR R0, =gSpriteHandler \n\
/* 0803dd8a */ LDR R0, [R0] \n\
/* 0803dd8c */ LSLS R1, R1, 0x10 \n\
/* 0803dd8e */ ASRS R1, R1, 0x10 \n\
/* 0803dd90 */ LDR R2, =(D_03004b10 + 0x10) \n\
/* 0803dd92 */ ADDS R3, R2, 0x2 @ Set R3 to R2 + 0x2 \n\
/* 0803dd94 */ BL sprite_set_origin_x_y \n\
/* 0803dd98 */ POP {R0} \n\
/* 0803dd9a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
