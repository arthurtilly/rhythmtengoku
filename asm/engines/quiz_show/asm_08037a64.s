asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037a64 \n\
/* 08037a64 */ PUSH {LR} \n\
/* 08037a66 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08037a68 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08037a6a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08037a6c */ ASRS R1, R1, 0x4 \n\
/* 08037a6e */ BL func_080378d8 \n\
/* 08037a72 */ POP {R0} \n\
/* 08037a74 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
