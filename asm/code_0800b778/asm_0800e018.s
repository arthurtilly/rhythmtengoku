asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start scene_set_video_mode \n\
/* 0800e018 */ LDR R3, =D_03004b10 \n\
/* 0800e01a */ LDRH R2, [R3] \n\
/* 0800e01c */ LDR R1, =0xfff8 \n\
/* 0800e01e */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800e020 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800e022 */ STRH R1, [R3] \n\
/* 0800e024 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
