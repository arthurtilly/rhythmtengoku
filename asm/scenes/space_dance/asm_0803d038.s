asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d038 \n\
/* 0803d038 */ PUSH {LR} \n\
/* 0803d03a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d03c */ BL func_0800c604 \n\
/* 0803d040 */ BL func_08017578 \n\
/* 0803d044 */ POP {R0} \n\
/* 0803d046 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
