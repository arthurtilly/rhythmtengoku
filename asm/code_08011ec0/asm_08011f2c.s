asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011f2c \n\
/* 08011f2c */ PUSH {LR} \n\
/* 08011f2e */ SUB SP, 0xC \n\
/* 08011f30 */ BL func_0800c3b8 \n\
/* 08011f34 */ LSLS R0, R0, 0x10 \n\
/* 08011f36 */ LSRS R0, R0, 0x10 \n\
/* 08011f38 */ LDR R1, =func_08011efc \n\
/* 08011f3a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011f3c */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08011f3e */ BL func_0800856c \n\
/* 08011f42 */ BL func_0800e0ec \n\
/* 08011f46 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011f48 */ STR R0, [SP] \n\
/* 08011f4a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08011f4c */ STR R0, [SP, 0x4] \n\
/* 08011f4e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08011f50 */ STR R0, [SP, 0x8] \n\
/* 08011f52 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08011f54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011f56 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08011f58 */ BL func_0800e0a0 \n\
/* 08011f5c */ ADD SP, 0xC \n\
/* 08011f5e */ POP {R0} \n\
/* 08011f60 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
