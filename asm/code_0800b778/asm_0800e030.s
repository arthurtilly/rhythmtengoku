asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start scene_show_bg_layer \n\
/* 0800e030 */ LDR R2, =D_03004b10 \n\
/* 0800e032 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0800e034 */ LSLS R1, R1, 0x1 \n\
/* 0800e036 */ LSLS R1, R0 @ Set R1 to R1 << R0 (logical) \n\
/* 0800e038 */ LDRH R0, [R2] \n\
/* 0800e03a */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800e03c */ STRH R1, [R2] \n\
/* 0800e03e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
