asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b7fc \n\
/* 0804b7fc */ PUSH {LR} \n\
/* 0804b7fe */ LSLS R2, R1, 0x10 \n\
/* 0804b800 */ LSRS R2, R2, 0x10 \n\
/* 0804b802 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804b804 */ BL func_0804b734 \n\
/* 0804b808 */ POP {R0} \n\
/* 0804b80a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
