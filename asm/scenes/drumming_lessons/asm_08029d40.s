asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029d40 \n\
/* 08029d40 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08029d42 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08029d44 */ LSLS R2, R2, 0x1 \n\
/* 08029d46 */ LDRB R0, [R1] \n\
/* 08029d48 */ MOVS R3, 0x1F @ Set R3 to 0x1F \n\
/* 08029d4a */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 08029d4c */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 08029d4e */ ORRS R3, R2 @ Set R3 to R3 | R2 \n\
/* 08029d50 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08029d52 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08029d54 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 08029d56 */ STRB R3, [R1] \n\
/* 08029d58 */ LDR R0, =D_030055d0 \n\
/* 08029d5a */ LDR R0, [R0] \n\
/* 08029d5c */ LDR R2, =0x00000576 \n\
/* 08029d5e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029d60 */ LDRB R2, [R0] \n\
/* 08029d62 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08029d64 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08029d66 */ LSLS R2, R2, 0x5 \n\
/* 08029d68 */ MOVS R0, 0x21 @ Set R0 to 0x21 \n\
/* 08029d6a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08029d6c */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08029d6e */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08029d70 */ MOVS R2, 0x41 @ Set R2 to 0x41 \n\
/* 08029d72 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08029d74 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08029d76 */ STRB R0, [R1] \n\
/* 08029d78 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
