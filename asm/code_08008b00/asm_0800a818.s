asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a818 \n\
/* 0800a818 */ PUSH {R4-R6, LR} \n\
/* 0800a81a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800a81c */ LDRB R0, [R4, 0x3] \n\
/* 0800a81e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a820 */ BEQ branch_0800a88a \n\
/* 0800a822 */ LDR R2, [R4, 0x34] \n\
/* 0800a824 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800a826 */ BNE branch_0800a82c \n\
/* 0800a828 */ STRB R2, [R4, 0x3] \n\
/* 0800a82a */ B branch_0800a88a \n\
 \n\
branch_0800a82c: \n\
/* 0800a82c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800a82e */ ADDS R1, 0x3A @ Add 0x3A to R1 \n\
/* 0800a830 */ LDRB R6, [R1] \n\
/* 0800a832 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800a834 */ BEQ branch_0800a83c \n\
/* 0800a836 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800a838 */ STRB R0, [R1] \n\
/* 0800a83a */ B branch_0800a88a \n\
 \n\
branch_0800a83c: \n\
/* 0800a83c */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 0800a83e */ ADDS R5, 0x2A @ Add 0x2A to R5 \n\
/* 0800a840 */ LDRB R1, [R5] \n\
/* 0800a842 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a844 */ BL func_0800a4a8 \n\
/* 0800a848 */ STR R0, [R4, 0x34] \n\
/* 0800a84a */ LDRB R0, [R5] \n\
/* 0800a84c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800a84e */ STRB R0, [R5] \n\
/* 0800a850 */ LDR R0, [R4, 0x34] \n\
/* 0800a852 */ LDRB R0, [R0] \n\
/* 0800a854 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a856 */ BEQ branch_0800a862 \n\
/* 0800a858 */ LDRB R1, [R5] \n\
/* 0800a85a */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0800a85c */ LDRSH R0, [R4, R2] \n\
/* 0800a85e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800a860 */ BLT branch_0800a88a \n\
 \n\
branch_0800a862: \n\
/* 0800a862 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a864 */ BL func_0800a6a0 \n\
/* 0800a868 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a86a */ ADDS R0, 0x56 @ Add 0x56 to R0 \n\
/* 0800a86c */ LDRB R1, [R0] \n\
/* 0800a86e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a870 */ BL func_0800a794 \n\
/* 0800a874 */ STRB R6, [R4, 0x3] \n\
/* 0800a876 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800a878 */ ADDS R1, 0x39 @ Add 0x39 to R1 \n\
/* 0800a87a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800a87c */ STRB R0, [R1] \n\
/* 0800a87e */ LDR R1, [R4, 0x3C] \n\
/* 0800a880 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800a882 */ BEQ branch_0800a88a \n\
/* 0800a884 */ LDR R0, [R4, 0x40] \n\
/* 0800a886 */ BL _call_via_r1 \n\
 \n\
branch_0800a88a: \n\
/* 0800a88a */ POP {R4-R6} \n\
/* 0800a88c */ POP {R0} \n\
/* 0800a88e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
