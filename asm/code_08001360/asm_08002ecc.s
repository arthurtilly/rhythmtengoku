asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002ecc \n\
/* 08002ecc */ PUSH {R4, LR} \n\
/* 08002ece */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002ed0 */ BL func_08002b10 \n\
/* 08002ed4 */ LDRB R1, [R4] \n\
/* 08002ed6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08002ed8 */ BICS R0, R1 @ Clear bits in R1 from R0 \n\
/* 08002eda */ POP {R4} \n\
/* 08002edc */ POP {R1} \n\
/* 08002ede */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
