asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08031c68 \n\
/* 08031c68 */ PUSH {R4, R5, LR} \n\
/* 08031c6a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08031c6c */ LSLS R5, R0, 0x8 \n\
/* 08031c6e */ BL ticks_to_frames \n\
/* 08031c72 */ LSLS R0, R0, 0x10 \n\
/* 08031c74 */ LSRS R0, R0, 0x10 \n\
/* 08031c76 */ LSLS R1, R4, 0x2 \n\
/* 08031c78 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08031c7a */ MULS R1, R5 @ Multiply R1 by R5 \n\
/* 08031c7c */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 08031c7e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08031c80 */ MULS R2, R4 @ Multiply R2 by R4 \n\
/* 08031c82 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08031c84 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08031c86 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08031c88 */ BL __divsi3 \n\
/* 08031c8c */ POP {R4, R5} \n\
/* 08031c8e */ POP {R1} \n\
/* 08031c90 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
