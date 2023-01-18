asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e77c \n\
/* 0804e77c */ PUSH {R4-R7, LR} \n\
/* 0804e77e */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0804e780 */ LDR R0, =D_0300443c \n\
/* 0804e782 */ LDR R3, [R0] \n\
/* 0804e784 */ LDR R1, [R3] \n\
/* 0804e786 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0804e788 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0804e78a */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804e78c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804e78e */ BNE branch_0804e828 \n\
/* 0804e790 */ LDRH R0, [R3, 0x22] \n\
/* 0804e792 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e794 */ BNE branch_0804e828 \n\
/* 0804e796 */ LDR R5, [R3, 0x8] \n\
/* 0804e798 */ LDR R1, [R3, 0x4] \n\
/* 0804e79a */ LDR R0, [R3, 0x18] \n\
/* 0804e79c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804e79e */ BCS branch_0804e7a2 \n\
/* 0804e7a0 */ STR R1, [R3, 0x18] \n\
 \n\
branch_0804e7a2: \n\
/* 0804e7a2 */ LDR R2, [R6] \n\
/* 0804e7a4 */ LDR R0, [R2, 0x14] \n\
/* 0804e7a6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804e7a8 */ BLS branch_0804e7ac \n\
/* 0804e7aa */ STR R1, [R2, 0x14] \n\
 \n\
branch_0804e7ac: \n\
/* 0804e7ac */ LDR R2, [R6] \n\
/* 0804e7ae */ LDR R0, [R2, 0x1C] \n\
/* 0804e7b0 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 0804e7b2 */ STR R4, [R2, 0x1C] \n\
/* 0804e7b4 */ LDRH R0, [R2, 0x10] \n\
/* 0804e7b6 */ ADDS R3, R0, 0x1 @ Set R3 to R0 + 0x1 \n\
/* 0804e7b8 */ STRH R3, [R2, 0x10] \n\
/* 0804e7ba */ LDR R0, [R2, 0x14] \n\
/* 0804e7bc */ LDR R1, [R2, 0x18] \n\
/* 0804e7be */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804e7c0 */ CMP R0, 0x2F @ Compare R0 and 0x2F \n\
/* 0804e7c2 */ BHI branch_0804e812 \n\
/* 0804e7c4 */ LSLS R0, R3, 0x10 \n\
/* 0804e7c6 */ LSRS R0, R0, 0x10 \n\
/* 0804e7c8 */ CMP R0, 0x1D @ Compare R0 and 0x1D \n\
/* 0804e7ca */ BLS branch_0804e810 \n\
/* 0804e7cc */ LDRH R1, [R2, 0x10] \n\
/* 0804e7ce */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e7d0 */ BL __udivsi3 \n\
/* 0804e7d4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804e7d6 */ SUBS R0, R4, R5 @ Set R0 to R4 - R5 \n\
/* 0804e7d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e7da */ BGE branch_0804e7de \n\
/* 0804e7dc */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0804e7de: \n\
/* 0804e7de */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0804e7e0 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0804e7e2 */ BL clamp_int32 \n\
/* 0804e7e6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804e7e8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804e7ea */ LSLS R0, R0, 0x1 \n\
/* 0804e7ec */ BL __udivsi3 \n\
/* 0804e7f0 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0804e7f2 */ BCS branch_0804e7fc \n\
/* 0804e7f4 */ SUBS R5, R5, R0 @ Set R5 to R5 - R0 \n\
/* 0804e7f6 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0804e7f8 */ BCS branch_0804e7fc \n\
/* 0804e7fa */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
 \n\
branch_0804e7fc: \n\
/* 0804e7fc */ LDR R6, =D_0300443c \n\
/* 0804e7fe */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0804e800 */ BLS branch_0804e812 \n\
/* 0804e802 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0804e804 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0804e806 */ BLS branch_0804e812 \n\
/* 0804e808 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 0804e80a */ B branch_0804e812 \n\
\n\
.ltorg \n\
 \n\
branch_0804e810: \n\
/* 0804e810 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0804e812: \n\
/* 0804e812 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0804e814 */ BEQ branch_0804e824 \n\
/* 0804e816 */ LDR R0, [R6] \n\
/* 0804e818 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804e81a */ STRH R2, [R0, 0x10] \n\
/* 0804e81c */ LDR R1, =0x7fffffff \n\
/* 0804e81e */ STR R1, [R0, 0x18] \n\
/* 0804e820 */ STR R2, [R0, 0x14] \n\
/* 0804e822 */ STR R2, [R0, 0x1C] \n\
 \n\
branch_0804e824: \n\
/* 0804e824 */ LDR R0, [R6] \n\
/* 0804e826 */ STR R5, [R0, 0x8] \n\
 \n\
branch_0804e828: \n\
/* 0804e828 */ POP {R4-R7} \n\
/* 0804e82a */ POP {R0} \n\
/* 0804e82c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
