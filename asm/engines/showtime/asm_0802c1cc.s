asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start showtime_common_init_tutorial \n\
/* 0802c1cc */ PUSH {R4, LR} \n\
/* 0802c1ce */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802c1d0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802c1d2 */ BEQ branch_0802c1e2 \n\
/* 0802c1d4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802c1d6 */ BL gameplay_enable_tutorial \n\
/* 0802c1da */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802c1dc */ BL gameplay_set_skip_destination \n\
/* 0802c1e0 */ B branch_0802c1e8 \n\
 \n\
branch_0802c1e2: \n\
/* 0802c1e2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802c1e4 */ BL gameplay_enable_tutorial \n\
 \n\
branch_0802c1e8: \n\
/* 0802c1e8 */ POP {R4} \n\
/* 0802c1ea */ POP {R0} \n\
/* 0802c1ec */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
