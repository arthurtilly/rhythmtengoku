asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080177f0 \n\
/* 080177f0 */ PUSH {R4, R5, LR} \n\
/* 080177f2 */ LDR R0, =D_03005380 \n\
/* 080177f4 */ LDR R0, [R0] \n\
/* 080177f6 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 080177f8 */ BL func_0804e0c4 \n\
/* 080177fc */ BL func_080178ac \n\
/* 08017800 */ LDR R5, =D_030046a4 \n\
/* 08017802 */ LDR R0, [R5] \n\
/* 08017804 */ LDR R0, [R0, 0x10] \n\
/* 08017806 */ LDR R0, [R0, 0xC] \n\
/* 08017808 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801780a */ BEQ branch_08017810 \n\
/* 0801780c */ BL _call_via_r0 \n\
 \n\
branch_08017810: \n\
/* 08017810 */ LDR R0, [R5] \n\
/* 08017812 */ LDR R0, [R0, 0x14] \n\
/* 08017814 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017816 */ BEQ branch_0801781c \n\
/* 08017818 */ BL mem_heap_dealloc \n\
 \n\
branch_0801781c: \n\
/* 0801781c */ LDR R1, [R5] \n\
/* 0801781e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08017820 */ ADDS R0, 0x7C @ Add 0x7C to R0 \n\
/* 08017822 */ LDRB R0, [R0] \n\
/* 08017824 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017826 */ BEQ branch_0801785c \n\
/* 08017828 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801782a */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 0801782c */ LDR R0, [R0] \n\
/* 0801782e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017830 */ BEQ branch_0801784e \n\
/* 08017832 */ BL func_08000608 \n\
/* 08017836 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08017838 */ LDR R0, [R5] \n\
/* 0801783a */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 0801783c */ LDR R0, [R0] \n\
/* 0801783e */ BL func_08000584 \n\
/* 08017842 */ LDR R0, [R5] \n\
/* 08017844 */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 08017846 */ LDR R0, [R0] \n\
/* 08017848 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801784a */ BL func_080006b0 \n\
 \n\
branch_0801784e: \n\
/* 0801784e */ BL func_08002838 \n\
/* 08017852 */ B branch_08017886 \n\
\n\
.ltorg \n\
 \n\
branch_0801785c: \n\
/* 0801785c */ LDR R2, =0x4a4 \n\
/* 0801785e */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08017860 */ LDRB R0, [R0] \n\
/* 08017862 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017864 */ BEQ branch_08017886 \n\
/* 08017866 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08017868 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801786a */ LDRB R0, [R0] \n\
/* 0801786c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801786e */ BNE branch_08017886 \n\
/* 08017870 */ LDR R4, =D_089cfd60 \n\
/* 08017872 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017874 */ BL func_08000584 \n\
/* 08017878 */ LDR R0, =D_089d7c18 \n\
/* 0801787a */ BL func_080005e0 \n\
/* 0801787e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08017880 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017882 */ BL func_080006b0 \n\
 \n\
branch_08017886: \n\
/* 08017886 */ BL func_08008628 \n\
/* 0801788a */ BL func_08004058 \n\
/* 0801788e */ MOVS R0, 0x23 @ Set R0 to 0x23 \n\
/* 08017890 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08017892 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08017894 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08017896 */ BL func_0804c340 \n\
/* 0801789a */ POP {R4, R5} \n\
/* 0801789c */ POP {R0} \n\
/* 0801789e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
