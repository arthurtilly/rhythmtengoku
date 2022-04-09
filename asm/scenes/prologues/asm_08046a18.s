asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046a18 \n\
/* 08046a18 */ PUSH {LR} \n\
/* 08046a1a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046a1c */ BL func_0800c604 \n\
/* 08046a20 */ BL func_08017578 \n\
/* 08046a24 */ POP {R0} \n\
/* 08046a26 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
