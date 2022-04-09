asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801446c \n\
/* 0801446c */ PUSH {LR} \n\
/* 0801446e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08014470 */ MOVS R3, 0xFF @ Set R3 to 0xFF \n\
/* 08014472 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08014474 */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08014476 */ LSRS R2, R2, 0x8 \n\
/* 08014478 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801447a */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0801447c */ LSRS R2, R2, 0x8 \n\
/* 0801447e */ BL func_080141f8 \n\
/* 08014482 */ POP {R0} \n\
/* 08014484 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
