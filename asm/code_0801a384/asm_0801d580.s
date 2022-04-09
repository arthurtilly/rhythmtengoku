asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d580 \n\
/* 0801d580 */ PUSH {LR} \n\
/* 0801d582 */ BL func_0801d410 \n\
/* 0801d586 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801d588 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801d58a */ BL func_0801d6c4 \n\
/* 0801d58e */ POP {R0} \n\
/* 0801d590 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
