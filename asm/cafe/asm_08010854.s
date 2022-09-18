asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010854 \n\
/* 08010854 */ PUSH {R4, R5, LR} \n\
/* 08010856 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010858 */ LDR R3, =D_030055a0 \n\
/* 0801085a */ LDR R5, =D_030046a8 \n\
/* 0801085c */ MOVS R4, 0xFF @ Set R4 to 0xFF \n\
/* 0801085e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
 \n\
branch_08010860: \n\
/* 08010860 */ LDRB R0, [R1] \n\
/* 08010862 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 08010864 */ STRB R0, [R1] \n\
/* 08010866 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08010868 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0801086a */ CMP R2, 0x4 @ Compare R2 and 0x4 \n\
/* 0801086c */ BLS branch_08010860 \n\
/* 0801086e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08010870 */ ADDS R0, 0x29 @ Add 0x29 to R0 \n\
/* 08010872 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010874 */ STRB R2, [R0] \n\
/* 08010876 */ LDR R0, [R5] \n\
/* 08010878 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801087a */ ADDS R1, 0xBE @ Add 0xBE to R1 \n\
/* 0801087c */ LDRH R1, [R1] \n\
/* 0801087e */ STRH R1, [R3, 0x2A] \n\
/* 08010880 */ LDR R1, =0x29e \n\
/* 08010882 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08010884 */ LDRB R1, [R0] \n\
/* 08010886 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08010888 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0801088a */ STRB R1, [R0] \n\
/* 0801088c */ STRH R2, [R3, 0x2C] \n\
/* 0801088e */ POP {R4, R5} \n\
/* 08010890 */ POP {R0} \n\
/* 08010892 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
