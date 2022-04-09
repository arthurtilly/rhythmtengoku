asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035d98 \n\
/* 08035d98 */ PUSH {R4-R7, LR} \n\
/* 08035d9a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08035d9c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08035d9e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08035da0 */ PUSH {R5-R7} \n\
/* 08035da2 */ SUB SP, 0x14 \n\
/* 08035da4 */ LDR R1, =D_030055d0 \n\
/* 08035da6 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08035da8 */ LDR R1, [R1] \n\
/* 08035daa */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08035dac */ STRB R0, [R1] \n\
/* 08035dae */ BL func_08035d6c \n\
/* 08035db2 */ BL func_0800e0ec \n\
/* 08035db6 */ STR R4, [SP] \n\
/* 08035db8 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08035dba */ STR R0, [SP, 0x4] \n\
/* 08035dbc */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08035dbe */ STR R0, [SP, 0x8] \n\
/* 08035dc0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08035dc2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08035dc4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035dc6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08035dc8 */ BL func_0800e0a0 \n\
/* 08035dcc */ MOVS R0, 0xF1 @ Set R0 to 0xF1 \n\
/* 08035dce */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08035dd0 */ BL func_08017338 \n\
/* 08035dd4 */ BL func_08035f7c \n\
/* 08035dd8 */ BL func_0803656c \n\
/* 08035ddc */ LDR R2, =D_03005380 \n\
/* 08035dde */ LDR R0, [R2] \n\
/* 08035de0 */ LDR R1, =D_088f62fc \n\
/* 08035de2 */ MOVS R7, 0x40 @ Set R7 to 0x40 \n\
/* 08035de4 */ STR R7, [SP] \n\
/* 08035de6 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 08035de8 */ LSLS R3, R3, 0x7 \n\
/* 08035dea */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08035dec */ STR R3, [SP, 0x4] \n\
/* 08035dee */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035df0 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08035df2 */ STR R2, [SP, 0x8] \n\
/* 08035df4 */ STR R4, [SP, 0xC] \n\
/* 08035df6 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08035df8 */ LSLS R5, R5, 0x8 \n\
/* 08035dfa */ STR R5, [SP, 0x10] \n\
/* 08035dfc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035dfe */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08035e00 */ BL func_0804d160 \n\
/* 08035e04 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08035e06 */ LDR R1, [R3] \n\
/* 08035e08 */ MOVS R6, 0xBA @ Set R6 to 0xBA \n\
/* 08035e0a */ LSLS R6, R6, 0x2 \n\
/* 08035e0c */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08035e0e */ STRH R0, [R1] \n\
/* 08035e10 */ LDR R1, =D_03005380 \n\
/* 08035e12 */ LDR R0, [R1] \n\
/* 08035e14 */ LDR R1, =D_088f631c \n\
/* 08035e16 */ STR R7, [SP] \n\
/* 08035e18 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08035e1a */ STR R2, [SP, 0x4] \n\
/* 08035e1c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08035e1e */ STR R3, [SP, 0x8] \n\
/* 08035e20 */ STR R4, [SP, 0xC] \n\
/* 08035e22 */ STR R5, [SP, 0x10] \n\
/* 08035e24 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035e26 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08035e28 */ BL func_0804d160 \n\
/* 08035e2c */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08035e2e */ LDR R2, [R1] \n\
/* 08035e30 */ LDR R5, =0x2ea \n\
/* 08035e32 */ ADDS R1, R2, R5 @ Set R1 to R2 + R5 \n\
/* 08035e34 */ STRH R0, [R1] \n\
/* 08035e36 */ LDR R3, =D_03005380 \n\
/* 08035e38 */ LDR R0, [R3] \n\
/* 08035e3a */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08035e3c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08035e3e */ LDRSH R1, [R2, R3] \n\
/* 08035e40 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08035e42 */ LSLS R4, R4, 0x11 \n\
/* 08035e44 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08035e46 */ BL func_0804d7b4 \n\
/* 08035e4a */ LDR R1, =D_03005380 \n\
/* 08035e4c */ LDR R0, [R1] \n\
/* 08035e4e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08035e50 */ LDR R1, [R2] \n\
/* 08035e52 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08035e54 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08035e56 */ LDRSH R1, [R1, R3] \n\
/* 08035e58 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08035e5a */ BL func_0804d7b4 \n\
/* 08035e5e */ ADD SP, 0x14 \n\
/* 08035e60 */ POP {R3-R5} \n\
/* 08035e62 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08035e64 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08035e66 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08035e68 */ POP {R4-R7} \n\
/* 08035e6a */ POP {R0} \n\
/* 08035e6c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
