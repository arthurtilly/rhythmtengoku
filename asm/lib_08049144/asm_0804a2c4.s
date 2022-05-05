asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a2c4 \n\
/* 0804a2c4 */ PUSH {R4, R5, LR} \n\
/* 0804a2c6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804a2c8 */ LDR R0, =D_030064bc \n\
/* 0804a2ca */ LSLS R1, R5, 0x5 \n\
/* 0804a2cc */ LDR R0, [R0] \n\
/* 0804a2ce */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 0804a2d0 */ LDRB R0, [R4] \n\
/* 0804a2d2 */ LSLS R0, R0, 0x1F \n\
/* 0804a2d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a2d6 */ BEQ branch_0804a32a \n\
/* 0804a2d8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804a2da */ BL func_08049b5c \n\
/* 0804a2de */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a2e0 */ BEQ branch_0804a320 \n\
/* 0804a2e2 */ LDRB R1, [R4, 0x17] \n\
/* 0804a2e4 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804a2e6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804a2e8 */ STRB R0, [R4, 0x17] \n\
/* 0804a2ea */ LDR R0, [R4, 0xC] \n\
/* 0804a2ec */ LDRB R0, [R0] \n\
/* 0804a2ee */ LSLS R0, R0, 0x1E \n\
/* 0804a2f0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a2f2 */ BLT branch_0804a302 \n\
/* 0804a2f4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804a2f6 */ BL func_0804a018 \n\
/* 0804a2fa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804a2fc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804a2fe */ BL func_080493f4 \n\
 \n\
branch_0804a302: \n\
/* 0804a302 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804a304 */ BL func_0804a1f4 \n\
/* 0804a308 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804a30a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804a30c */ BL func_080493e4 \n\
/* 0804a310 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804a312 */ BL func_0804a224 \n\
/* 0804a316 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a318 */ BEQ branch_0804a32a \n\
/* 0804a31a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804a31c */ BL func_080493b0 \n\
 \n\
branch_0804a320: \n\
/* 0804a320 */ LDRB R1, [R4] \n\
/* 0804a322 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804a324 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804a326 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804a328 */ STRB R0, [R4] \n\
 \n\
branch_0804a32a: \n\
/* 0804a32a */ POP {R4, R5} \n\
/* 0804a32c */ POP {R0} \n\
/* 0804a32e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
