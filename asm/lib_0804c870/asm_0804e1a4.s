asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e1a4 \n\
/* 0804e1a4 */ PUSH {LR} \n\
/* 0804e1a6 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804e1a8 */ LSLS R1, R1, 0x10 \n\
/* 0804e1aa */ LSRS R1, R1, 0x10 \n\
/* 0804e1ac */ LSLS R3, R3, 0x10 \n\
/* 0804e1ae */ LSRS R3, R3, 0x10 \n\
/* 0804e1b0 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0804e1b2 */ BL func_0804df80 \n\
/* 0804e1b6 */ POP {R0} \n\
/* 0804e1b8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
