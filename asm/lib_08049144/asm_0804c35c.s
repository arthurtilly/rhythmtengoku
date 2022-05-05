asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c35c \n\
/* 0804c35c */ PUSH {R4, R5, LR} \n\
/* 0804c35e */ LDR R5, [SP, 0xC] \n\
/* 0804c360 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804c362 */ STR R4, [R0, 0xC] \n\
/* 0804c364 */ STR R1, [R0, 0x4] \n\
/* 0804c366 */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
/* 0804c368 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 0804c36a */ LDRB R4, [R0] \n\
/* 0804c36c */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 0804c36e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0804c370 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 0804c372 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0804c374 */ STRB R1, [R0] \n\
/* 0804c376 */ STR R3, [R0, 0x8] \n\
/* 0804c378 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804c37a */ ANDS R5, R1 @ Set R5 to R5 & R1 \n\
/* 0804c37c */ LSLS R5, R5, 0x5 \n\
/* 0804c37e */ LDRB R2, [R0, 0x2] \n\
/* 0804c380 */ MOVS R1, 0x21 @ Set R1 to 0x21 \n\
/* 0804c382 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0804c384 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0804c386 */ ORRS R1, R5 @ Set R1 to R1 | R5 \n\
/* 0804c388 */ STRB R1, [R0, 0x2] \n\
/* 0804c38a */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 0804c38c */ MOVS R1, 0x64 @ Set R1 to 0x64 \n\
/* 0804c38e */ STRB R1, [R0] \n\
/* 0804c390 */ POP {R4, R5} \n\
/* 0804c392 */ POP {R0} \n\
/* 0804c394 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
