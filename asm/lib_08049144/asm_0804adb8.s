asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804adb8 \n\
/* 0804adb8 */ PUSH {R4, R5, LR} \n\
/* 0804adba */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804adbc */ STRB R1, [R5, 0x5] \n\
/* 0804adbe */ LDRB R0, [R5, 0x14] \n\
/* 0804adc0 */ LSLS R0, R0, 0x1B \n\
/* 0804adc2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804adc4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804adc6 */ BEQ branch_0804addc \n\
 \n\
branch_0804adc8: \n\
/* 0804adc8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804adca */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804adcc */ BL func_0804aae0 \n\
/* 0804add0 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804add2 */ LDRB R0, [R5, 0x14] \n\
/* 0804add4 */ LSLS R0, R0, 0x1B \n\
/* 0804add6 */ LSRS R0, R0, 0x1B \n\
/* 0804add8 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804adda */ BCC branch_0804adc8 \n\
 \n\
branch_0804addc: \n\
/* 0804addc */ POP {R4, R5} \n\
/* 0804adde */ POP {R0} \n\
/* 0804ade0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
