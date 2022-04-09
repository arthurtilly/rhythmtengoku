asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045304 \n\
/* 08045304 */ PUSH {LR} \n\
/* 08045306 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045308 */ BL func_0800c604 \n\
/* 0804530c */ BL func_08017578 \n\
/* 08045310 */ POP {R0} \n\
/* 08045312 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
