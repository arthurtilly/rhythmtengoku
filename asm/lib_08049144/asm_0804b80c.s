asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b80c \n\
/* 0804b80c */ PUSH {R4-R6, LR} \n\
/* 0804b80e */ SUB SP, 0x8 \n\
/* 0804b810 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804b812 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0804b814 */ LDR R1, [R6, 0x4] \n\
/* 0804b816 */ LDRB R4, [R5] \n\
/* 0804b818 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0804b81a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0804b81c */ BEQ branch_0804b824 \n\
/* 0804b81e */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0804b820 */ BEQ branch_0804b878 \n\
/* 0804b822 */ B branch_0804b88e \n\
 \n\
branch_0804b824: \n\
/* 0804b824 */ BL func_08049be4 \n\
/* 0804b828 */ LDR R0, =D_03005b3c \n\
/* 0804b82a */ STRB R4, [R0] \n\
/* 0804b82c */ LDR R1, =D_03005640 \n\
/* 0804b82e */ LDRB R0, [R5] \n\
/* 0804b830 */ LSLS R0, R0, 0x1 \n\
/* 0804b832 */ STRB R0, [R1] \n\
/* 0804b834 */ LDR R0, =D_03005b30 \n\
/* 0804b836 */ LDRB R1, [R5, 0x1] \n\
/* 0804b838 */ LSLS R1, R1, 0x19 \n\
/* 0804b83a */ LSRS R1, R1, 0x18 \n\
/* 0804b83c */ LDRB R2, [R5, 0x2] \n\
/* 0804b83e */ LSLS R2, R2, 0x19 \n\
/* 0804b840 */ LSRS R2, R2, 0x18 \n\
/* 0804b842 */ LDRB R3, [R5, 0x3] \n\
/* 0804b844 */ LSLS R3, R3, 0x19 \n\
/* 0804b846 */ LSRS R3, R3, 0x18 \n\
/* 0804b848 */ LDRB R4, [R5, 0x4] \n\
/* 0804b84a */ LSLS R4, R4, 0x19 \n\
/* 0804b84c */ LSRS R4, R4, 0x18 \n\
/* 0804b84e */ STR R4, [SP] \n\
/* 0804b850 */ LDRB R4, [R5, 0x5] \n\
/* 0804b852 */ LSLS R4, R4, 0x19 \n\
/* 0804b854 */ LSRS R4, R4, 0x18 \n\
/* 0804b856 */ STR R4, [SP, 0x4] \n\
/* 0804b858 */ BL func_0804ae1c \n\
/* 0804b85c */ LDRB R0, [R5, 0x6] \n\
/* 0804b85e */ BL func_08049b8c \n\
/* 0804b862 */ LDR R0, =D_03005644 \n\
/* 0804b864 */ STR R6, [R0] \n\
/* 0804b866 */ B branch_0804b88e \n\
\n\
.ltorg \n\
 \n\
branch_0804b878: \n\
/* 0804b878 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804b87a */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0804b87c */ ADDS R3, 0x1C @ Add 0x1C to R3 \n\
 \n\
branch_0804b87e: \n\
/* 0804b87e */ ADDS R1, R3, R2 @ Set R1 to R3 + R2 \n\
/* 0804b880 */ ADDS R0, R5, R2 @ Set R0 to R5 + R2 \n\
/* 0804b882 */ LDRB R0, [R0] \n\
/* 0804b884 */ SUBS R0, 0x40 @ Subtract 0x40 from R0 \n\
/* 0804b886 */ STRB R0, [R1] \n\
/* 0804b888 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0804b88a */ CMP R2, 0xB @ Compare R2 and 0xB \n\
/* 0804b88c */ BLS branch_0804b87e \n\
 \n\
branch_0804b88e: \n\
/* 0804b88e */ ADD SP, 0x8 \n\
/* 0804b890 */ POP {R4-R6} \n\
/* 0804b892 */ POP {R0} \n\
/* 0804b894 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
