asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026e10 \n\
/* 08026e10 */ PUSH {R4-R6, LR} \n\
/* 08026e12 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08026e14 */ PUSH {R6} \n\
/* 08026e16 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08026e18 */ LDR R0, =D_030055d0 \n\
/* 08026e1a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08026e1c */ LDR R5, [R0] \n\
/* 08026e1e */ LDR R6, =D_03005380 \n\
/* 08026e20 */ LDR R0, [R6] \n\
/* 08026e22 */ LSLS R4, R4, 0x10 \n\
/* 08026e24 */ ASRS R4, R4, 0x10 \n\
/* 08026e26 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08026e28 */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 08026e2a */ MOVS R3, 0x88 @ Set R3 to 0x88 \n\
/* 08026e2c */ BL func_0804d5d4 \n\
/* 08026e30 */ LDR R0, [R6] \n\
/* 08026e32 */ LDR R1, =0x000003ba \n\
/* 08026e34 */ ADDS R2, R5, R1 @ Set R2 to R5 + R1 \n\
/* 08026e36 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08026e38 */ ADDS R5, R5, R1 @ Set R5 to R5 + R1 \n\
/* 08026e3a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08026e3c */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08026e3e */ BL func_0804db44 \n\
/* 08026e42 */ LDR R0, [R6] \n\
/* 08026e44 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08026e46 */ LSLS R2, R2, 0x2 \n\
/* 08026e48 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08026e4a */ BL func_0804d890 \n\
/* 08026e4e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08026e50 */ LDR R0, [R1] \n\
/* 08026e52 */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 08026e54 */ LSLS R1, R1, 0x2 \n\
/* 08026e56 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026e58 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08026e5a */ STRB R1, [R0] \n\
/* 08026e5c */ POP {R3} \n\
/* 08026e5e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08026e60 */ POP {R4-R6} \n\
/* 08026e62 */ POP {R0} \n\
/* 08026e64 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
