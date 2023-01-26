asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010bc0 \n\
/* 08010bc0 */ PUSH {LR} \n\
/* 08010bc2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08010bc4 */ LDR R1, =D_089cd47c \n\
/* 08010bc6 */ B branch_08010bd8 \n\
\n\
.ltorg \n\
 \n\
branch_08010bcc: \n\
/* 08010bcc */ LDRB R0, [R1] \n\
/* 08010bce */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08010bd0 */ BNE branch_08010bd6 \n\
/* 08010bd2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010bd4 */ B branch_08010be0 \n\
 \n\
branch_08010bd6: \n\
/* 08010bd6 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
 \n\
branch_08010bd8: \n\
/* 08010bd8 */ LDRB R0, [R1] \n\
/* 08010bda */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 08010bdc */ BNE branch_08010bcc \n\
/* 08010bde */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08010be0: \n\
/* 08010be0 */ POP {R1} \n\
/* 08010be2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
