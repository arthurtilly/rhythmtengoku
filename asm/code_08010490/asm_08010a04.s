asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010a04 \n\
/* 08010a04 */ PUSH {LR} \n\
/* 08010a06 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010a08 */ MOVS R3, 0xFF @ Set R3 to 0xFF \n\
/* 08010a0a */ LDR R1, =D_030055a0 \n\
 \n\
branch_08010a0c: \n\
/* 08010a0c */ LDRB R0, [R1, 0x2] \n\
/* 08010a0e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010a10 */ BEQ branch_08010a18 \n\
/* 08010a12 */ LDRB R0, [R1] \n\
/* 08010a14 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 08010a16 */ STRB R0, [R1] \n\
 \n\
branch_08010a18: \n\
/* 08010a18 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08010a1a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08010a1c */ CMP R2, 0x4 @ Compare R2 and 0x4 \n\
/* 08010a1e */ BLS branch_08010a0c \n\
/* 08010a20 */ POP {R0} \n\
/* 08010a22 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
