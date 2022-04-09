asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045208 \n\
/* 08045208 */ PUSH {LR} \n\
/* 0804520a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804520c */ BL func_0800c604 \n\
/* 08045210 */ BL func_08017578 \n\
/* 08045214 */ POP {R0} \n\
/* 08045216 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
