asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036bec \n\
/* 08036bec */ PUSH {LR} \n\
/* 08036bee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036bf0 */ BL func_0800c604 \n\
/* 08036bf4 */ BL func_08017578 \n\
/* 08036bf8 */ POP {R0} \n\
/* 08036bfa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
