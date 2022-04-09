asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035d2c \n\
/* 08035d2c */ PUSH {LR} \n\
/* 08035d2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035d30 */ BL func_0800c604 \n\
/* 08035d34 */ BL func_0800c3b8 \n\
/* 08035d38 */ LSLS R0, R0, 0x10 \n\
/* 08035d3a */ LSRS R0, R0, 0x10 \n\
/* 08035d3c */ LDR R2, =D_089e59fc \n\
/* 08035d3e */ LDR R1, =D_030055d0 \n\
/* 08035d40 */ LDR R1, [R1] \n\
/* 08035d42 */ LDRB R1, [R1] \n\
/* 08035d44 */ LSLS R1, R1, 0x2 \n\
/* 08035d46 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08035d48 */ LDR R1, [R1] \n\
/* 08035d4a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08035d4c */ LSLS R2, R2, 0x6 \n\
/* 08035d4e */ BL func_08002ee0 \n\
/* 08035d52 */ LDR R1, =func_08035d1c \n\
/* 08035d54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035d56 */ BL func_08005d38 \n\
/* 08035d5a */ POP {R0} \n\
/* 08035d5c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
