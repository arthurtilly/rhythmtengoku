asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018660 \n\
/* 08018660 */ PUSH {R4, LR} \n\
/* 08018662 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08018664 */ LDR R4, =D_030046a4 \n\
/* 08018666 */ LDR R0, [R4] \n\
/* 08018668 */ MOVS R2, 0x93 @ Set R2 to 0x93 \n\
/* 0801866a */ LSLS R2, R2, 0x3 \n\
/* 0801866c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801866e */ LDR R0, [R0] \n\
/* 08018670 */ BL func_0800aa4c \n\
/* 08018674 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018676 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08018678 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801867a */ BL func_080185d0 \n\
/* 0801867e */ LDR R0, [R4] \n\
/* 08018680 */ LDR R1, =0x49d \n\
/* 08018682 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018684 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08018686 */ STRB R1, [R0] \n\
/* 08018688 */ POP {R4} \n\
/* 0801868a */ POP {R0} \n\
/* 0801868c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
