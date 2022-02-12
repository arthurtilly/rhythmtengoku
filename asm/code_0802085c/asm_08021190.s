asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021190 \n\
/* 08021190 */ PUSH {LR} \n\
/* 08021192 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08021194 */ BL func_0800c604 \n\
/* 08021198 */ BL func_08017578 \n\
/* 0802119c */ BL func_080221cc \n\
/* 080211a0 */ POP {R0} \n\
/* 080211a2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
