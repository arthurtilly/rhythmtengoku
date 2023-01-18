asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e144 \n\
/* 0804e144 */ PUSH {LR} \n\
/* 0804e146 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804e148 */ LSLS R1, R1, 0x10 \n\
/* 0804e14a */ LSRS R1, R1, 0x10 \n\
/* 0804e14c */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0804e14e */ BL func_0804df80 \n\
/* 0804e152 */ POP {R0} \n\
/* 0804e154 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
