asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start showtime_cue_spawn_black \n\
/* 0802be78 */ PUSH {R4, LR} \n\
/* 0802be7a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802be7c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802be7e */ BL func_0802ce70 \n\
/* 0802be82 */ STR R0, [R4, 0x4] \n\
/* 0802be84 */ BL func_0802d38c \n\
/* 0802be88 */ POP {R4} \n\
/* 0802be8a */ POP {R0} \n\
/* 0802be8c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
