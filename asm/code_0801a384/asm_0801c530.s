asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c530 \n\
/* 0801c530 */ PUSH {R4-R6, LR} \n\
/* 0801c532 */ LDR R5, =D_030046a4 \n\
/* 0801c534 */ LDR R0, [R5] \n\
/* 0801c536 */ MOVS R4, 0xD8 @ Set R4 to 0xD8 \n\
/* 0801c538 */ LSLS R4, R4, 0x2 \n\
/* 0801c53a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801c53c */ LDR R0, [R0] \n\
/* 0801c53e */ BL func_0800b118 \n\
/* 0801c542 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0801c544 */ LDR R0, [R5] \n\
/* 0801c546 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801c548 */ LDR R0, [R0] \n\
/* 0801c54a */ BL func_0800b12c \n\
/* 0801c54e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801c550 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801c552 */ BL func_0801c51c \n\
/* 0801c556 */ LDR R4, =D_03001547 \n\
/* 0801c558 */ LDR R0, [R5] \n\
/* 0801c55a */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801c55c */ LSLS R1, R1, 0x2 \n\
/* 0801c55e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c560 */ LDR R0, [R0] \n\
/* 0801c562 */ BL func_0800b118 \n\
/* 0801c566 */ STRB R0, [R4] \n\
/* 0801c568 */ LDR R6, =D_03001548 \n\
/* 0801c56a */ LDR R0, [R5] \n\
/* 0801c56c */ MOVS R4, 0xDA @ Set R4 to 0xDA \n\
/* 0801c56e */ LSLS R4, R4, 0x2 \n\
/* 0801c570 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801c572 */ LDR R0, [R0] \n\
/* 0801c574 */ BL func_0800b118 \n\
/* 0801c578 */ STRB R0, [R6] \n\
/* 0801c57a */ LDR R6, =D_03001549 \n\
/* 0801c57c */ LDR R0, [R5] \n\
/* 0801c57e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801c580 */ LDR R0, [R0] \n\
/* 0801c582 */ BL func_0800b12c \n\
/* 0801c586 */ STRB R0, [R6] \n\
/* 0801c588 */ POP {R4-R6} \n\
/* 0801c58a */ POP {R0} \n\
/* 0801c58c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
