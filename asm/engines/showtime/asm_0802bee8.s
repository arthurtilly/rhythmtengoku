asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start showtime_cue_spawn_white_fast_swing \n\
/* 0802bee8 */ PUSH {R4, LR} \n\
/* 0802beea */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802beec */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0802beee */ BL func_0802ce70 \n\
/* 0802bef2 */ STR R0, [R4, 0x4] \n\
/* 0802bef4 */ BL func_0802d38c \n\
/* 0802bef8 */ POP {R4} \n\
/* 0802befa */ POP {R0} \n\
/* 0802befc */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
