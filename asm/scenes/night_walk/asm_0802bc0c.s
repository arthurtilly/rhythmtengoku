asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802bc0c \n\
/* 0802bc0c */ PUSH {LR} \n\
/* 0802bc0e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802bc10 */ BL func_0800c604 \n\
/* 0802bc14 */ BL func_0800c3b8 \n\
/* 0802bc18 */ LSLS R0, R0, 0x10 \n\
/* 0802bc1a */ LSRS R0, R0, 0x10 \n\
/* 0802bc1c */ LDR R2, =D_089e3910 \n\
/* 0802bc1e */ LDR R1, =D_030055d0 \n\
/* 0802bc20 */ LDR R1, [R1] \n\
/* 0802bc22 */ LDRB R1, [R1, 0x6] \n\
/* 0802bc24 */ LSLS R1, R1, 0x2 \n\
/* 0802bc26 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802bc28 */ LDR R1, [R1] \n\
/* 0802bc2a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802bc2c */ LSLS R2, R2, 0x6 \n\
/* 0802bc2e */ BL func_08002ee0 \n\
/* 0802bc32 */ LDR R1, =func_0802bbfc \n\
/* 0802bc34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bc36 */ BL func_08005d38 \n\
/* 0802bc3a */ POP {R0} \n\
/* 0802bc3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
