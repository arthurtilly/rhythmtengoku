asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_cue_update_auto \n\
/* 08023d44 */ PUSH {R4, LR} \n\
/* 08023d46 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08023d48 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08023d4a */ BL ticks_to_frames \n\
/* 08023d4e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08023d50 */ BHI branch_08023d56 \n\
/* 08023d52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023d54 */ B branch_08023d58 \n\
 \n\
branch_08023d56: \n\
/* 08023d56 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08023d58: \n\
/* 08023d58 */ POP {R4} \n\
/* 08023d5a */ POP {R1} \n\
/* 08023d5c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
