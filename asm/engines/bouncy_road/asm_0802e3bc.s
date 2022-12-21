asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bouncy_road_init_gfx3 \n\
/* 0802e3bc */ PUSH {LR} \n\
/* 0802e3be */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802e3c0 */ BL func_0800c604 \n\
/* 0802e3c4 */ BL gameplay_start_screen_fade_in \n\
/* 0802e3c8 */ MOVS R0, 0x88 @ Set R0 to 0x88 \n\
/* 0802e3ca */ LSLS R0, R0, 0x1 \n\
/* 0802e3cc */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0802e3ce */ LSLS R1, R1, 0x1 \n\
/* 0802e3d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e3d2 */ BL func_080041d0 \n\
/* 0802e3d6 */ POP {R0} \n\
/* 0802e3d8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
