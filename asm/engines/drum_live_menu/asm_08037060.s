asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_menu_cue_update \n\
/* 08037060 */ PUSH {R4, LR} \n\
/* 08037062 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08037064 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08037066 */ BL ticks_to_frames \n\
/* 0803706a */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803706c */ BHI branch_08037072 \n\
/* 0803706e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037070 */ B branch_08037074 \n\
 \n\
branch_08037072: \n\
/* 08037072 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08037074: \n\
/* 08037074 */ POP {R4} \n\
/* 08037076 */ POP {R1} \n\
/* 08037078 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
