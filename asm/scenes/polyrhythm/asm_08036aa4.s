asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036aa4 \n\
/* 08036aa4 */ PUSH {R4-R6, LR} \n\
/* 08036aa6 */ SUB SP, 0x4 \n\
/* 08036aa8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08036aaa */ LDR R0, =D_030055d0 \n\
/* 08036aac */ LDR R0, [R0] \n\
/* 08036aae */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 08036ab0 */ LSLS R1, R1, 0x1 \n\
/* 08036ab2 */ ADDS R6, R0, R1 @ Set R6 to R0 + R1 \n\
/* 08036ab4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08036ab6 */ B branch_08036ac4 \n\
\n\
.ltorg \n\
 \n\
branch_08036abc: \n\
/* 08036abc */ ADDS R6, 0x3C @ Add 0x3C to R6 \n\
/* 08036abe */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08036ac0 */ CMP R1, 0x7 @ Compare R1 and 0x7 \n\
/* 08036ac2 */ BHI branch_08036b30 \n\
 \n\
branch_08036ac4: \n\
/* 08036ac4 */ LDRB R0, [R6] \n\
/* 08036ac6 */ LSLS R0, R0, 0x1F \n\
/* 08036ac8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036aca */ BNE branch_08036abc \n\
/* 08036acc */ CMP R1, 0x7 @ Compare R1 and 0x7 \n\
/* 08036ace */ BHI branch_08036b30 \n\
/* 08036ad0 */ LDRB R0, [R6] \n\
/* 08036ad2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08036ad4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08036ad6 */ STRB R0, [R6] \n\
/* 08036ad8 */ LDRB R1, [R6, 0x1] \n\
/* 08036ada */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08036adc */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08036ade */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036ae0 */ STRB R0, [R6, 0x1] \n\
/* 08036ae2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08036ae4 */ STR R5, [R6, 0x14] \n\
/* 08036ae6 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08036ae8 */ STR R0, [R6, 0x10] \n\
/* 08036aea */ STR R5, [R6, 0x30] \n\
/* 08036aec */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 08036aee */ LSLS R0, R0, 0x1 \n\
/* 08036af0 */ BL func_0800c3a4 \n\
/* 08036af4 */ STR R0, [R6, 0x34] \n\
/* 08036af6 */ LSLS R2, R4, 0x7 \n\
/* 08036af8 */ LDRB R1, [R6] \n\
/* 08036afa */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08036afc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036afe */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08036b00 */ MOVS R1, 0x71 @ Set R1 to 0x71 \n\
/* 08036b02 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08036b04 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036b06 */ STRB R0, [R6] \n\
/* 08036b08 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08036b0a */ BL func_0800c3a4 \n\
/* 08036b0e */ STRH R0, [R6, 0x38] \n\
/* 08036b10 */ LDR R4, =D_03005380 \n\
/* 08036b12 */ LDR R0, [R4] \n\
/* 08036b14 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036b16 */ LDRSH R1, [R6, R2] \n\
/* 08036b18 */ STR R5, [SP] \n\
/* 08036b1a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08036b1c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08036b1e */ BL func_0804dae0 \n\
/* 08036b22 */ LDR R0, [R4] \n\
/* 08036b24 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036b26 */ LDRSH R1, [R6, R2] \n\
/* 08036b28 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08036b2a */ LSLS R2, R2, 0x2 \n\
/* 08036b2c */ BL func_0804dcb8 \n\
 \n\
branch_08036b30: \n\
/* 08036b30 */ ADD SP, 0x4 \n\
/* 08036b32 */ POP {R4-R6} \n\
/* 08036b34 */ POP {R0} \n\
/* 08036b36 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
