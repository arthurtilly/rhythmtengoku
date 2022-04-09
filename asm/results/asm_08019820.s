asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019820 \n\
/* 08019820 */ PUSH {LR} \n\
/* 08019822 */ LDR R0, =D_089d7980 \n\
/* 08019824 */ LDR R0, [R0] \n\
/* 08019826 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019828 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 0801982a */ LDRH R0, [R1, 0x10] \n\
/* 0801982c */ CMP R0, 0xC0 @ Compare R0 and 0xC0 \n\
/* 0801982e */ BLS branch_08019838 \n\
/* 08019830 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08019832 */ B branch_08019862 \n\
\n\
.ltorg \n\
 \n\
branch_08019838: \n\
/* 08019838 */ LDRH R0, [R1, 0x12] \n\
/* 0801983a */ LDRH R1, [R1, 0x14] \n\
/* 0801983c */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0801983e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019840 */ LDR R0, =0x73f \n\
/* 08019842 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08019844 */ BHI branch_08019848 \n\
/* 08019846 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_08019848: \n\
/* 08019848 */ LDR R0, =0x53f \n\
/* 0801984a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0801984c */ BHI branch_08019850 \n\
/* 0801984e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
 \n\
branch_08019850: \n\
/* 08019850 */ LDR R0, =0x33f \n\
/* 08019852 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08019854 */ BHI branch_08019858 \n\
/* 08019856 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
 \n\
branch_08019858: \n\
/* 08019858 */ LDR R0, =0x13f \n\
/* 0801985a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0801985c */ BHI branch_08019860 \n\
/* 0801985e */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
 \n\
branch_08019860: \n\
/* 08019860 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
 \n\
branch_08019862: \n\
/* 08019862 */ POP {R1} \n\
/* 08019864 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
