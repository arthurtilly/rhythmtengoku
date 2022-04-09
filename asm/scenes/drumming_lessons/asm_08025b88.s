asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025b88 \n\
/* 08025b88 */ PUSH {LR} \n\
/* 08025b8a */ LDR R0, =D_030055d0 \n\
/* 08025b8c */ LDR R1, [R0] \n\
/* 08025b8e */ LDR R0, =0x000013d4 \n\
/* 08025b90 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08025b92 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08025b94 */ LSLS R0, R0, 0x1 \n\
/* 08025b96 */ STR R0, [R2] \n\
/* 08025b98 */ LDR R2, =0x000013d8 \n\
/* 08025b9a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08025b9c */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08025b9e */ STR R2, [R0] \n\
/* 08025ba0 */ LDR R3, =0x000013dc \n\
/* 08025ba2 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08025ba4 */ STR R2, [R0] \n\
/* 08025ba6 */ LDR R0, =0x000013f8 \n\
/* 08025ba8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08025baa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08025bac */ STRB R0, [R1] \n\
/* 08025bae */ BL func_08025a64 \n\
/* 08025bb2 */ POP {R0} \n\
/* 08025bb4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
