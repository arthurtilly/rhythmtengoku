asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start metronome_common_init_tutorial \n\
/* 08035cf8 */ PUSH {R4, LR} \n\
/* 08035cfa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08035cfc */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08035cfe */ BEQ branch_08035d0e \n\
/* 08035d00 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08035d02 */ BL gameplay_enable_tutorial \n\
/* 08035d06 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08035d08 */ BL gameplay_set_skip_destination \n\
/* 08035d0c */ B branch_08035d14 \n\
 \n\
branch_08035d0e: \n\
/* 08035d0e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035d10 */ BL gameplay_enable_tutorial \n\
 \n\
branch_08035d14: \n\
/* 08035d14 */ POP {R4} \n\
/* 08035d16 */ POP {R0} \n\
/* 08035d18 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
