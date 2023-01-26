asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801eb20 \n\
/* 0801eb20 */ PUSH {R4, LR} \n\
/* 0801eb22 */ SUB SP, 0x4 \n\
/* 0801eb24 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801eb26 */ BL func_08007324 \n\
/* 0801eb2a */ BL func_080073f0 \n\
/* 0801eb2e */ BL get_current_mem_id \n\
/* 0801eb32 */ LSLS R0, R0, 0x10 \n\
/* 0801eb34 */ LSRS R0, R0, 0x10 \n\
/* 0801eb36 */ LDR R1, =D_089de670 \n\
/* 0801eb38 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0801eb3a */ LSLS R3, R3, 0x2 \n\
/* 0801eb3c */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801eb3e */ STR R2, [SP] \n\
/* 0801eb40 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801eb42 */ BL func_08005124 \n\
/* 0801eb46 */ LDR R4, =D_030046a4 \n\
/* 0801eb48 */ LDR R1, [R4] \n\
/* 0801eb4a */ STR R0, [R1] \n\
/* 0801eb4c */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0801eb4e */ LSLS R0, R0, 0x2 \n\
/* 0801eb50 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801eb52 */ BL func_0800c660 \n\
/* 0801eb56 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801eb58 */ LDR R0, [R4] \n\
/* 0801eb5a */ STR R1, [R0, 0x4] \n\
/* 0801eb5c */ LDR R0, =D_03005380 \n\
/* 0801eb5e */ LDR R0, [R0] \n\
/* 0801eb60 */ LDR R2, =D_089de0e4 \n\
/* 0801eb62 */ LDR R3, =D_0300558c \n\
/* 0801eb64 */ LDR R3, [R3] \n\
/* 0801eb66 */ BL func_08005814 \n\
/* 0801eb6a */ BL func_0801eae4 \n\
/* 0801eb6e */ LDR R1, [R4] \n\
/* 0801eb70 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801eb72 */ STR R0, [R1, 0x8] \n\
/* 0801eb74 */ ADD SP, 0x4 \n\
/* 0801eb76 */ POP {R4} \n\
/* 0801eb78 */ POP {R0} \n\
/* 0801eb7a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
