asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e060 \n\
/* 0801e060 */ PUSH {LR} \n\
/* 0801e062 */ SUB SP, 0xC \n\
/* 0801e064 */ BL func_0800c3b8 \n\
/* 0801e068 */ LSLS R0, R0, 0x10 \n\
/* 0801e06a */ LSRS R0, R0, 0x10 \n\
/* 0801e06c */ LDR R1, =func_0801e030 \n\
/* 0801e06e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e070 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801e072 */ BL func_0800856c \n\
/* 0801e076 */ BL func_0800e0ec \n\
/* 0801e07a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e07c */ STR R0, [SP] \n\
/* 0801e07e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0801e080 */ STR R0, [SP, 0x4] \n\
/* 0801e082 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801e084 */ STR R0, [SP, 0x8] \n\
/* 0801e086 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801e088 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e08a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801e08c */ BL func_0800e0a0 \n\
/* 0801e090 */ ADD SP, 0xC \n\
/* 0801e092 */ POP {R0} \n\
/* 0801e094 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
