asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08028318 \n\
/* 08028318 */ PUSH {LR} \n\
/* 0802831a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802831c */ BL func_0800c604 \n\
/* 08028320 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08028322 */ BL func_0800e044 \n\
/* 08028326 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08028328 */ BL func_0800e044 \n\
/* 0802832c */ POP {R0} \n\
/* 0802832e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
