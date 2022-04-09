asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046234 \n\
/* 08046234 */ PUSH {LR} \n\
/* 08046236 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046238 */ BL func_0800c604 \n\
/* 0804623c */ BL func_08017578 \n\
/* 08046240 */ POP {R0} \n\
/* 08046242 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
