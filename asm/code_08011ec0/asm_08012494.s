asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012494 \n\
/* 08012494 */ PUSH {LR} \n\
/* 08012496 */ SUB SP, 0xC \n\
/* 08012498 */ BL func_0800c3b8 \n\
/* 0801249c */ LSLS R0, R0, 0x10 \n\
/* 0801249e */ LSRS R0, R0, 0x10 \n\
/* 080124a0 */ LDR R1, =func_08012464 \n\
/* 080124a2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080124a4 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080124a6 */ BL func_0800856c \n\
/* 080124aa */ BL func_0800e0ec \n\
/* 080124ae */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080124b0 */ STR R0, [SP] \n\
/* 080124b2 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080124b4 */ STR R0, [SP, 0x4] \n\
/* 080124b6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080124b8 */ STR R0, [SP, 0x8] \n\
/* 080124ba */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080124bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080124be */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080124c0 */ BL func_0800e0a0 \n\
/* 080124c4 */ ADD SP, 0xC \n\
/* 080124c6 */ POP {R0} \n\
/* 080124c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
