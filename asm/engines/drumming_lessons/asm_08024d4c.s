asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_cue_update \n\
/* 08024d4c */ PUSH {R4, LR} \n\
/* 08024d4e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08024d50 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08024d52 */ BL ticks_to_frames \n\
/* 08024d56 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08024d58 */ BHI branch_08024d5e \n\
/* 08024d5a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08024d5c */ B branch_08024d60 \n\
 \n\
branch_08024d5e: \n\
/* 08024d5e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08024d60: \n\
/* 08024d60 */ POP {R4} \n\
/* 08024d62 */ POP {R1} \n\
/* 08024d64 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
