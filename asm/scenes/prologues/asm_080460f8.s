asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080460f8 \n\
/* 080460f8 */ PUSH {LR} \n\
/* 080460fa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080460fc */ BL func_0800c604 \n\
/* 08046100 */ BL func_08017578 \n\
/* 08046104 */ POP {R0} \n\
/* 08046106 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
