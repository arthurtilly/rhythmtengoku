asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047280 \n\
/* 08047280 */ PUSH {R4, R5, LR} \n\
/* 08047282 */ SUB SP, 0x4 \n\
/* 08047284 */ LDR R5, =D_03005380 \n\
/* 08047286 */ LDR R0, [R5] \n\
/* 08047288 */ LDR R4, =D_030055d0 \n\
/* 0804728a */ LDR R1, [R4] \n\
/* 0804728c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0804728e */ LDRSH R1, [R1, R2] \n\
/* 08047290 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08047292 */ BL func_0804cebc \n\
/* 08047296 */ LDR R0, [R5] \n\
/* 08047298 */ LDR R1, [R4] \n\
/* 0804729a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0804729c */ LDRSH R1, [R1, R2] \n\
/* 0804729e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080472a0 */ STR R2, [SP] \n\
/* 080472a2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080472a4 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080472a6 */ BL func_0804dae0 \n\
/* 080472aa */ ADD SP, 0x4 \n\
/* 080472ac */ POP {R4, R5} \n\
/* 080472ae */ POP {R0} \n\
/* 080472b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
