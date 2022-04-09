asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046f5c \n\
/* 08046f5c */ PUSH {LR} \n\
/* 08046f5e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046f60 */ BL func_0800c604 \n\
/* 08046f64 */ BL func_08017578 \n\
/* 08046f68 */ POP {R0} \n\
/* 08046f6a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
