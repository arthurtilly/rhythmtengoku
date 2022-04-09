asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080041d0 \n\
/* 080041d0 */ PUSH {R4, R5, LR} \n\
/* 080041d2 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080041d4 */ LSLS R4, R4, 0x10 \n\
/* 080041d6 */ LSRS R4, R4, 0x10 \n\
/* 080041d8 */ LDR R2, =D_030008a6 \n\
/* 080041da */ LDR R5, =0xffff \n\
/* 080041dc */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 080041de */ STRH R3, [R2] \n\
/* 080041e0 */ LDR R2, =D_030008a8 \n\
/* 080041e2 */ STRH R3, [R2] \n\
/* 080041e4 */ LDR R2, =D_030008a0 \n\
/* 080041e6 */ STRH R0, [R2] \n\
/* 080041e8 */ LDR R0, =D_030008a2 \n\
/* 080041ea */ STRH R1, [R0] \n\
/* 080041ec */ LDR R1, =D_030008ac \n\
/* 080041ee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080041f0 */ STRB R0, [R1] \n\
/* 080041f2 */ LDR R1, =D_030008ad \n\
/* 080041f4 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 080041f6 */ STRB R0, [R1] \n\
/* 080041f8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080041fa */ BL func_08004070 \n\
/* 080041fe */ LDR R1, =D_030008a4 \n\
/* 08004200 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08004202 */ STRB R0, [R1] \n\
/* 08004204 */ LDR R0, =D_03000760 \n\
/* 08004206 */ LSLS R1, R4, 0x1 \n\
/* 08004208 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 0800420a */ LSLS R2, R2, 0x13 \n\
/* 0800420c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800420e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08004210 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08004212 */ BL func_0800402c \n\
/* 08004216 */ LDR R0, =D_030008aa \n\
/* 08004218 */ STRH R4, [R0] \n\
/* 0800421a */ POP {R4, R5} \n\
/* 0800421c */ POP {R0} \n\
/* 0800421e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
