asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e8bc \n\
/* 0804e8bc */ PUSH {R4, LR} \n\
/* 0804e8be */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804e8c0 */ BL func_0804e598 \n\
/* 0804e8c4 */ STR R0, [R4] \n\
/* 0804e8c6 */ POP {R4} \n\
/* 0804e8c8 */ POP {R0} \n\
/* 0804e8ca */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
