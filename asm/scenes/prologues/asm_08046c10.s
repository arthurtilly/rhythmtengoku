asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046c10 \n\
/* 08046c10 */ PUSH {LR} \n\
/* 08046c12 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046c14 */ BL func_0800c604 \n\
/* 08046c18 */ BL func_08017578 \n\
/* 08046c1c */ POP {R0} \n\
/* 08046c1e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
