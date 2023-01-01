asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_common_init_tutorial \n\
/* 0803a654 */ PUSH {R4, LR} \n\
/* 0803a656 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803a658 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803a65a */ BEQ branch_0803a66a \n\
/* 0803a65c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803a65e */ BL gameplay_enable_tutorial \n\
/* 0803a662 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803a664 */ BL gameplay_set_skip_destination \n\
/* 0803a668 */ B branch_0803a670 \n\
 \n\
branch_0803a66a: \n\
/* 0803a66a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803a66c */ BL gameplay_enable_tutorial \n\
 \n\
branch_0803a670: \n\
/* 0803a670 */ POP {R4} \n\
/* 0803a672 */ POP {R0} \n\
/* 0803a674 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
