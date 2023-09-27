asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bunny_hop_cue_update \n\
/* 0803841c */ PUSH {R4, LR} \n\
/* 0803841e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08038420 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08038422 */ BL ticks_to_frames \n\
/* 08038426 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08038428 */ BHI branch_0803842e \n\
/* 0803842a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803842c */ B branch_08038430 \n\
 \n\
branch_0803842e: \n\
/* 0803842e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08038430: \n\
/* 08038430 */ POP {R4} \n\
/* 08038432 */ POP {R1} \n\
/* 08038434 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
