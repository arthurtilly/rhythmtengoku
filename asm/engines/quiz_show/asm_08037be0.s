asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037be0 \n\
/* 08037be0 */ PUSH {LR} \n\
/* 08037be2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08037be4 */ MOVS R2, 0xF @ Set R2 to 0xF \n\
/* 08037be6 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08037be8 */ LSRS R1, R1, 0x4 \n\
/* 08037bea */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08037bec */ BL func_08037a78 \n\
/* 08037bf0 */ POP {R0} \n\
/* 08037bf2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
