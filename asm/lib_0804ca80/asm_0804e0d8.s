asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e0d8 \n\
/* 0804e0d8 */ PUSH {LR} \n\
/* 0804e0da */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804e0dc */ LSLS R1, R1, 0x10 \n\
/* 0804e0de */ LSRS R1, R1, 0x10 \n\
/* 0804e0e0 */ LSLS R3, R3, 0x10 \n\
/* 0804e0e2 */ LSRS R3, R3, 0x10 \n\
/* 0804e0e4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804e0e6 */ BL func_0804df80 \n\
/* 0804e0ea */ POP {R0} \n\
/* 0804e0ec */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
