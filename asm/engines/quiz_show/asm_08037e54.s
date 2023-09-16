asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start quiz_show_cue_update \n\
/* 08037e54 */ PUSH {R4, LR} \n\
/* 08037e56 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08037e58 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08037e5a */ BL ticks_to_frames \n\
/* 08037e5e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08037e60 */ BHI branch_08037e66 \n\
/* 08037e62 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037e64 */ B branch_08037e68 \n\
 \n\
branch_08037e66: \n\
/* 08037e66 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08037e68: \n\
/* 08037e68 */ POP {R4} \n\
/* 08037e6a */ POP {R1} \n\
/* 08037e6c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
