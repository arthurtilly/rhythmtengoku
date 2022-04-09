asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080474dc \n\
/* 080474dc */ PUSH {LR} \n\
/* 080474de */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080474e0 */ BL func_0800c604 \n\
/* 080474e4 */ BL func_08017578 \n\
/* 080474e8 */ POP {R0} \n\
/* 080474ea */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
