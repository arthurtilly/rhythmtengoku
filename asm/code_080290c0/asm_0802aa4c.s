asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802aa4c \n\
/* 0802aa4c */ PUSH {R4, R5, LR} \n\
/* 0802aa4e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802aa50 */ LDR R5, =D_08aa4460 \n\
 \n\
branch_0802aa52: \n\
/* 0802aa52 */ LDR R0, =D_03001568 \n\
/* 0802aa54 */ LDR R0, [R0] \n\
/* 0802aa56 */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 0802aa58 */ LDRB R0, [R1] \n\
/* 0802aa5a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802aa5c */ BEQ branch_0802aa6e \n\
/* 0802aa5e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802aa60 */ STRB R0, [R1] \n\
/* 0802aa62 */ LSLS R0, R0, 0x18 \n\
/* 0802aa64 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802aa66 */ BNE branch_0802aa6e \n\
/* 0802aa68 */ LDR R0, [R5] \n\
/* 0802aa6a */ BL func_08002828 \n\
 \n\
branch_0802aa6e: \n\
/* 0802aa6e */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0802aa70 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802aa72 */ CMP R4, 0x9 @ Compare R4 and 0x9 \n\
/* 0802aa74 */ BLS branch_0802aa52 \n\
/* 0802aa76 */ POP {R4, R5} \n\
/* 0802aa78 */ POP {R0} \n\
/* 0802aa7a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
