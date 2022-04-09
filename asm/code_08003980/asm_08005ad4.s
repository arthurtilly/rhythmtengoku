asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005ad4 \n\
/* 08005ad4 */ PUSH {R4-R6, LR} \n\
/* 08005ad6 */ LDR R1, =D_03000900 \n\
/* 08005ad8 */ LDR R0, [R1, 0x4] \n\
/* 08005ada */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005adc */ BNE branch_08005b12 \n\
/* 08005ade */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08005ae0 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08005ae2 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08005ae4 */ LDR R0, =0xffff \n\
/* 08005ae6 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
 \n\
branch_08005ae8: \n\
/* 08005ae8 */ LDRH R0, [R4] \n\
/* 08005aea */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 08005aec */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08005aee */ BNE branch_08005b0a \n\
/* 08005af0 */ LDR R0, [R4, 0x4] \n\
/* 08005af2 */ LDR R1, [R0, 0x8] \n\
/* 08005af4 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005af6 */ BEQ branch_08005b0a \n\
/* 08005af8 */ LDR R0, [R4, 0xC] \n\
/* 08005afa */ BL _call_via_r1 \n\
/* 08005afe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005b00 */ BEQ branch_08005b0a \n\
/* 08005b02 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08005b04 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08005b06 */ BL func_08005a40 \n\
 \n\
branch_08005b0a: \n\
/* 08005b0a */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08005b0c */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 08005b0e */ CMP R5, 0x2F @ Compare R5 and 0x2F \n\
/* 08005b10 */ BLS branch_08005ae8 \n\
 \n\
branch_08005b12: \n\
/* 08005b12 */ POP {R4-R6} \n\
/* 08005b14 */ POP {R0} \n\
/* 08005b16 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
