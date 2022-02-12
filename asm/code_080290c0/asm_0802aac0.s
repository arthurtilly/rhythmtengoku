asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802aac0 \n\
/* 0802aac0 */ PUSH {R4-R7, LR} \n\
/* 0802aac2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802aac4 */ PUSH {R7} \n\
/* 0802aac6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802aac8 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802aaca */ LDR R0, =D_03001568 \n\
/* 0802aacc */ LDR R0, [R0] \n\
/* 0802aace */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802aad0 */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 0802aad2 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802aad4 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802aad6 */ BL func_0802a994 \n\
/* 0802aada */ LDRH R0, [R4] \n\
/* 0802aadc */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 0802aade */ BEQ branch_0802ab28 \n\
 \n\
branch_0802aae0: \n\
/* 0802aae0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802aae2 */ BL func_0800c3a4 \n\
/* 0802aae6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802aae8 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802aaea */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802aaec */ BLE branch_0802aaf2 \n\
/* 0802aaee */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802aaf0 */ BNE branch_0802ab04 \n\
 \n\
branch_0802aaf2: \n\
/* 0802aaf2 */ LDRH R0, [R4] \n\
/* 0802aaf4 */ LDRH R1, [R4, 0x2] \n\
/* 0802aaf6 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802aaf8 */ LDRSH R2, [R4, R3] \n\
/* 0802aafa */ BL func_0802ab7c \n\
/* 0802aafe */ B branch_0802ab18 \n\
\n\
.ltorg \n\
 \n\
branch_0802ab04: \n\
/* 0802ab04 */ LDRH R0, [R4] \n\
/* 0802ab06 */ STRH R0, [R5] \n\
/* 0802ab08 */ LDRH R0, [R4, 0x2] \n\
/* 0802ab0a */ STRH R0, [R5, 0x2] \n\
/* 0802ab0c */ LDRH R0, [R4, 0x4] \n\
/* 0802ab0e */ STRH R0, [R5, 0x4] \n\
/* 0802ab10 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0802ab12 */ STRH R0, [R5, 0x6] \n\
/* 0802ab14 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0802ab16 */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
 \n\
branch_0802ab18: \n\
/* 0802ab18 */ LDRH R0, [R4, 0x6] \n\
/* 0802ab1a */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 0802ab1c */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0802ab1e */ LDRH R0, [R4] \n\
/* 0802ab20 */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 0802ab22 */ BEQ branch_0802ab28 \n\
/* 0802ab24 */ CMP R7, 0x63 @ Compare R7 and 0x63 \n\
/* 0802ab26 */ BLS branch_0802aae0 \n\
 \n\
branch_0802ab28: \n\
/* 0802ab28 */ POP {R3} \n\
/* 0802ab2a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802ab2c */ POP {R4-R7} \n\
/* 0802ab2e */ POP {R0} \n\
/* 0802ab30 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
