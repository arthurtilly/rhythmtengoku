asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start scene_hide_bg_layer \n\
/* 0800e044 */ LDR R2, =D_03004b10 \n\
/* 0800e046 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0800e048 */ LSLS R1, R1, 0x1 \n\
/* 0800e04a */ LSLS R1, R0 @ Set R1 to R1 << R0 (logical) \n\
/* 0800e04c */ LDRH R0, [R2] \n\
/* 0800e04e */ BICS R0, R1 @ Clear bits in R1 from R0 \n\
/* 0800e050 */ STRH R0, [R2] \n\
/* 0800e052 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
