asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019750 \n\
/* 08019750 */ PUSH {R4, LR} \n\
/* 08019752 */ LDR R0, =D_089d7980 \n\
/* 08019754 */ LDR R0, [R0] \n\
/* 08019756 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08019758 */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 0801975a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801975c */ ADDS R4, 0x50 @ Add 0x50 to R4 \n\
/* 0801975e */ LDRH R0, [R4, 0x10] \n\
/* 08019760 */ CMP R0, 0xC0 @ Compare R0 and 0xC0 \n\
/* 08019762 */ BLS branch_0801976c \n\
/* 08019764 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08019766 */ B branch_08019798 \n\
\n\
.ltorg \n\
 \n\
branch_0801976c: \n\
/* 0801976c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801976e */ LDRH R1, [R2, 0x4] \n\
/* 08019770 */ CMP R1, 0x7 @ Compare R1 and 0x7 \n\
/* 08019772 */ BHI branch_08019776 \n\
/* 08019774 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
 \n\
branch_08019776: \n\
/* 08019776 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 08019778 */ BHI branch_0801977c \n\
/* 0801977a */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
 \n\
branch_0801977c: \n\
/* 0801977c */ LDRH R0, [R4, 0xA] \n\
/* 0801977e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019780 */ BNE branch_08019796 \n\
/* 08019782 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08019784 */ BNE branch_08019796 \n\
/* 08019786 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 08019788 */ LDRH R0, [R2, 0x12] \n\
/* 0801978a */ LDRH R1, [R2, 0x14] \n\
/* 0801978c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801978e */ LDR R1, =0x13f \n\
/* 08019790 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08019792 */ BGT branch_08019796 \n\
/* 08019794 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
 \n\
branch_08019796: \n\
/* 08019796 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
 \n\
branch_08019798: \n\
/* 08019798 */ POP {R4} \n\
/* 0801979a */ POP {R1} \n\
/* 0801979c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
