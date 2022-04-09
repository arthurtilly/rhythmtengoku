asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014938 \n\
/* 08014938 */ PUSH {R4, R5, LR} \n\
/* 0801493a */ LDR R3, =D_030046a4 \n\
/* 0801493c */ LDR R1, [R3] \n\
/* 0801493e */ MOVS R2, 0xB6 @ Set R2 to 0xB6 \n\
/* 08014940 */ LSLS R2, R2, 0x2 \n\
/* 08014942 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014944 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08014946 */ STRB R4, [R1] \n\
/* 08014948 */ LDR R1, [R3] \n\
/* 0801494a */ LDRB R2, [R1, 0x10] \n\
/* 0801494c */ MOVS R5, 0xCA @ Set R5 to 0xCA \n\
/* 0801494e */ LSLS R5, R5, 0x2 \n\
/* 08014950 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08014952 */ STRB R2, [R1] \n\
/* 08014954 */ LDR R1, [R3] \n\
/* 08014956 */ LDRB R2, [R1, 0x11] \n\
/* 08014958 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0801495a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0801495c */ STRB R2, [R1] \n\
/* 0801495e */ LDR R1, [R3] \n\
/* 08014960 */ LDR R2, =0x2d9 \n\
/* 08014962 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014964 */ STRB R0, [R1] \n\
/* 08014966 */ LDR R0, [R3] \n\
/* 08014968 */ STRB R4, [R0] \n\
/* 0801496a */ POP {R4, R5} \n\
/* 0801496c */ POP {R0} \n\
/* 0801496e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
