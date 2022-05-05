asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e834 \n\
/* 0804e834 */ PUSH {R4, R5, LR} \n\
/* 0804e836 */ LDR R5, =D_0300443c \n\
/* 0804e838 */ LDR R3, [R5] \n\
/* 0804e83a */ LDR R4, [R3, 0x4] \n\
/* 0804e83c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804e83e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804e840 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0804e842 */ BEQ branch_0804e856 \n\
/* 0804e844 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804e846 */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 0804e848 */ LDR R1, [R3, 0xC] \n\
/* 0804e84a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804e84c */ LDRB R2, [R2] \n\
/* 0804e84e */ ASRS R0, R2 @ Set R0 to R0 << R2 (arithmetic) \n\
/* 0804e850 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804e852 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0804e854 */ STR R1, [R3, 0xC] \n\
 \n\
branch_0804e856: \n\
/* 0804e856 */ LDR R1, [R5] \n\
/* 0804e858 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0804e85a */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 0804e85c */ LDR R0, [R1, 0xC] \n\
/* 0804e85e */ LDRB R2, [R2] \n\
/* 0804e860 */ ASRS R0, R2 @ Set R0 to R0 << R2 (arithmetic) \n\
/* 0804e862 */ LDR R1, [R1, 0x8] \n\
/* 0804e864 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804e866 */ POP {R4, R5} \n\
/* 0804e868 */ POP {R1} \n\
/* 0804e86a */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
