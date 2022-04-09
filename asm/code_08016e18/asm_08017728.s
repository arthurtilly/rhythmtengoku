asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017728 \n\
/* 08017728 */ PUSH {R4, R5, LR} \n\
/* 0801772a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801772c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0801772e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08017730 */ BL func_08017380 \n\
/* 08017734 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017736 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08017738 */ BL func_0801738c \n\
/* 0801773c */ POP {R4, R5} \n\
/* 0801773e */ POP {R1} \n\
/* 08017740 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
