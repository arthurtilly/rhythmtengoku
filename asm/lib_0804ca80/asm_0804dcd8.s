asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804dcd8 \n\
/* 0804dcd8 */ PUSH {R4-R7, LR} \n\
/* 0804dcda */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804dcdc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804dcde */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804dce0 */ PUSH {R5-R7} \n\
/* 0804dce2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804dce4 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804dce6 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0804dce8 */ MOV R8, R6 @ Set R8 to R6 \n\
/* 0804dcea */ MOV R12, R6 @ Set R12 to R6 \n\
/* 0804dcec */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0804dcee */ LDRH R0, [R4] \n\
/* 0804dcf0 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0804dcf2 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0804dcf4 */ BGE branch_0804dd4c \n\
/* 0804dcf6 */ LDR R1, =D_08bd0cae \n\
/* 0804dcf8 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0804dcfa */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
 \n\
branch_0804dcfc: \n\
/* 0804dcfc */ LDRH R0, [R4, 0x2] \n\
/* 0804dcfe */ LSLS R0, R0, 0x17 \n\
/* 0804dd00 */ LSRS R2, R0, 0x17 \n\
/* 0804dd02 */ CMP R2, 0xFF @ Compare R2 and 0xFF \n\
/* 0804dd04 */ BLE branch_0804dd0a \n\
/* 0804dd06 */ LDR R0, =0xfffffe00 \n\
/* 0804dd08 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
 \n\
branch_0804dd0a: \n\
/* 0804dd0a */ LDRB R3, [R4] \n\
/* 0804dd0c */ CMP R3, 0x7F @ Compare R3 and 0x7F \n\
/* 0804dd0e */ BLE branch_0804dd14 \n\
/* 0804dd10 */ LDR R0, =0xffffff00 \n\
/* 0804dd12 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
 \n\
branch_0804dd14: \n\
/* 0804dd14 */ LDRB R1, [R4, 0x1] \n\
/* 0804dd16 */ LSRS R1, R1, 0x6 \n\
/* 0804dd18 */ LSLS R1, R1, 0x3 \n\
/* 0804dd1a */ LDRB R0, [R4, 0x3] \n\
/* 0804dd1c */ LSRS R0, R0, 0x6 \n\
/* 0804dd1e */ LSLS R0, R0, 0x1 \n\
/* 0804dd20 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804dd22 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0804dd24 */ CMP R2, R7 @ Check R2 - R7 \n\
/* 0804dd26 */ BGE branch_0804dd2a \n\
/* 0804dd28 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
 \n\
branch_0804dd2a: \n\
/* 0804dd2a */ LDRB R0, [R1] \n\
/* 0804dd2c */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0804dd2e */ CMP R0, R12 @ Compare R0 and R12 \n\
/* 0804dd30 */ BLE branch_0804dd34 \n\
/* 0804dd32 */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_0804dd34: \n\
/* 0804dd34 */ CMP R3, R8 @ Compare R3 and R8 \n\
/* 0804dd36 */ BGE branch_0804dd3a \n\
/* 0804dd38 */ MOV R8, R3 @ Set R8 to R3 \n\
 \n\
branch_0804dd3a: \n\
/* 0804dd3a */ LDRB R0, [R1, 0x1] \n\
/* 0804dd3c */ ADDS R1, R3, R0 @ Set R1 to R3 + R0 \n\
/* 0804dd3e */ CMP R1, R6 @ Check R1 - R6 \n\
/* 0804dd40 */ BLE branch_0804dd44 \n\
/* 0804dd42 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
 \n\
branch_0804dd44: \n\
/* 0804dd44 */ ADDS R4, 0x6 @ Add 0x6 to R4 \n\
/* 0804dd46 */ SUBS R5, 0x1 @ Subtract 0x1 from R5 \n\
/* 0804dd48 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804dd4a */ BNE branch_0804dcfc \n\
 \n\
branch_0804dd4c: \n\
/* 0804dd4c */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804dd4e */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0804dd50 */ BHI branch_0804dda0 \n\
/* 0804dd52 */ LSLS R0, R0, 0x2 \n\
/* 0804dd54 */ LDR R1, =jtbl_0804dd6c \n\
/* 0804dd56 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804dd58 */ LDR R0, [R0] \n\
/* 0804dd5a */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0804dd6c: \n\
.word jump_0804dd84 \n\
.word jump_0804dd88 \n\
.word jump_0804dd8c \n\
.word jump_0804dd90 \n\
.word jump_0804dd94 \n\
.word jump_0804dd9a \n\
jump_0804dd84: \n\
/* 0804dd84 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804dd86 */ B branch_0804dda2 \n\
jump_0804dd88: \n\
/* 0804dd88 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0804dd8a */ B branch_0804dda2 \n\
jump_0804dd8c: \n\
/* 0804dd8c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804dd8e */ B branch_0804dda2 \n\
jump_0804dd90: \n\
/* 0804dd90 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804dd92 */ B branch_0804dda2 \n\
jump_0804dd94: \n\
/* 0804dd94 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0804dd96 */ SUBS R0, R1, R7 @ Set R0 to R1 - R7 \n\
/* 0804dd98 */ B branch_0804dda2 \n\
jump_0804dd9a: \n\
/* 0804dd9a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804dd9c */ SUBS R0, R6, R1 @ Set R0 to R6 - R1 \n\
/* 0804dd9e */ B branch_0804dda2 \n\
 \n\
branch_0804dda0: \n\
/* 0804dda0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0804dda2: \n\
/* 0804dda2 */ POP {R3-R5} \n\
/* 0804dda4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804dda6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804dda8 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804ddaa */ POP {R4-R7} \n\
/* 0804ddac */ POP {R1} \n\
/* 0804ddae */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
