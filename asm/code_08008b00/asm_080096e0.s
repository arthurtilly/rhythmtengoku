asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080096e0 \n\
/* 080096e0 */ PUSH {R4, R5, LR} \n\
/* 080096e2 */ LDR R5, =D_03001201 \n\
/* 080096e4 */ LDRB R0, [R5] \n\
/* 080096e6 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080096e8 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 080096ea */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080096ec */ BEQ branch_0800972c \n\
/* 080096ee */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080096f0 */ BL func_080096a4 \n\
/* 080096f4 */ LDR R3, =D_03001204 \n\
/* 080096f6 */ LDR R0, [R3] \n\
/* 080096f8 */ LDR R1, =0xaaa \n\
/* 080096fa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080096fc */ STR R0, [R3] \n\
/* 080096fe */ LDR R1, =D_03001208 \n\
/* 08009700 */ LDR R2, [R1] \n\
/* 08009702 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 08009704 */ BCC branch_08009742 \n\
/* 08009706 */ LDRB R1, [R5] \n\
/* 08009708 */ MOVS R0, 0xFE @ Set R0 to 0xFE \n\
/* 0800970a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800970c */ STRB R0, [R5] \n\
/* 0800970e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08009710 */ LSLS R0, R0, 0x9 \n\
/* 08009712 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08009714 */ BLS branch_08009742 \n\
/* 08009716 */ STR R0, [R3] \n\
/* 08009718 */ B branch_08009742 \n\
\n\
.ltorg \n\
 \n\
branch_0800972c: \n\
/* 0800972c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800972e */ BL func_080096a4 \n\
/* 08009732 */ LDR R1, =D_03001204 \n\
/* 08009734 */ LDR R0, [R1] \n\
/* 08009736 */ LDR R2, =0xfffffc8b \n\
/* 08009738 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800973a */ STR R0, [R1] \n\
/* 0800973c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800973e */ BGE branch_08009742 \n\
/* 08009740 */ STR R4, [R1] \n\
 \n\
branch_08009742: \n\
/* 08009742 */ LDR R0, =D_03001210 \n\
/* 08009744 */ LDR R1, [R0] \n\
/* 08009746 */ LDR R0, =0xc3fff0 \n\
/* 08009748 */ STR R0, [R1] \n\
/* 0800974a */ POP {R4, R5} \n\
/* 0800974c */ POP {R0} \n\
/* 0800974e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
