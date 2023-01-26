asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080239bc \n\
/* 080239bc */ PUSH {R4, LR} \n\
/* 080239be */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080239c0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080239c2 */ BGE branch_080239cc \n\
/* 080239c4 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080239c6 */ BL scene_hide_bg_layer \n\
/* 080239ca */ B branch_080239e2 \n\
 \n\
branch_080239cc: \n\
/* 080239cc */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080239ce */ BL scene_show_bg_layer \n\
/* 080239d2 */ LDR R1, =D_03004b10 \n\
/* 080239d4 */ LSLS R0, R4, 0x3 \n\
/* 080239d6 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 080239d8 */ LSLS R0, R0, 0x2 \n\
/* 080239da */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 080239dc */ LSLS R0, R0, 0x2 \n\
/* 080239de */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080239e0 */ STRH R0, [R1, 0x18] \n\
 \n\
branch_080239e2: \n\
/* 080239e2 */ POP {R4} \n\
/* 080239e4 */ POP {R0} \n\
/* 080239e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
