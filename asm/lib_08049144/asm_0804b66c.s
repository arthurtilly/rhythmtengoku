asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b66c \n\
/* 0804b66c */ PUSH {LR} \n\
/* 0804b66e */ LDR R0, [R0, 0x4] \n\
/* 0804b670 */ LSLS R1, R2, 0x18 \n\
/* 0804b672 */ ASRS R1, R1, 0x18 \n\
/* 0804b674 */ BL func_0804adb8 \n\
/* 0804b678 */ POP {R0} \n\
/* 0804b67a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
