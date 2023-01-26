asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e108 \n\
/* 0804e108 */ PUSH {LR} \n\
/* 0804e10a */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804e10c */ LSLS R1, R1, 0x10 \n\
/* 0804e10e */ LSRS R1, R1, 0x10 \n\
/* 0804e110 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0804e112 */ BL func_0804df80 \n\
/* 0804e116 */ POP {R0} \n\
/* 0804e118 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
