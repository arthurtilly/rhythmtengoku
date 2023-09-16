asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start metronome_cue_update \n\
/* 08035b44 */ PUSH {R4, LR} \n\
/* 08035b46 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08035b48 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08035b4a */ BL ticks_to_frames \n\
/* 08035b4e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08035b50 */ BHI branch_08035b56 \n\
/* 08035b52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035b54 */ B branch_08035b58 \n\
 \n\
branch_08035b56: \n\
/* 08035b56 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08035b58: \n\
/* 08035b58 */ POP {R4} \n\
/* 08035b5a */ POP {R1} \n\
/* 08035b5c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
