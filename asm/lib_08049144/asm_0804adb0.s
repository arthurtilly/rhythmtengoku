asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804adb0 \n\
/* 0804adb0 */ STRB R1, [R0, 0x4] \n\
/* 0804adb2 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
