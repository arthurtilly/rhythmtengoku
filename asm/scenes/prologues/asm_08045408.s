asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045408 \n\
/* 08045408 */ PUSH {LR} \n\
/* 0804540a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804540c */ BL func_0800c604 \n\
/* 08045410 */ BL func_08017578 \n\
/* 08045414 */ POP {R0} \n\
/* 08045416 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
