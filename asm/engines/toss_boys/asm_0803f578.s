asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_cue_update \n\
/* 0803f578 */ PUSH {R4, R5, LR} \n\
/* 0803f57a */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0803f57c */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 0803f57e */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803f580 */ BL ticks_to_frames \n\
/* 0803f584 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0803f586 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0803f588 */ BHI branch_0803f58e \n\
/* 0803f58a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803f58c */ B branch_0803f590 \n\
 \n\
branch_0803f58e: \n\
/* 0803f58e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803f590: \n\
/* 0803f590 */ POP {R4, R5} \n\
/* 0803f592 */ POP {R1} \n\
/* 0803f594 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
