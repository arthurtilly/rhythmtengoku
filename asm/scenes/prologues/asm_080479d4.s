asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080479d4 \n\
/* 080479d4 */ PUSH {LR} \n\
/* 080479d6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080479d8 */ BL func_0800c604 \n\
/* 080479dc */ BL func_08017578 \n\
/* 080479e0 */ POP {R0} \n\
/* 080479e2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
