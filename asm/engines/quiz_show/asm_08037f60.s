asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start quiz_show_common_init_tutorial \n\
/* 08037f60 */ PUSH {R4, LR} \n\
/* 08037f62 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08037f64 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08037f66 */ BEQ branch_08037f76 \n\
/* 08037f68 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08037f6a */ BL gameplay_enable_tutorial \n\
/* 08037f6e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08037f70 */ BL gameplay_set_skip_destination \n\
/* 08037f74 */ B branch_08037f7c \n\
 \n\
branch_08037f76: \n\
/* 08037f76 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037f78 */ BL gameplay_enable_tutorial \n\
 \n\
branch_08037f7c: \n\
/* 08037f7c */ POP {R4} \n\
/* 08037f7e */ POP {R0} \n\
/* 08037f80 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
