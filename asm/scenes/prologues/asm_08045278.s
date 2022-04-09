asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045278 \n\
/* 08045278 */ PUSH {R4, R5, LR} \n\
/* 0804527a */ SUB SP, 0x14 \n\
/* 0804527c */ LDR R5, =D_030055d0 \n\
/* 0804527e */ LDR R1, [R5] \n\
/* 08045280 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045282 */ STRB R0, [R1] \n\
/* 08045284 */ BL func_08045248 \n\
/* 08045288 */ BL func_0800e0ec \n\
/* 0804528c */ STR R4, [SP] \n\
/* 0804528e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045290 */ STR R0, [SP, 0x4] \n\
/* 08045292 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045294 */ STR R0, [SP, 0x8] \n\
/* 08045296 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08045298 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804529a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804529c */ BL func_0800e0a0 \n\
/* 080452a0 */ LDR R0, =D_03005380 \n\
/* 080452a2 */ LDR R0, [R0] \n\
/* 080452a4 */ LDR R1, =D_088ad3f4 \n\
/* 080452a6 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 080452a8 */ STR R2, [SP] \n\
/* 080452aa */ STR R4, [SP, 0x4] \n\
/* 080452ac */ STR R4, [SP, 0x8] \n\
/* 080452ae */ STR R4, [SP, 0xC] \n\
/* 080452b0 */ STR R4, [SP, 0x10] \n\
/* 080452b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080452b4 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080452b6 */ BL func_0804d160 \n\
/* 080452ba */ LDR R1, [R5] \n\
/* 080452bc */ STRH R0, [R1, 0x2] \n\
/* 080452be */ ADD SP, 0x14 \n\
/* 080452c0 */ POP {R4, R5} \n\
/* 080452c2 */ POP {R0} \n\
/* 080452c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
