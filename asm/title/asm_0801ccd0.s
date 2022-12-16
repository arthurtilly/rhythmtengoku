asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ccd0 \n\
/* 0801ccd0 */ PUSH {R4-R7, LR} \n\
/* 0801ccd2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801ccd4 */ LDR R7, =D_030046a4 \n\
/* 0801ccd6 */ MOVS R6, 0x14 @ Set R6 to 0x14 \n\
 \n\
branch_0801ccd8: \n\
/* 0801ccd8 */ LDR R0, [R7] \n\
/* 0801ccda */ ADDS R4, R0, R6 @ Set R4 to R0 + R6 \n\
/* 0801ccdc */ LDRB R0, [R4] \n\
/* 0801ccde */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801cce0 */ BEQ branch_0801cd02 \n\
/* 0801cce2 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0801cce4 */ LSLS R1, R1, 0x3 \n\
/* 0801cce6 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801cce8 */ LDRH R1, [R4, 0x18] \n\
/* 0801ccea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801ccec */ STRH R0, [R4, 0x18] \n\
/* 0801ccee */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801ccf0 */ BL agb_random \n\
/* 0801ccf4 */ LDRH R1, [R4, 0x16] \n\
/* 0801ccf6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801ccf8 */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 0801ccfa */ STRH R0, [R4, 0x14] \n\
/* 0801ccfc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801ccfe */ BL func_0801ca34 \n\
 \n\
branch_0801cd02: \n\
/* 0801cd02 */ ADDS R6, 0x1C @ Add 0x1C to R6 \n\
/* 0801cd04 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0801cd06 */ CMP R5, 0x4 @ Compare R5 and 0x4 \n\
/* 0801cd08 */ BLS branch_0801ccd8 \n\
/* 0801cd0a */ POP {R4-R7} \n\
/* 0801cd0c */ POP {R0} \n\
/* 0801cd0e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
