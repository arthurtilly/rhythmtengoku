asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016a18 \n\
/* 08016a18 */ PUSH {LR} \n\
/* 08016a1a */ BL func_08008628 \n\
/* 08016a1e */ BL func_08004058 \n\
/* 08016a22 */ LDR R0, =D_030046a4 \n\
/* 08016a24 */ LDR R0, [R0] \n\
/* 08016a26 */ LDR R0, [R0, 0x24] \n\
/* 08016a28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016a2a */ BEQ branch_08016a48 \n\
/* 08016a2c */ BL func_0800081c \n\
/* 08016a30 */ BL func_080009a0 \n\
/* 08016a34 */ LDR R0, =D_030046a8 \n\
/* 08016a36 */ LDR R0, [R0] \n\
/* 08016a38 */ MOVS R1, 0xB1 @ Set R1 to 0xB1 \n\
/* 08016a3a */ LSLS R1, R1, 0x2 \n\
/* 08016a3c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016a3e */ LDR R0, [R0] \n\
/* 08016a40 */ BL func_080029d8 \n\
/* 08016a44 */ BL func_080001f8 \n\
 \n\
branch_08016a48: \n\
/* 08016a48 */ POP {R0} \n\
/* 08016a4a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
