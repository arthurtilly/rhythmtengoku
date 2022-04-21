asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e870 \n\
/* 0804e870 */ PUSH {R4, R5, LR} \n\
/* 0804e872 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804e874 */ LDR R0, =D_030064d4 \n\
/* 0804e876 */ LDR R0, [R0] \n\
/* 0804e878 */ BL _call_via_r0 \n\
/* 0804e87c */ LDR R4, =D_0300443c \n\
/* 0804e87e */ LDR R1, [R4] \n\
/* 0804e880 */ STR R0, [R1, 0x4] \n\
/* 0804e882 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804e884 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0804e886 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0804e888 */ BEQ branch_0804e892 \n\
/* 0804e88a */ BL func_0804e6e4 \n\
/* 0804e88e */ BL func_0804e77c \n\
 \n\
branch_0804e892: \n\
/* 0804e892 */ BL func_0804e834 \n\
/* 0804e896 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804e898 */ STR R2, [R5] \n\
/* 0804e89a */ LDR R0, [R4] \n\
/* 0804e89c */ LDR R0, [R0] \n\
/* 0804e89e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804e8a0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e8a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e8a4 */ BEQ branch_0804e8aa \n\
/* 0804e8a6 */ NEGS R0, R2 @ Set R0 to -R2 \n\
/* 0804e8a8 */ STR R0, [R5] \n\
 \n\
branch_0804e8aa: \n\
/* 0804e8aa */ LDR R0, [R4] \n\
/* 0804e8ac */ LDRH R0, [R0, 0x22] \n\
/* 0804e8ae */ POP {R4, R5} \n\
/* 0804e8b0 */ POP {R1} \n\
/* 0804e8b2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
