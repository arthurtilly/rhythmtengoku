asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080028c4 \n\
/* 080028c4 */ PUSH {LR} \n\
/* 080028c6 */ LSLS R1, R1, 0x10 \n\
/* 080028c8 */ LSRS R1, R1, 0x10 \n\
/* 080028ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080028cc */ BEQ branch_080028d2 \n\
/* 080028ce */ BL func_0804b7fc \n\
 \n\
branch_080028d2: \n\
/* 080028d2 */ POP {R0} \n\
/* 080028d4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
