asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c0d8 \n\
/* 0800c0d8 */ PUSH {LR} \n\
/* 0800c0da */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c0dc */ LSLS R1, R1, 0x10 \n\
/* 0800c0de */ LSRS R1, R1, 0x10 \n\
/* 0800c0e0 */ LDR R2, =D_030053c0 \n\
/* 0800c0e2 */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 0800c0e4 */ LSLS R3, R3, 0x1 \n\
/* 0800c0e6 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0800c0e8 */ STRH R1, [R0] \n\
/* 0800c0ea */ LDR R0, [R2, 0x4] \n\
/* 0800c0ec */ BL func_08002920 \n\
/* 0800c0f0 */ POP {R0} \n\
/* 0800c0f2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
