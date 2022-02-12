asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802bbfc \n\
/* 0802bbfc */ PUSH {LR} \n\
/* 0802bbfe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802bc00 */ BL func_0800c604 \n\
/* 0802bc04 */ BL func_08017578 \n\
/* 0802bc08 */ POP {R0} \n\
/* 0802bc0a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
