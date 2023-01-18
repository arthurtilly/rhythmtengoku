asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e0f0 \n\
/* 0804e0f0 */ PUSH {LR} \n\
/* 0804e0f2 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804e0f4 */ LSLS R1, R1, 0x10 \n\
/* 0804e0f6 */ LSRS R1, R1, 0x10 \n\
/* 0804e0f8 */ LSLS R3, R3, 0x10 \n\
/* 0804e0fa */ LSRS R3, R3, 0x10 \n\
/* 0804e0fc */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0804e0fe */ BL func_0804df80 \n\
/* 0804e102 */ POP {R0} \n\
/* 0804e104 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
