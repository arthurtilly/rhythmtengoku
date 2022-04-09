asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801af64 \n\
/* 0801af64 */ PUSH {R4-R6, LR} \n\
/* 0801af66 */ SUB SP, 0x10 \n\
/* 0801af68 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801af6a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801af6c */ BLT branch_0801af7a \n\
/* 0801af6e */ LDR R6, =D_030046a8 \n\
/* 0801af70 */ LDR R0, [R6] \n\
/* 0801af72 */ ADDS R0, 0xC2 @ Add 0xC2 to R0 \n\
/* 0801af74 */ LDRB R0, [R0] \n\
/* 0801af76 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0801af78 */ BLT branch_0801af84 \n\
 \n\
branch_0801af7a: \n\
/* 0801af7a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801af7c */ B branch_0801afec \n\
\n\
.ltorg \n\
 \n\
branch_0801af84: \n\
/* 0801af84 */ ADDS R1, R4, 0x1 @ Set R1 to R4 + 0x1 \n\
/* 0801af86 */ MOV R0, SP @ Set R0 to SP \n\
/* 0801af88 */ BL func_08008248 \n\
/* 0801af8c */ LDR R5, =D_030046a4 \n\
/* 0801af8e */ LDR R0, [R5] \n\
/* 0801af90 */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 0801af92 */ LSLS R1, R1, 0x2 \n\
/* 0801af94 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801af96 */ LDR R1, =D_08058f58 \n\
/* 0801af98 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0801af9a */ BL memcpy \n\
/* 0801af9e */ LSLS R1, R4, 0x2 \n\
/* 0801afa0 */ ADDS R1, 0xC4 @ Add 0xC4 to R1 \n\
/* 0801afa2 */ LDR R0, [R6] \n\
/* 0801afa4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801afa6 */ LDRB R1, [R0] \n\
/* 0801afa8 */ LSLS R0, R1, 0x1 \n\
/* 0801afaa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801afac */ LSLS R0, R0, 0x2 \n\
/* 0801afae */ LDR R1, =D_089d81b4 \n\
/* 0801afb0 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0801afb2 */ LDR R2, [R1, 0x4] \n\
/* 0801afb4 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0801afb6 */ BEQ branch_0801afd4 \n\
/* 0801afb8 */ LDR R0, [R5] \n\
/* 0801afba */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 0801afbc */ LSLS R1, R1, 0x2 \n\
/* 0801afbe */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801afc0 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0801afc2 */ BL func_080081a8 \n\
/* 0801afc6 */ B branch_0801afe2 \n\
\n\
.ltorg \n\
 \n\
branch_0801afd4: \n\
/* 0801afd4 */ LDR R0, [R5] \n\
/* 0801afd6 */ MOVS R2, 0xE3 @ Set R2 to 0xE3 \n\
/* 0801afd8 */ LSLS R2, R2, 0x2 \n\
/* 0801afda */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801afdc */ LDR R1, [R1] \n\
/* 0801afde */ BL func_080081a8 \n\
 \n\
branch_0801afe2: \n\
/* 0801afe2 */ LDR R0, =D_030046a4 \n\
/* 0801afe4 */ LDR R0, [R0] \n\
/* 0801afe6 */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 0801afe8 */ LSLS R1, R1, 0x2 \n\
/* 0801afea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
 \n\
branch_0801afec: \n\
/* 0801afec */ ADD SP, 0x10 \n\
/* 0801afee */ POP {R4-R6} \n\
/* 0801aff0 */ POP {R1} \n\
/* 0801aff2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
