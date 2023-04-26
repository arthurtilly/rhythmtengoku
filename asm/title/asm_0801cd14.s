asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cd14 \n\
/* 0801cd14 */ PUSH {LR} \n\
/* 0801cd16 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801cd18 */ LDR R2, =gCurrentSceneData \n\
/* 0801cd1a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801cd1c */ BLT branch_0801cd24 \n\
/* 0801cd1e */ LDR R0, [R2] \n\
/* 0801cd20 */ ADDS R0, 0xA0 @ Add 0xA0 to R0 \n\
/* 0801cd22 */ STR R1, [R0] \n\
 \n\
branch_0801cd24: \n\
/* 0801cd24 */ LDR R2, [R2] \n\
/* 0801cd26 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0801cd28 */ ADDS R3, 0xA0 @ Add 0xA0 to R3 \n\
/* 0801cd2a */ LDR R1, [R3] \n\
/* 0801cd2c */ LSLS R0, R1, 0x3 \n\
/* 0801cd2e */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0801cd30 */ LSLS R0, R0, 0x2 \n\
/* 0801cd32 */ ADDS R0, 0x14 @ Add 0x14 to R0 \n\
/* 0801cd34 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0801cd36 */ LDRB R0, [R2] \n\
/* 0801cd38 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801cd3a */ BEQ branch_0801cd56 \n\
/* 0801cd3c */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0801cd3e */ LSLS R1, R1, 0x4 \n\
/* 0801cd40 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801cd42 */ LDRH R1, [R2, 0x18] \n\
/* 0801cd44 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801cd46 */ STRH R0, [R2, 0x18] \n\
/* 0801cd48 */ LDR R0, [R3] \n\
/* 0801cd4a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801cd4c */ STR R0, [R3] \n\
/* 0801cd4e */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0801cd50 */ BLE branch_0801cd56 \n\
/* 0801cd52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801cd54 */ STR R0, [R3] \n\
 \n\
branch_0801cd56: \n\
/* 0801cd56 */ POP {R0} \n\
/* 0801cd58 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
