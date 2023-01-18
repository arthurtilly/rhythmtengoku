asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e0c4 \n\
/* 0804e0c4 */ PUSH {LR} \n\
/* 0804e0c6 */ LSLS R1, R1, 0x10 \n\
/* 0804e0c8 */ LSRS R1, R1, 0x10 \n\
/* 0804e0ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804e0cc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804e0ce */ BL func_0804df80 \n\
/* 0804e0d2 */ POP {R0} \n\
/* 0804e0d4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
