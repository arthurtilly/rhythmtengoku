asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007410 \n\
/* 08007410 */ PUSH {LR} \n\
/* 08007412 */ BL func_08006fec \n\
/* 08007416 */ LDR R0, =D_03005380 \n\
/* 08007418 */ LDR R0, [R0] \n\
/* 0800741a */ BL func_0804e1c8 \n\
/* 0800741e */ BL func_08002584 \n\
/* 08007422 */ POP {R0} \n\
/* 08007424 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
