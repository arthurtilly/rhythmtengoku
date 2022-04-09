asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08028954 \n\
/* 08028954 */ PUSH {LR} \n\
/* 08028956 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08028958 */ BL func_0800c604 \n\
/* 0802895c */ BL func_08017578 \n\
/* 08028960 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08028962 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08028964 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028966 */ BL func_080041d0 \n\
/* 0802896a */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0802896c */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 0802896e */ BL func_0800425c \n\
/* 08028972 */ POP {R0} \n\
/* 08028974 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
