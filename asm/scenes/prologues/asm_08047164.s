asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047164 \n\
/* 08047164 */ PUSH {LR} \n\
/* 08047166 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047168 */ BL func_0800c604 \n\
/* 0804716c */ BL func_08017578 \n\
/* 08047170 */ POP {R0} \n\
/* 08047172 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
