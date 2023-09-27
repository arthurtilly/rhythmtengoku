asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_cue_update \n\
/* 0803d5c4 */ PUSH {R4, LR} \n\
/* 0803d5c6 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0803d5c8 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0803d5ca */ BL ticks_to_frames \n\
/* 0803d5ce */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803d5d0 */ BHI branch_0803d5d6 \n\
/* 0803d5d2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d5d4 */ B branch_0803d5d8 \n\
 \n\
branch_0803d5d6: \n\
/* 0803d5d6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803d5d8: \n\
/* 0803d5d8 */ POP {R4} \n\
/* 0803d5da */ POP {R1} \n\
/* 0803d5dc */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
