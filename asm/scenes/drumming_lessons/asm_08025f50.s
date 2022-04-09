asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025f50 \n\
/* 08025f50 */ PUSH {LR} \n\
/* 08025f52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08025f54 */ BL func_0800c604 \n\
/* 08025f58 */ BL func_0800c3b8 \n\
/* 08025f5c */ LSLS R0, R0, 0x10 \n\
/* 08025f5e */ LSRS R0, R0, 0x10 \n\
/* 08025f60 */ LDR R2, =D_089e0aa4 \n\
/* 08025f62 */ LDR R1, =D_030055d0 \n\
/* 08025f64 */ LDR R1, [R1] \n\
/* 08025f66 */ LDRB R1, [R1] \n\
/* 08025f68 */ LSLS R1, R1, 0x2 \n\
/* 08025f6a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025f6c */ LDR R1, [R1] \n\
/* 08025f6e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08025f70 */ LSLS R2, R2, 0x6 \n\
/* 08025f72 */ BL func_08002ee0 \n\
/* 08025f76 */ LDR R1, =func_08025f3c \n\
/* 08025f78 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025f7a */ BL func_08005d38 \n\
/* 08025f7e */ POP {R0} \n\
/* 08025f80 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
