asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047ad0 \n\
/* 08047ad0 */ PUSH {LR} \n\
/* 08047ad2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047ad4 */ BL func_0800c604 \n\
/* 08047ad8 */ BL func_08017578 \n\
/* 08047adc */ POP {R0} \n\
/* 08047ade */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
