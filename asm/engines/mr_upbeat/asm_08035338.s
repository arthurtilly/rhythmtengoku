asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mr_upbeat_cue_update \n\
/* 08035338 */ PUSH {R4, LR} \n\
/* 0803533a */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0803533c */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0803533e */ BL ticks_to_frames \n\
/* 08035342 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08035344 */ BHI branch_0803534a \n\
/* 08035346 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035348 */ B branch_0803534c \n\
 \n\
branch_0803534a: \n\
/* 0803534a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803534c: \n\
/* 0803534c */ POP {R4} \n\
/* 0803534e */ POP {R1} \n\
/* 08035350 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
