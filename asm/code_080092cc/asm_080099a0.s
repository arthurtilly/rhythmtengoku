asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080099a0 \n\
/* 080099a0 */ PUSH {R4-R7, LR} \n\
/* 080099a2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080099a4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080099a6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080099a8 */ PUSH {R5-R7} \n\
/* 080099aa */ SUB SP, 0x14 \n\
/* 080099ac */ STR R0, [SP, 0xC] \n\
/* 080099ae */ STR R1, [SP, 0x10] \n\
/* 080099b0 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 080099b2 */ STR R3, [SP, 0x8] \n\
/* 080099b4 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 080099b6 */ LDR R1, =D_089380ac \n\
/* 080099b8 */ LSLS R0, R6, 0x1 \n\
/* 080099ba */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 080099bc */ LSLS R0, R0, 0x2 \n\
/* 080099be */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080099c0 */ LDRB R0, [R0, 0x9] \n\
/* 080099c2 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080099c4 */ LDR R0, =D_089380d0 \n\
/* 080099c6 */ STR R0, [SP, 0x4] \n\
/* 080099c8 */ ADD R0, SP, 0x4 \n\
/* 080099ca */ BL func_0800a108 \n\
/* 080099ce */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080099d0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080099d2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080099d4 */ BL func_08009898 \n\
/* 080099d8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080099da */ B branch_08009a32 \n\
\n\
.ltorg \n\
 \n\
branch_080099e4: \n\
/* 080099e4 */ ADD R0, SP, 0x8 \n\
/* 080099e6 */ BL func_0800a108 \n\
/* 080099ea */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080099ec */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080099ee */ BLT branch_08009a32 \n\
/* 080099f0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080099f2 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080099f4 */ BL func_08009898 \n\
/* 080099f8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080099fa */ LDR R0, [SP, 0x8] \n\
/* 080099fc */ LDRB R0, [R0] \n\
/* 080099fe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009a00 */ BEQ branch_08009a0a \n\
/* 08009a02 */ ADDS R0, R7, R4 @ Set R0 to R7 + R4 \n\
/* 08009a04 */ ADD R0, R10 @ Add R10 to R0 \n\
/* 08009a06 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08009a08 */ B branch_08009a0c \n\
 \n\
branch_08009a0a: \n\
/* 08009a0a */ ADDS R0, R7, R4 @ Set R0 to R7 + R4 \n\
 \n\
branch_08009a0c: \n\
/* 08009a0c */ LDR R1, [SP, 0x34] \n\
/* 08009a0e */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08009a10 */ BLE branch_08009a1a \n\
/* 08009a12 */ LDR R0, [SP, 0x4] \n\
/* 08009a14 */ STR R0, [SP, 0x8] \n\
/* 08009a16 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 08009a18 */ MOV R4, R8 @ Set R4 to R8 \n\
 \n\
branch_08009a1a: \n\
/* 08009a1a */ LDR R1, [SP, 0xC] \n\
/* 08009a1c */ ADDS R0, R1, R7 @ Set R0 to R1 + R7 \n\
/* 08009a1e */ LDR R1, [SP, 0x38] \n\
/* 08009a20 */ STR R1, [SP] \n\
/* 08009a22 */ LDR R1, [SP, 0x10] \n\
/* 08009a24 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08009a26 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08009a28 */ BL func_08009948 \n\
/* 08009a2c */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08009a2e */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08009a30 */ ADDS R7, R7, R0 @ Set R7 to R7 + R0 \n\
 \n\
branch_08009a32: \n\
/* 08009a32 */ LDR R0, [SP, 0x8] \n\
/* 08009a34 */ LDRB R0, [R0] \n\
/* 08009a36 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009a38 */ BNE branch_080099e4 \n\
/* 08009a3a */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08009a3c */ BEQ branch_08009a42 \n\
/* 08009a3e */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08009a40 */ SUBS R7, R7, R0 @ Set R7 to R7 - R0 \n\
 \n\
branch_08009a42: \n\
/* 08009a42 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08009a44 */ ADD SP, 0x14 \n\
/* 08009a46 */ POP {R3-R5} \n\
/* 08009a48 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08009a4a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08009a4c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08009a4e */ POP {R4-R7} \n\
/* 08009a50 */ POP {R1} \n\
/* 08009a52 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
