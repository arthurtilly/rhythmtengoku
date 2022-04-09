asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f638 \n\
/* 0801f638 */ PUSH {R4-R6, LR} \n\
/* 0801f63a */ SUB SP, 0xC \n\
/* 0801f63c */ LDR R6, =D_030055d0 \n\
/* 0801f63e */ LDR R0, [R6] \n\
/* 0801f640 */ ADDS R0, 0x72 @ Add 0x72 to R0 \n\
/* 0801f642 */ LDRB R5, [R0] \n\
/* 0801f644 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801f646 */ BNE branch_0801f670 \n\
/* 0801f648 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0801f64a */ STRB R4, [R0] \n\
/* 0801f64c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801f64e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f650 */ BL func_08017338 \n\
/* 0801f654 */ LDR R0, =D_03005380 \n\
/* 0801f656 */ LDR R0, [R0] \n\
/* 0801f658 */ LDR R1, [R6] \n\
/* 0801f65a */ ADDS R1, 0x70 @ Add 0x70 to R1 \n\
/* 0801f65c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f65e */ LDRSH R1, [R1, R2] \n\
/* 0801f660 */ LDR R2, =D_088a0ca0 \n\
/* 0801f662 */ STR R4, [SP] \n\
/* 0801f664 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0801f666 */ STR R3, [SP, 0x4] \n\
/* 0801f668 */ STR R5, [SP, 0x8] \n\
/* 0801f66a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f66c */ BL func_0804d8f8 \n\
 \n\
branch_0801f670: \n\
/* 0801f670 */ ADD SP, 0xC \n\
/* 0801f672 */ POP {R4-R6} \n\
/* 0801f674 */ POP {R0} \n\
/* 0801f676 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
