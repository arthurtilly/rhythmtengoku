asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start read_sram_fast_rom \n\
/* 0804c870 */ PUSH {R4, R5, LR} \n\
/* 0804c872 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804c874 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804c876 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804c878 */ LDR R2, =0x04000204 @ !Hardware REG_WAITCNT \n\
/* 0804c87a */ LDRH R0, [R2] \n\
/* 0804c87c */ LDR R1, =0x0000fffc \n\
/* 0804c87e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804c880 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0804c882 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804c884 */ STRH R0, [R2] \n\
/* 0804c886 */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 0804c888 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804c88a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804c88c */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0804c88e */ BEQ branch_0804c8a0 \n\
/* 0804c890 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
 \n\
branch_0804c892: \n\
/* 0804c892 */ LDRB R0, [R5] \n\
/* 0804c894 */ STRB R0, [R4] \n\
/* 0804c896 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0804c898 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804c89a */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 0804c89c */ CMP R3, R1 @ Check R3 - R1 \n\
/* 0804c89e */ BNE branch_0804c892 \n\
 \n\
branch_0804c8a0: \n\
/* 0804c8a0 */ POP {R4, R5} \n\
/* 0804c8a2 */ POP {R0} \n\
/* 0804c8a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
