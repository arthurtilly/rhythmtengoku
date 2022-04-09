asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080207ec \n\
/* 080207ec */ PUSH {LR} \n\
/* 080207ee */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 080207f0 */ BL func_08020778 \n\
/* 080207f4 */ POP {R0} \n\
/* 080207f6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
