asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080351e8 \n\
/* 080351e8 */ PUSH {LR} \n\
/* 080351ea */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080351ec */ BL func_0800c604 \n\
/* 080351f0 */ BL func_08017578 \n\
/* 080351f4 */ POP {R0} \n\
/* 080351f6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
