asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f328 \n\
/* 0801f328 */ PUSH {LR} \n\
/* 0801f32a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f32c */ BL func_0800c604 \n\
/* 0801f330 */ BL func_08017578 \n\
/* 0801f334 */ POP {R0} \n\
/* 0801f336 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
