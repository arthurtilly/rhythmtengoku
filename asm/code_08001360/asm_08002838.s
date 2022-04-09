asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002838 \n\
/* 08002838 */ PUSH {R4-R6, LR} \n\
/* 0800283a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800283c */ LDR R0, =D_08aa445c \n\
/* 0800283e */ LDRB R1, [R0] \n\
/* 08002840 */ CMP R4, R1 @ Check R4 - R1 \n\
/* 08002842 */ BCS branch_0800285a \n\
/* 08002844 */ LDR R5, =D_08aa4460 \n\
/* 08002846 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
 \n\
branch_08002848: \n\
/* 08002848 */ LDR R0, [R5] \n\
/* 0800284a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800284c */ BL func_0804b7dc \n\
/* 08002850 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 08002852 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08002854 */ LDRB R0, [R6] \n\
/* 08002856 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08002858 */ BCC branch_08002848 \n\
 \n\
branch_0800285a: \n\
/* 0800285a */ POP {R4-R6} \n\
/* 0800285c */ POP {R0} \n\
/* 0800285e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
