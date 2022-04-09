asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080135cc \n\
/* 080135cc */ PUSH {R4, LR} \n\
/* 080135ce */ SUB SP, 0xC \n\
/* 080135d0 */ BL func_0800c3b8 \n\
/* 080135d4 */ LSLS R0, R0, 0x10 \n\
/* 080135d6 */ LSRS R0, R0, 0x10 \n\
/* 080135d8 */ LDR R1, =func_0801359c \n\
/* 080135da */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080135dc */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080135de */ BL func_0800856c \n\
/* 080135e2 */ BL func_0800e0ec \n\
/* 080135e6 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 080135e8 */ STR R4, [SP] \n\
/* 080135ea */ MOVS R0, 0x16 @ Set R0 to 0x16 \n\
/* 080135ec */ STR R0, [SP, 0x4] \n\
/* 080135ee */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080135f0 */ LSLS R0, R0, 0x8 \n\
/* 080135f2 */ STR R0, [SP, 0x8] \n\
/* 080135f4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080135f6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080135f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080135fa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080135fc */ BL func_0800e0a0 \n\
/* 08013600 */ STR R4, [SP] \n\
/* 08013602 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08013604 */ STR R0, [SP, 0x4] \n\
/* 08013606 */ LDR R0, =0xc001 \n\
/* 08013608 */ STR R0, [SP, 0x8] \n\
/* 0801360a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801360c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801360e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08013610 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013612 */ BL func_0800e0a0 \n\
/* 08013616 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013618 */ STR R0, [SP] \n\
/* 0801361a */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0801361c */ STR R0, [SP, 0x4] \n\
/* 0801361e */ LDR R0, =0xc002 \n\
/* 08013620 */ STR R0, [SP, 0x8] \n\
/* 08013622 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08013624 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08013626 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08013628 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801362a */ BL func_0800e0a0 \n\
/* 0801362e */ ADD SP, 0xC \n\
/* 08013630 */ POP {R4} \n\
/* 08013632 */ POP {R0} \n\
/* 08013634 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
