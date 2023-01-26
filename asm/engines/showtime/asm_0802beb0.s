asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start showtime_cue_spawn_white_fast \n\
/* 0802beb0 */ PUSH {R4, LR} \n\
/* 0802beb2 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802beb4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802beb6 */ BL func_0802ce70 \n\
/* 0802beba */ STR R0, [R4, 0x4] \n\
/* 0802bebc */ BL func_0802d38c \n\
/* 0802bec0 */ POP {R4} \n\
/* 0802bec2 */ POP {R0} \n\
/* 0802bec4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
