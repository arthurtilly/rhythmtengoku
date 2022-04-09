asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804732c \n\
/* 0804732c */ PUSH {R4-R6, LR} \n\
/* 0804732e */ SUB SP, 0x14 \n\
/* 08047330 */ LDR R6, =D_030055d0 \n\
/* 08047332 */ LDR R1, [R6] \n\
/* 08047334 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08047336 */ STRB R0, [R1] \n\
/* 08047338 */ BL func_080472fc \n\
/* 0804733c */ BL func_0800e0ec \n\
/* 08047340 */ STR R4, [SP] \n\
/* 08047342 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08047344 */ STR R0, [SP, 0x4] \n\
/* 08047346 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047348 */ STR R0, [SP, 0x8] \n\
/* 0804734a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804734c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804734e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08047350 */ BL func_0800e0a0 \n\
/* 08047354 */ LDR R5, =D_03005380 \n\
/* 08047356 */ LDR R0, [R5] \n\
/* 08047358 */ LDR R1, =D_088b4054 \n\
/* 0804735a */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 0804735c */ STR R2, [SP] \n\
/* 0804735e */ STR R4, [SP, 0x4] \n\
/* 08047360 */ STR R4, [SP, 0x8] \n\
/* 08047362 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08047364 */ STR R2, [SP, 0xC] \n\
/* 08047366 */ STR R4, [SP, 0x10] \n\
/* 08047368 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804736a */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0804736c */ BL func_0804d160 \n\
/* 08047370 */ LDR R1, [R6] \n\
/* 08047372 */ STRH R0, [R1, 0x2] \n\
/* 08047374 */ LDR R0, [R5] \n\
/* 08047376 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08047378 */ LDRSH R1, [R1, R2] \n\
/* 0804737a */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0804737c */ LSLS R2, R2, 0x1 \n\
/* 0804737e */ BL func_0804dcb8 \n\
/* 08047382 */ ADD SP, 0x14 \n\
/* 08047384 */ POP {R4-R6} \n\
/* 08047386 */ POP {R0} \n\
/* 08047388 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
