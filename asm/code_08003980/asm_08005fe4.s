asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005fe4 \n\
/* 08005fe4 */ PUSH {R4-R7, LR} \n\
/* 08005fe6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08005fe8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08005fea */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08005fec */ PUSH {R5-R7} \n\
/* 08005fee */ SUB SP, 0x18 \n\
/* 08005ff0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08005ff2 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 08005ff4 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08005ff6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005ff8 */ LDR R4, [SP, 0x38] \n\
/* 08005ffa */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08005ffc */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08005ffe */ STR R0, [SP, 0x8] \n\
/* 08006000 */ SUBS R0, R4, 0x2 @ Set R0 to R4 - 0x2 \n\
/* 08006002 */ STR R0, [SP, 0xC] \n\
/* 08006004 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08006006 */ STR R5, [SP] \n\
/* 08006008 */ LDRH R0, [R7, 0x2] \n\
/* 0800600a */ STR R0, [SP, 0x4] \n\
/* 0800600c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800600e */ LDR R1, [SP, 0x8] \n\
/* 08006010 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08006012 */ LDR R3, [SP, 0xC] \n\
/* 08006014 */ BL func_08005f34 \n\
/* 08006018 */ LDR R0, [SP, 0x3C] \n\
/* 0800601a */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800601c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0800601e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08006020 */ STR R5, [SP] \n\
/* 08006022 */ LDRH R0, [R7, 0xE] \n\
/* 08006024 */ STR R0, [SP, 0x4] \n\
/* 08006026 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08006028 */ LDR R1, [SP, 0x8] \n\
/* 0800602a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800602c */ LDR R3, [SP, 0xC] \n\
/* 0800602e */ BL func_08005f34 \n\
/* 08006032 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08006034 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08006036 */ STR R0, [SP, 0x14] \n\
/* 08006038 */ LDR R5, [SP, 0x3C] \n\
/* 0800603a */ SUBS R5, 0x2 @ Subtract 0x2 from R5 \n\
/* 0800603c */ STR R5, [SP] \n\
/* 0800603e */ LDRH R0, [R7, 0x6] \n\
/* 08006040 */ STR R0, [SP, 0x4] \n\
/* 08006042 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08006044 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08006046 */ LDR R2, [SP, 0x14] \n\
/* 08006048 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0800604a */ BL func_08005f34 \n\
/* 0800604e */ ADD R4, R9 @ Add R9 to R4 \n\
/* 08006050 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 08006052 */ STR R5, [SP] \n\
/* 08006054 */ LDRH R0, [R7, 0xA] \n\
/* 08006056 */ STR R0, [SP, 0x4] \n\
/* 08006058 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800605a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800605c */ LDR R2, [SP, 0x14] \n\
/* 0800605e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08006060 */ BL func_08005f34 \n\
/* 08006064 */ LDRH R3, [R7] \n\
/* 08006066 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08006068 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800606a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800606c */ BL func_08005f04 \n\
/* 08006070 */ LDRH R3, [R7, 0x4] \n\
/* 08006072 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08006074 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08006076 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08006078 */ BL func_08005f04 \n\
/* 0800607c */ LDRH R3, [R7, 0xC] \n\
/* 0800607e */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08006080 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08006082 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08006084 */ BL func_08005f04 \n\
/* 08006088 */ LDRH R3, [R7, 0x10] \n\
/* 0800608a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800608c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800608e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08006090 */ BL func_08005f04 \n\
/* 08006094 */ LDR R0, [SP, 0x40] \n\
/* 08006096 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006098 */ BEQ branch_080060ac \n\
/* 0800609a */ STR R5, [SP] \n\
/* 0800609c */ LDRH R0, [R7, 0x8] \n\
/* 0800609e */ STR R0, [SP, 0x4] \n\
/* 080060a0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080060a2 */ LDR R1, [SP, 0x8] \n\
/* 080060a4 */ LDR R2, [SP, 0x14] \n\
/* 080060a6 */ LDR R3, [SP, 0xC] \n\
/* 080060a8 */ BL func_08005f34 \n\
 \n\
branch_080060ac: \n\
/* 080060ac */ ADD SP, 0x18 \n\
/* 080060ae */ POP {R3-R5} \n\
/* 080060b0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080060b2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080060b4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080060b6 */ POP {R4-R7} \n\
/* 080060b8 */ POP {R0} \n\
/* 080060ba */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
