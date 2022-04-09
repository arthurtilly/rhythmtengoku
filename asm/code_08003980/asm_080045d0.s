asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080045d0 \n\
/* 080045d0 */ PUSH {R4, LR} \n\
/* 080045d2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080045d4 */ LDRB R0, [R3, 0xA] \n\
/* 080045d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080045d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080045da */ BEQ branch_080045f6 \n\
/* 080045dc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_080045de: \n\
/* 080045de */ LDR R1, [R3, 0xC] \n\
/* 080045e0 */ LSLS R0, R2, 0x1 \n\
/* 080045e2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080045e4 */ STRH R4, [R0] \n\
/* 080045e6 */ LDR R0, [R3, 0x10] \n\
/* 080045e8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080045ea */ STRB R4, [R0] \n\
/* 080045ec */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080045ee */ LDRB R0, [R3, 0xA] \n\
/* 080045f0 */ LSLS R0, R0, 0x4 \n\
/* 080045f2 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 080045f4 */ BCC branch_080045de \n\
 \n\
branch_080045f6: \n\
/* 080045f6 */ POP {R4} \n\
/* 080045f8 */ POP {R0} \n\
/* 080045fa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
