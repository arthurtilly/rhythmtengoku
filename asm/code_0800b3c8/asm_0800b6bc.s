asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b6bc \n\
/* 0800b6bc */ PUSH {R4, LR} \n\
/* 0800b6be */ LDR R3, =D_030053c0 \n\
/* 0800b6c0 */ MOVS R4, 0xE0 @ Set R4 to 0xE0 \n\
/* 0800b6c2 */ LSLS R4, R4, 0x1 \n\
/* 0800b6c4 */ ADDS R2, R3, R4 @ Set R2 to R3 + R4 \n\
/* 0800b6c6 */ STR R0, [R2] \n\
/* 0800b6c8 */ MOVS R2, 0xE2 @ Set R2 to 0xE2 \n\
/* 0800b6ca */ LSLS R2, R2, 0x1 \n\
/* 0800b6cc */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0800b6ce */ STR R1, [R0] \n\
/* 0800b6d0 */ POP {R4} \n\
/* 0800b6d2 */ POP {R0} \n\
/* 0800b6d4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
