asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_test_cue_update \n\
/* 0803401c */ PUSH {R4, LR} \n\
/* 0803401e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08034020 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08034022 */ BL ticks_to_frames \n\
/* 08034026 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08034028 */ BHI branch_0803402e \n\
/* 0803402a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803402c */ B branch_08034030 \n\
 \n\
branch_0803402e: \n\
/* 0803402e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08034030: \n\
/* 08034030 */ POP {R4} \n\
/* 08034032 */ POP {R1} \n\
/* 08034034 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
