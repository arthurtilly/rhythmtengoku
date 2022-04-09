asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047444 \n\
/* 08047444 */ PUSH {R4, R5, LR} \n\
/* 08047446 */ SUB SP, 0x14 \n\
/* 08047448 */ LDR R5, =D_030055d0 \n\
/* 0804744a */ LDR R1, [R5] \n\
/* 0804744c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804744e */ STRB R0, [R1] \n\
/* 08047450 */ BL func_08047414 \n\
/* 08047454 */ BL func_0800e0ec \n\
/* 08047458 */ STR R4, [SP] \n\
/* 0804745a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0804745c */ STR R0, [SP, 0x4] \n\
/* 0804745e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047460 */ STR R0, [SP, 0x8] \n\
/* 08047462 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08047464 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047466 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08047468 */ BL func_0800e0a0 \n\
/* 0804746c */ LDR R0, =D_03005380 \n\
/* 0804746e */ LDR R0, [R0] \n\
/* 08047470 */ LDR R1, =D_088b432c \n\
/* 08047472 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 08047474 */ STR R2, [SP] \n\
/* 08047476 */ STR R4, [SP, 0x4] \n\
/* 08047478 */ STR R4, [SP, 0x8] \n\
/* 0804747a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0804747c */ STR R2, [SP, 0xC] \n\
/* 0804747e */ STR R4, [SP, 0x10] \n\
/* 08047480 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047482 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08047484 */ BL func_0804d160 \n\
/* 08047488 */ LDR R1, [R5] \n\
/* 0804748a */ STRH R0, [R1, 0x2] \n\
/* 0804748c */ ADD SP, 0x14 \n\
/* 0804748e */ POP {R4, R5} \n\
/* 08047490 */ POP {R0} \n\
/* 08047492 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
