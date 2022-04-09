asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046698 \n\
/* 08046698 */ PUSH {R4, R5, LR} \n\
/* 0804669a */ SUB SP, 0x14 \n\
/* 0804669c */ LDR R5, =D_030055d0 \n\
/* 0804669e */ LDR R1, [R5] \n\
/* 080466a0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080466a2 */ STRB R0, [R1] \n\
/* 080466a4 */ BL func_08046668 \n\
/* 080466a8 */ BL func_0800e0ec \n\
/* 080466ac */ STR R4, [SP] \n\
/* 080466ae */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080466b0 */ STR R0, [SP, 0x4] \n\
/* 080466b2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080466b4 */ STR R0, [SP, 0x8] \n\
/* 080466b6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080466b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080466ba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080466bc */ BL func_0800e0a0 \n\
/* 080466c0 */ LDR R0, =D_03005380 \n\
/* 080466c2 */ LDR R0, [R0] \n\
/* 080466c4 */ LDR R1, =D_088b17d0 \n\
/* 080466c6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080466c8 */ STR R2, [SP] \n\
/* 080466ca */ STR R4, [SP, 0x4] \n\
/* 080466cc */ STR R4, [SP, 0x8] \n\
/* 080466ce */ STR R4, [SP, 0xC] \n\
/* 080466d0 */ STR R4, [SP, 0x10] \n\
/* 080466d2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080466d4 */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 080466d6 */ BL func_0804d160 \n\
/* 080466da */ LDR R1, [R5] \n\
/* 080466dc */ STRH R0, [R1, 0x2] \n\
/* 080466de */ ADD SP, 0x14 \n\
/* 080466e0 */ POP {R4, R5} \n\
/* 080466e2 */ POP {R0} \n\
/* 080466e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
