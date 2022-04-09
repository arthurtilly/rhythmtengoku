asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080112f4 \n\
/* 080112f4 */ PUSH {LR} \n\
/* 080112f6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080112f8 */ BL func_0800e044 \n\
/* 080112fc */ POP {R0} \n\
/* 080112fe */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
