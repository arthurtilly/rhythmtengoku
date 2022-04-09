asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f3b4 \n\
/* 0802f3b4 */ PUSH {LR} \n\
/* 0802f3b6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f3b8 */ BL func_0800c604 \n\
/* 0802f3bc */ BL func_0800c3b8 \n\
/* 0802f3c0 */ LSLS R0, R0, 0x10 \n\
/* 0802f3c2 */ LSRS R0, R0, 0x10 \n\
/* 0802f3c4 */ LDR R2, =D_089e43d4 \n\
/* 0802f3c6 */ LDR R1, =D_030055d0 \n\
/* 0802f3c8 */ LDR R1, [R1] \n\
/* 0802f3ca */ LDRB R1, [R1] \n\
/* 0802f3cc */ LSLS R1, R1, 0x2 \n\
/* 0802f3ce */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f3d0 */ LDR R1, [R1] \n\
/* 0802f3d2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802f3d4 */ LSLS R2, R2, 0x6 \n\
/* 0802f3d6 */ BL func_08002ee0 \n\
/* 0802f3da */ LDR R1, =func_0802f3a4 \n\
/* 0802f3dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f3de */ BL func_08005d38 \n\
/* 0802f3e2 */ POP {R0} \n\
/* 0802f3e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
