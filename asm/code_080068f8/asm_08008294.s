asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008294 \n\
/* 08008294 */ PUSH {R4-R7, LR} \n\
/* 08008296 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008298 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800829a */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0800829c */ ADDS R4, R4, R7 @ Set R4 to R4 + R7 \n\
/* 0800829e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080082a0 */ STRB R0, [R4] \n\
/* 080082a2 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080082a4 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 080082a6 */ BCS branch_080082c6 \n\
 \n\
branch_080082a8: \n\
/* 080082a8 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 080082aa */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080082ac */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080082ae */ BL __umodsi3 \n\
/* 080082b2 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 080082b4 */ STRB R0, [R4] \n\
/* 080082b6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080082b8 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080082ba */ BL __udivsi3 \n\
/* 080082be */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080082c0 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 080082c2 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 080082c4 */ BCC branch_080082a8 \n\
 \n\
branch_080082c6: \n\
/* 080082c6 */ POP {R4-R7} \n\
/* 080082c8 */ POP {R0} \n\
/* 080082ca */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
