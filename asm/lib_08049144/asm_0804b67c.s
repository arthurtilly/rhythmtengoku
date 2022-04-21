asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b67c \n\
/* 0804b67c */ PUSH {R4-R6, LR} \n\
/* 0804b67e */ LSLS R0, R0, 0x10 \n\
/* 0804b680 */ LDR R1, =D_08aa06f8 \n\
/* 0804b682 */ LSRS R0, R0, 0xD \n\
/* 0804b684 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804b686 */ LDR R6, [R0] \n\
/* 0804b688 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804b68a */ LDR R0, =D_08aa4318 \n\
/* 0804b68c */ LDR R0, [R0] \n\
/* 0804b68e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804b690 */ BHI branch_0804b6b2 \n\
/* 0804b692 */ LDR R5, =D_08aa4324 \n\
 \n\
branch_0804b694: \n\
/* 0804b694 */ LDR R1, [R5] \n\
/* 0804b696 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804b698 */ BEQ branch_0804b6a6 \n\
/* 0804b69a */ LDR R0, [R1, 0xC] \n\
/* 0804b69c */ CMP R0, R6 @ Check R0 - R6 \n\
/* 0804b69e */ BNE branch_0804b6a6 \n\
/* 0804b6a0 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804b6a2 */ BL func_0804b5d8 \n\
 \n\
branch_0804b6a6: \n\
/* 0804b6a6 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0804b6a8 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804b6aa */ LDR R0, =D_08aa4318 \n\
/* 0804b6ac */ LDR R0, [R0] \n\
/* 0804b6ae */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804b6b0 */ BLS branch_0804b694 \n\
 \n\
branch_0804b6b2: \n\
/* 0804b6b2 */ POP {R4-R6} \n\
/* 0804b6b4 */ POP {R0} \n\
/* 0804b6b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
