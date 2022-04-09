asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d048 \n\
/* 0803d048 */ PUSH {LR} \n\
/* 0803d04a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d04c */ BL func_0800c604 \n\
/* 0803d050 */ BL func_0800c3b8 \n\
/* 0803d054 */ LSLS R0, R0, 0x10 \n\
/* 0803d056 */ LSRS R0, R0, 0x10 \n\
/* 0803d058 */ LDR R2, =D_089e6e80 \n\
/* 0803d05a */ LDR R1, =D_030055d0 \n\
/* 0803d05c */ LDR R1, [R1] \n\
/* 0803d05e */ LDRB R1, [R1, 0x4] \n\
/* 0803d060 */ LSLS R1, R1, 0x2 \n\
/* 0803d062 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803d064 */ LDR R1, [R1] \n\
/* 0803d066 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803d068 */ LSLS R2, R2, 0x6 \n\
/* 0803d06a */ BL func_08002ee0 \n\
/* 0803d06e */ LDR R1, =func_0803d038 \n\
/* 0803d070 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d072 */ BL func_08005d38 \n\
/* 0803d076 */ POP {R0} \n\
/* 0803d078 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
