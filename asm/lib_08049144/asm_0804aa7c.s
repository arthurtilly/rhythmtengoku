asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804aa7c \n\
/* 0804aa7c */ PUSH {R4, R5, LR} \n\
/* 0804aa7e */ LSLS R2, R2, 0x18 \n\
/* 0804aa80 */ LSRS R2, R2, 0x18 \n\
/* 0804aa82 */ LDR R3, [R0, 0x18] \n\
/* 0804aa84 */ LSLS R4, R1, 0x5 \n\
/* 0804aa86 */ ADDS R4, R4, R3 @ Set R4 to R4 + R3 \n\
/* 0804aa88 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0804aa8a */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 0804aa8c */ LDRB R5, [R4, 0x4] \n\
/* 0804aa8e */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0804aa90 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0804aa92 */ ANDS R3, R5 @ Set R3 to R3 & R5 \n\
/* 0804aa94 */ ORRS R3, R2 @ Set R3 to R3 | R2 \n\
/* 0804aa96 */ STRB R3, [R4, 0x4] \n\
/* 0804aa98 */ BL func_0804aae0 \n\
/* 0804aa9c */ POP {R4, R5} \n\
/* 0804aa9e */ POP {R0} \n\
/* 0804aaa0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
