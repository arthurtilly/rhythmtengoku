asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ad9c \n\
/* 0801ad9c */ PUSH {R4, LR} \n\
/* 0801ad9e */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0801ada0 */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 0801ada2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ada4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801ada6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801ada8 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801adaa */ BL func_0801adf0 \n\
/* 0801adae */ MOVS R0, 0x21 @ Set R0 to 0x21 \n\
/* 0801adb0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801adb2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801adb4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801adb6 */ BL func_0801adf0 \n\
/* 0801adba */ MOVS R0, 0x25 @ Set R0 to 0x25 \n\
/* 0801adbc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801adbe */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801adc0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801adc2 */ BL func_0801adf0 \n\
/* 0801adc6 */ MOVS R0, 0x22 @ Set R0 to 0x22 \n\
/* 0801adc8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801adca */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801adcc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801adce */ BL func_0801adf0 \n\
/* 0801add2 */ MOVS R0, 0x23 @ Set R0 to 0x23 \n\
/* 0801add4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801add6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801add8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801adda */ BL func_0801adf0 \n\
/* 0801adde */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0801ade0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801ade2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801ade4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801ade6 */ BL func_0801adf0 \n\
/* 0801adea */ POP {R4} \n\
/* 0801adec */ POP {R0} \n\
/* 0801adee */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
