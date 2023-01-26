asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e170 \n\
/* 0804e170 */ PUSH {LR} \n\
/* 0804e172 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804e174 */ LSLS R1, R1, 0x10 \n\
/* 0804e176 */ LSRS R1, R1, 0x10 \n\
/* 0804e178 */ LSLS R3, R3, 0x18 \n\
/* 0804e17a */ ASRS R3, R3, 0x18 \n\
/* 0804e17c */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0804e17e */ BL func_0804df80 \n\
/* 0804e182 */ POP {R0} \n\
/* 0804e184 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
