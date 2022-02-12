asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080207f8 \n\
/* 080207f8 */ PUSH {R4, LR} \n\
/* 080207fa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080207fc */ BL func_080207d0 \n\
/* 08020800 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08020802 */ BL func_080207ec \n\
/* 08020806 */ POP {R4} \n\
/* 08020808 */ POP {R0} \n\
/* 0802080a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
