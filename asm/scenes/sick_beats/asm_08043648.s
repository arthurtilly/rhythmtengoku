asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043648 \n\
/* 08043648 */ PUSH {LR} \n\
/* 0804364a */ SUB SP, 0x14 \n\
/* 0804364c */ LDR R0, =D_03005380 \n\
/* 0804364e */ LDR R0, [R0] \n\
/* 08043650 */ LDR R1, =D_08931f4c \n\
/* 08043652 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 08043654 */ STR R2, [SP] \n\
/* 08043656 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08043658 */ LSLS R2, R2, 0x3 \n\
/* 0804365a */ STR R2, [SP, 0x4] \n\
/* 0804365c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804365e */ STR R2, [SP, 0x8] \n\
/* 08043660 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043662 */ STR R2, [SP, 0xC] \n\
/* 08043664 */ STR R2, [SP, 0x10] \n\
/* 08043666 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08043668 */ BL func_0804d160 \n\
/* 0804366c */ LDR R0, =D_030055d0 \n\
/* 0804366e */ LDR R1, [R0] \n\
/* 08043670 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043672 */ LSLS R0, R0, 0x2 \n\
/* 08043674 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08043676 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 08043678 */ STRH R0, [R2] \n\
/* 0804367a */ LDR R0, =D_030046a8 \n\
/* 0804367c */ LDR R0, [R0] \n\
/* 0804367e */ MOVS R2, 0xAB @ Set R2 to 0xAB \n\
/* 08043680 */ LSLS R2, R2, 0x2 \n\
/* 08043682 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08043684 */ SUBS R2, 0x92 @ Subtract 0x92 from R2 \n\
/* 08043686 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08043688 */ LDRH R1, [R1] \n\
/* 0804368a */ STR R1, [R0] \n\
/* 0804368c */ ADD SP, 0x14 \n\
/* 0804368e */ POP {R0} \n\
/* 08043690 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
