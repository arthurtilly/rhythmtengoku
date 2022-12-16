asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start scene_disable_obj_windows \n\
/* 0800e128 */ LDR R2, =D_03004b10 \n\
/* 0800e12a */ LDRH R1, [R2] \n\
/* 0800e12c */ LDR R0, =0x7fff \n\
/* 0800e12e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800e130 */ STRH R0, [R2] \n\
/* 0800e132 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
