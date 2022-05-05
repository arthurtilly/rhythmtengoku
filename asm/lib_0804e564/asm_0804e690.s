asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e690 \n\
/* 0804e690 */ PUSH {R4, LR} \n\
/* 0804e692 */ LDR R1, =D_0300443c \n\
/* 0804e694 */ LDR R2, [R1] \n\
/* 0804e696 */ STR R0, [R2] \n\
/* 0804e698 */ LDR R3, =D_08bd0cd4 \n\
/* 0804e69a */ LSRS R0, R0, 0x3 \n\
/* 0804e69c */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0804e69e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804e6a0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804e6a2 */ LDRB R3, [R0] \n\
/* 0804e6a4 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0804e6a6 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0804e6a8 */ LDR R0, [R2, 0xC] \n\
/* 0804e6aa */ LDRB R4, [R1] \n\
/* 0804e6ac */ ASRS R0, R4 @ Set R0 to R0 << R4 (arithmetic) \n\
/* 0804e6ae */ LSLS R0, R3 @ Set R0 to R0 << R3 (logical) \n\
/* 0804e6b0 */ STR R0, [R2, 0xC] \n\
/* 0804e6b2 */ STRB R3, [R1] \n\
/* 0804e6b4 */ POP {R4} \n\
/* 0804e6b6 */ POP {R0} \n\
/* 0804e6b8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
