asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008658 \n\
/* 08008658 */ PUSH {R4, LR} \n\
/* 0800865a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800865c */ LDR R0, =D_0300536c  \n\
/* 0800865e */ LDR R4, [R0] \n\
/* 08008660 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08008662 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08008664 */ BEQ branch_08008696 \n\
 \n\
branch_08008666: \n\
/* 08008666 */ LDR R0, [R4] \n\
/* 08008668 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 0800866a */ BNE branch_0800868e \n\
/* 0800866c */ LDR R0, [R2] \n\
/* 0800866e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08008670 */ BNE branch_0800867c \n\
/* 08008672 */ LDR R0, [R4, 0x14] \n\
/* 08008674 */ STR R0, [R2] \n\
/* 08008676 */ B branch_08008680 \n\
\n\
.ltorg \n\
 \n\
branch_0800867c: \n\
/* 0800867c */ LDR R0, [R4, 0x14] \n\
/* 0800867e */ STR R0, [R1, 0x14] \n\
 \n\
branch_08008680: \n\
/* 08008680 */ LDR R0, [R4, 0x4] \n\
/* 08008682 */ BL mem_heap_dealloc \n\
/* 08008686 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08008688 */ BL mem_heap_dealloc \n\
/* 0800868c */ B branch_08008696 \n\
 \n\
branch_0800868e: \n\
/* 0800868e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08008690 */ LDR R4, [R4, 0x14] \n\
/* 08008692 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08008694 */ BNE branch_08008666 \n\
 \n\
branch_08008696: \n\
/* 08008696 */ POP {R4} \n\
/* 08008698 */ POP {R0} \n\
/* 0800869a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
