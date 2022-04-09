asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c0f8 \n\
/* 0800c0f8 */ PUSH {R4, LR} \n\
/* 0800c0fa */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800c0fc */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0800c0fe */ LSLS R3, R3, 0x10 \n\
/* 0800c100 */ LSRS R3, R3, 0x10 \n\
/* 0800c102 */ LSLS R2, R2, 0x10 \n\
/* 0800c104 */ LSRS R2, R2, 0x10 \n\
/* 0800c106 */ LDR R1, =D_030053c0 \n\
/* 0800c108 */ MOVS R4, 0xC9 @ Set R4 to 0xC9 \n\
/* 0800c10a */ LSLS R4, R4, 0x1 \n\
/* 0800c10c */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 0800c10e */ STRH R2, [R0] \n\
/* 0800c110 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0800c112 */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 0800c114 */ STRH R3, [R0] \n\
/* 0800c116 */ LDR R0, [R1, 0x4] \n\
/* 0800c118 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800c11a */ BL func_08002934 \n\
/* 0800c11e */ POP {R4} \n\
/* 0800c120 */ POP {R0} \n\
/* 0800c122 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
