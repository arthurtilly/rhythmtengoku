asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e158 \n\
/* 0804e158 */ PUSH {LR} \n\
/* 0804e15a */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804e15c */ LSLS R1, R1, 0x10 \n\
/* 0804e15e */ LSRS R1, R1, 0x10 \n\
/* 0804e160 */ LSLS R3, R3, 0x10 \n\
/* 0804e162 */ ASRS R3, R3, 0x10 \n\
/* 0804e164 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0804e166 */ BL func_0804df80 \n\
/* 0804e16a */ POP {R0} \n\
/* 0804e16c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
