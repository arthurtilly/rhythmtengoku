asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803dd18 \n\
/* 0803dd18 */ PUSH {LR} \n\
/* 0803dd1a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803dd1c */ BL func_0800c604 \n\
/* 0803dd20 */ BL func_0800c3b8 \n\
/* 0803dd24 */ LSLS R0, R0, 0x10 \n\
/* 0803dd26 */ LSRS R0, R0, 0x10 \n\
/* 0803dd28 */ LDR R2, =D_089e8040 \n\
/* 0803dd2a */ LDR R1, =D_030055d0 \n\
/* 0803dd2c */ LDR R1, [R1] \n\
/* 0803dd2e */ LDRB R1, [R1] \n\
/* 0803dd30 */ LSLS R1, R1, 0x2 \n\
/* 0803dd32 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803dd34 */ LDR R1, [R1] \n\
/* 0803dd36 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803dd38 */ LSLS R2, R2, 0x6 \n\
/* 0803dd3a */ BL func_08002ee0 \n\
/* 0803dd3e */ LDR R1, =func_0803dd08 \n\
/* 0803dd40 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803dd42 */ BL func_08005d38 \n\
/* 0803dd46 */ POP {R0} \n\
/* 0803dd48 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
