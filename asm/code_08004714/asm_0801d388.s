asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801d388 \n\
/* 0801d388 */ PUSH {R4-R7, LR} \n\
/* 0801d38a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801d38c */ PUSH {R7} \n\
/* 0801d38e */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801d390 */ LDR R6, =D_03005380 \n\
/* 0801d392 */ LDR R0, [R6] \n\
/* 0801d394 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801d396 */ LDR R5, =D_030046a4 \n\
/* 0801d398 */ LDR R0, [R5] \n\
/* 0801d39a */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0801d39c */ LDRSH R4, [R0, R1] \n\
/* 0801d39e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801d3a0 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0801d3a2 */ BL func_0804f150 \n\
/* 0801d3a6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801d3a8 */ LSLS R2, R2, 0x18 \n\
/* 0801d3aa */ ASRS R2, R2, 0x18 \n\
/* 0801d3ac */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801d3ae */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801d3b0 */ BL func_0804cebc \n\
/* 0801d3b4 */ LDR R6, [R6] \n\
/* 0801d3b6 */ LDR R0, [R5] \n\
/* 0801d3b8 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0801d3ba */ LDRSH R4, [R0, R2] \n\
/* 0801d3bc */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 0801d3be */ BLS branch_0801d3d8 \n\
/* 0801d3c0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801d3c2 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0801d3c4 */ BL __udivsi3 \n\
/* 0801d3c8 */ LSLS R0, R0, 0x18 \n\
/* 0801d3ca */ ASRS R2, R0, 0x18 \n\
/* 0801d3cc */ B branch_0801d3da \n\
\n\
.ltorg \n\
 \n\
branch_0801d3d8: \n\
/* 0801d3d8 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
 \n\
branch_0801d3da: \n\
/* 0801d3da */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801d3dc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801d3de */ BL func_0804cebc \n\
/* 0801d3e2 */ LDR R0, =D_03005380 \n\
/* 0801d3e4 */ LDR R3, [R0] \n\
/* 0801d3e6 */ LDR R0, =D_030046a4 \n\
/* 0801d3e8 */ LDR R0, [R0] \n\
/* 0801d3ea */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0801d3ec */ LDRSH R1, [R0, R2] \n\
/* 0801d3ee */ MOVS R2, 0x3A @ Set R2 to 0x3A \n\
/* 0801d3f0 */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 0801d3f2 */ BHI branch_0801d3f6 \n\
/* 0801d3f4 */ MOVS R2, 0x35 @ Set R2 to 0x35 \n\
 \n\
branch_0801d3f6: \n\
/* 0801d3f6 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0801d3f8 */ BL func_0804d614 \n\
/* 0801d3fc */ POP {R3} \n\
/* 0801d3fe */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801d400 */ POP {R4-R7} \n\
/* 0801d402 */ POP {R0} \n\
/* 0801d404 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
