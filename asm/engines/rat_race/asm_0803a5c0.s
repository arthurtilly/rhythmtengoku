asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_cue_update_dash \n\
/* 0803a5c0 */ PUSH {R4, LR} \n\
/* 0803a5c2 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0803a5c4 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0803a5c6 */ BL ticks_to_frames \n\
/* 0803a5ca */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803a5cc */ BHI branch_0803a5d2 \n\
/* 0803a5ce */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803a5d0 */ B branch_0803a5d4 \n\
 \n\
branch_0803a5d2: \n\
/* 0803a5d2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803a5d4: \n\
/* 0803a5d4 */ POP {R4} \n\
/* 0803a5d6 */ POP {R1} \n\
/* 0803a5d8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
