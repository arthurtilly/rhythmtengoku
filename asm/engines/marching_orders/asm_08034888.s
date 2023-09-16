asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_cue_update \n\
/* 08034888 */ PUSH {R4, LR} \n\
/* 0803488a */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0803488c */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0803488e */ BL ticks_to_frames \n\
/* 08034892 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08034894 */ BHI branch_0803489a \n\
/* 08034896 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08034898 */ B branch_0803489c \n\
 \n\
branch_0803489a: \n\
/* 0803489a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803489c: \n\
/* 0803489c */ POP {R4} \n\
/* 0803489e */ POP {R1} \n\
/* 080348a0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
