asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080477b4 \n\
/* 080477b4 */ PUSH {LR} \n\
/* 080477b6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080477b8 */ BL func_0800c604 \n\
/* 080477bc */ BL func_08017578 \n\
/* 080477c0 */ POP {R0} \n\
/* 080477c2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
