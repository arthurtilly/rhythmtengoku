asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e11c \n\
/* 0804e11c */ PUSH {LR} \n\
/* 0804e11e */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804e120 */ LSLS R1, R1, 0x10 \n\
/* 0804e122 */ LSRS R1, R1, 0x10 \n\
/* 0804e124 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0804e126 */ BL func_0804df80 \n\
/* 0804e12a */ POP {R0} \n\
/* 0804e12c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
