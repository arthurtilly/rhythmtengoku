asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start clappy_trio_common_init_tutorial \n\
/* 08030c14 */ PUSH {R4, LR} \n\
/* 08030c16 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08030c18 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08030c1a */ BEQ branch_08030c32 \n\
/* 08030c1c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08030c1e */ BL gameplay_enable_tutorial \n\
/* 08030c22 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08030c24 */ BL gameplay_set_skip_destination \n\
/* 08030c28 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08030c2a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08030c2c */ BL gameplay_set_skip_icon \n\
/* 08030c30 */ B branch_08030c40 \n\
 \n\
branch_08030c32: \n\
/* 08030c32 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030c34 */ BL gameplay_enable_tutorial \n\
/* 08030c38 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030c3a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08030c3c */ BL gameplay_set_skip_icon \n\
 \n\
branch_08030c40: \n\
/* 08030c40 */ POP {R4} \n\
/* 08030c42 */ POP {R0} \n\
/* 08030c44 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
