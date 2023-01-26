asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c674 \n\
/* 0801c674 */ PUSH {R4, R5, LR} \n\
/* 0801c676 */ LDR R1, =D_030046a4 \n\
/* 0801c678 */ LDR R2, [R1] \n\
/* 0801c67a */ LDR R3, =D_089d84a0 \n\
/* 0801c67c */ LSLS R1, R0, 0x1 \n\
/* 0801c67e */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0801c680 */ LDRH R4, [R1] \n\
/* 0801c682 */ MOVS R5, 0xDE @ Set R5 to 0xDE \n\
/* 0801c684 */ LSLS R5, R5, 0x2 \n\
/* 0801c686 */ ADDS R3, R2, R5 @ Set R3 to R2 + R5 \n\
/* 0801c688 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801c68a */ STRH R4, [R3] \n\
/* 0801c68c */ LDRH R3, [R1] \n\
/* 0801c68e */ LDR R4, =0x376 \n\
/* 0801c690 */ ADDS R1, R2, R4 @ Set R1 to R2 + R4 \n\
/* 0801c692 */ STRH R3, [R1] \n\
/* 0801c694 */ LDR R3, =0x37a \n\
/* 0801c696 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0801c698 */ STRH R5, [R1] \n\
/* 0801c69a */ ADDS R4, 0x6 @ Add 0x6 to R4 \n\
/* 0801c69c */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0801c69e */ STRB R0, [R2] \n\
/* 0801c6a0 */ POP {R4, R5} \n\
/* 0801c6a2 */ POP {R0} \n\
/* 0801c6a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
