asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080473d4 \n\
/* 080473d4 */ PUSH {LR} \n\
/* 080473d6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080473d8 */ BL func_0800c604 \n\
/* 080473dc */ BL func_08017578 \n\
/* 080473e0 */ POP {R0} \n\
/* 080473e2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
