asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e130 \n\
/* 0804e130 */ PUSH {LR} \n\
/* 0804e132 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804e134 */ LSLS R1, R1, 0x10 \n\
/* 0804e136 */ LSRS R1, R1, 0x10 \n\
/* 0804e138 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0804e13a */ BL func_0804df80 \n\
/* 0804e13e */ POP {R0} \n\
/* 0804e140 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
