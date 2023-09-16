asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start showtime_cue_update_white_fast \n\
/* 0802bec8 */ PUSH {R4, LR} \n\
/* 0802beca */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0802becc */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0802bece */ BL ticks_to_frames \n\
/* 0802bed2 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0802bed4 */ BHI branch_0802beda \n\
/* 0802bed6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802bed8 */ B branch_0802bedc \n\
 \n\
branch_0802beda: \n\
/* 0802beda */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802bedc: \n\
/* 0802bedc */ POP {R4} \n\
/* 0802bede */ POP {R1} \n\
/* 0802bee0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
