asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018630 \n\
/* 08018630 */ PUSH {R4, LR} \n\
/* 08018632 */ LDR R3, =D_030046a4 \n\
/* 08018634 */ LDR R1, [R3] \n\
/* 08018636 */ MOVS R4, 0x93 @ Set R4 to 0x93 \n\
/* 08018638 */ LSLS R4, R4, 0x3 \n\
/* 0801863a */ ADDS R2, R1, R4 @ Set R2 to R1 + R4 \n\
/* 0801863c */ STR R0, [R2] \n\
/* 0801863e */ LDR R0, =0x49c \n\
/* 08018640 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08018642 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018644 */ STRB R2, [R1] \n\
/* 08018646 */ LDR R0, [R3] \n\
/* 08018648 */ LDR R1, =0x49d \n\
/* 0801864a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801864c */ STRB R2, [R0] \n\
/* 0801864e */ POP {R4} \n\
/* 08018650 */ POP {R0} \n\
/* 08018652 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
