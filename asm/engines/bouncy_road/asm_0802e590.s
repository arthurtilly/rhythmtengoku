asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bouncy_road_engine_stop \n\
/* 0802e590 */ LDR R0, =D_03004b10 \n\
/* 0802e592 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 0802e594 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e596 */ STRH R1, [R0] \n\
/* 0802e598 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
