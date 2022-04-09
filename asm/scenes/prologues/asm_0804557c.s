asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804557c \n\
/* 0804557c */ PUSH {R4-R6, LR} \n\
/* 0804557e */ SUB SP, 0x14 \n\
/* 08045580 */ LDR R6, =D_030055d0 \n\
/* 08045582 */ LDR R1, [R6] \n\
/* 08045584 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045586 */ STRB R0, [R1] \n\
/* 08045588 */ BL func_0804554c \n\
/* 0804558c */ BL func_0800e0ec \n\
/* 08045590 */ STR R4, [SP] \n\
/* 08045592 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045594 */ STR R0, [SP, 0x4] \n\
/* 08045596 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045598 */ STR R0, [SP, 0x8] \n\
/* 0804559a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804559c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804559e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080455a0 */ BL func_0800e0a0 \n\
/* 080455a4 */ LDR R5, =D_03005380 \n\
/* 080455a6 */ LDR R0, [R5] \n\
/* 080455a8 */ LDR R1, =D_088ada78 \n\
/* 080455aa */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 080455ac */ STR R2, [SP] \n\
/* 080455ae */ STR R4, [SP, 0x4] \n\
/* 080455b0 */ STR R4, [SP, 0x8] \n\
/* 080455b2 */ STR R4, [SP, 0xC] \n\
/* 080455b4 */ STR R4, [SP, 0x10] \n\
/* 080455b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080455b8 */ MOVS R3, 0x6E @ Set R3 to 0x6E \n\
/* 080455ba */ BL func_0804d160 \n\
/* 080455be */ LDR R1, [R6] \n\
/* 080455c0 */ STRH R0, [R1, 0x2] \n\
/* 080455c2 */ LDR R0, [R5] \n\
/* 080455c4 */ LDR R1, =D_088adaa8 \n\
/* 080455c6 */ MOVS R2, 0x6E @ Set R2 to 0x6E \n\
/* 080455c8 */ STR R2, [SP] \n\
/* 080455ca */ STR R4, [SP, 0x4] \n\
/* 080455cc */ STR R4, [SP, 0x8] \n\
/* 080455ce */ STR R4, [SP, 0xC] \n\
/* 080455d0 */ STR R4, [SP, 0x10] \n\
/* 080455d2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080455d4 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 080455d6 */ BL func_0804d160 \n\
/* 080455da */ LDR R1, [R6] \n\
/* 080455dc */ STRH R0, [R1, 0x4] \n\
/* 080455de */ ADD SP, 0x14 \n\
/* 080455e0 */ POP {R4-R6} \n\
/* 080455e2 */ POP {R0} \n\
/* 080455e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
