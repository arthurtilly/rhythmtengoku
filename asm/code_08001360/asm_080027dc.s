asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080027dc \n\
/* 080027dc */ PUSH {R4-R7, LR} \n\
/* 080027de */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080027e0 */ LSLS R1, R1, 0x10 \n\
/* 080027e2 */ LSRS R7, R1, 0x10 \n\
/* 080027e4 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080027e6 */ BEQ branch_08002818 \n\
/* 080027e8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080027ea */ LDR R0, =D_08aa445c \n\
/* 080027ec */ LDRB R0, [R0] \n\
/* 080027ee */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080027f0 */ BCS branch_08002818 \n\
/* 080027f2 */ LDR R5, =D_08aa4460 \n\
 \n\
branch_080027f4: \n\
/* 080027f4 */ LDR R1, [R5] \n\
/* 080027f6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080027f8 */ LDR R0, [R1, 0xC] \n\
/* 080027fa */ CMP R0, R6 @ Check R0 - R6 \n\
/* 080027fc */ BNE branch_08002800 \n\
/* 080027fe */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_08002800: \n\
/* 08002800 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08002802 */ BEQ branch_0800280c \n\
/* 08002804 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08002806 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08002808 */ BL func_0804b7dc \n\
 \n\
branch_0800280c: \n\
/* 0800280c */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0800280e */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08002810 */ LDR R0, =D_08aa445c \n\
/* 08002812 */ LDRB R0, [R0] \n\
/* 08002814 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08002816 */ BCC branch_080027f4 \n\
 \n\
branch_08002818: \n\
/* 08002818 */ POP {R4-R7} \n\
/* 0800281a */ POP {R0} \n\
/* 0800281c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
