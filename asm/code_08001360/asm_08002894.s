asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002894 \n\
/* 08002894 */ PUSH {LR} \n\
/* 08002896 */ LSLS R1, R1, 0x10 \n\
/* 08002898 */ LSRS R1, R1, 0x10 \n\
/* 0800289a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800289c */ BEQ branch_080028a2 \n\
/* 0800289e */ BL func_0804b710 \n\
 \n\
branch_080028a2: \n\
/* 080028a2 */ POP {R0} \n\
/* 080028a4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
