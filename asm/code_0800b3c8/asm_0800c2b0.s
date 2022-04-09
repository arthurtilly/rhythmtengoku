asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c2b0 \n\
/* 0800c2b0 */ PUSH {R4, LR} \n\
/* 0800c2b2 */ BL func_08002634 \n\
/* 0800c2b6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800c2b8 */ BL func_0800c1b4 \n\
/* 0800c2bc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c2be */ LSLS R1, R1, 0x10 \n\
/* 0800c2c0 */ LSRS R1, R1, 0x10 \n\
/* 0800c2c2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800c2c4 */ BL func_08002894 \n\
/* 0800c2c8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800c2ca */ POP {R4} \n\
/* 0800c2cc */ POP {R1} \n\
/* 0800c2ce */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
