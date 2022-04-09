asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005bc4 \n\
/* 08005bc4 */ PUSH {LR} \n\
/* 08005bc6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08005bc8 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08005bca */ BLT branch_08005bfc \n\
/* 08005bcc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08005bce */ LDR R2, =D_03000908 \n\
/* 08005bd0 */ B branch_08005be0 \n\
\n\
.ltorg \n\
 \n\
branch_08005bd8: \n\
/* 08005bd8 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08005bda */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 08005bdc */ CMP R1, 0x2F @ Compare R1 and 0x2F \n\
/* 08005bde */ BHI branch_08005bfc \n\
 \n\
branch_08005be0: \n\
/* 08005be0 */ LDR R0, [R2, 0x8] \n\
/* 08005be2 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08005be4 */ BNE branch_08005bd8 \n\
/* 08005be6 */ CMP R1, 0x2F @ Compare R1 and 0x2F \n\
/* 08005be8 */ BHI branch_08005bfc \n\
/* 08005bea */ LDRB R1, [R2] \n\
/* 08005bec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005bee */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005bf0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005bf2 */ BEQ branch_08005bfc \n\
/* 08005bf4 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08005bf6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08005bf8 */ BL func_08005a40 \n\
 \n\
branch_08005bfc: \n\
/* 08005bfc */ POP {R0} \n\
/* 08005bfe */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
