asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_cue_update \n\
/* 0803e510 */ PUSH {R4, LR} \n\
/* 0803e512 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0803e514 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0803e516 */ BL ticks_to_frames \n\
/* 0803e51a */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803e51c */ BHI branch_0803e522 \n\
/* 0803e51e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803e520 */ B branch_0803e524 \n\
 \n\
branch_0803e522: \n\
/* 0803e522 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803e524: \n\
/* 0803e524 */ POP {R4} \n\
/* 0803e526 */ POP {R1} \n\
/* 0803e528 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
