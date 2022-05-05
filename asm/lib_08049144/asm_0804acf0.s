asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804acf0 \n\
/* 0804acf0 */ PUSH {R4-R6, LR} \n\
/* 0804acf2 */ LDR R4, [R0, 0x18] \n\
/* 0804acf4 */ LSLS R5, R1, 0x5 \n\
/* 0804acf6 */ ADDS R4, R5, R4 @ Set R4 to R5 + R4 \n\
/* 0804acf8 */ LSLS R2, R2, 0x7 \n\
/* 0804acfa */ LDRB R6, [R4, 0x3] \n\
/* 0804acfc */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0804acfe */ ANDS R3, R6 @ Set R3 to R3 & R6 \n\
/* 0804ad00 */ ORRS R3, R2 @ Set R3 to R3 | R2 \n\
/* 0804ad02 */ STRB R3, [R4, 0x3] \n\
/* 0804ad04 */ LDR R2, [R0, 0x18] \n\
/* 0804ad06 */ ADDS R5, R5, R2 @ Set R5 to R5 + R2 \n\
/* 0804ad08 */ LDRB R2, [R5, 0x4] \n\
/* 0804ad0a */ LSLS R2, R2, 0x19 \n\
/* 0804ad0c */ LSRS R2, R2, 0x19 \n\
/* 0804ad0e */ BL func_0804aa7c \n\
/* 0804ad12 */ POP {R4-R6} \n\
/* 0804ad14 */ POP {R0} \n\
/* 0804ad16 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
