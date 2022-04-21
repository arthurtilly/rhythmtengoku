asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804adb4 \n\
/* 0804adb4 */ STRB R1, [R0] \n\
/* 0804adb6 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
