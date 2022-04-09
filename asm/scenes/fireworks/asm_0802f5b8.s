asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f5b8 \n\
/* 0802f5b8 */ PUSH {LR} \n\
/* 0802f5ba */ LDR R2, =D_030055d0 \n\
/* 0802f5bc */ LDR R1, [R2] \n\
/* 0802f5be */ MOVS R3, 0x91 @ Set R3 to 0x91 \n\
/* 0802f5c0 */ LSLS R3, R3, 0x4 \n\
/* 0802f5c2 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0802f5c4 */ STRB R0, [R1] \n\
/* 0802f5c6 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802f5c8 */ BNE branch_0802f5de \n\
/* 0802f5ca */ LDR R0, =D_03005380 \n\
/* 0802f5cc */ LDR R0, [R0] \n\
/* 0802f5ce */ LDR R1, [R2] \n\
/* 0802f5d0 */ LDR R2, =0x90c \n\
/* 0802f5d2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f5d4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f5d6 */ LDRSH R1, [R1, R3] \n\
/* 0802f5d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f5da */ BL func_0804d770 \n\
 \n\
branch_0802f5de: \n\
/* 0802f5de */ POP {R0} \n\
/* 0802f5e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
