asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802db08 \n\
/* 0802db08 */ PUSH {R4-R7, LR} \n\
/* 0802db0a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802db0c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802db0e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802db10 */ PUSH {R5-R7} \n\
/* 0802db12 */ SUB SP, 0x4 \n\
/* 0802db14 */ LDR R0, =gCurrentEngineData \n\
/* 0802db16 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802db18 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802db1a */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 0802db1c */ STR R1, [SP] \n\
 \n\
branch_0802db1e: \n\
/* 0802db1e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802db20 */ LDR R4, [R2] \n\
/* 0802db22 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0802db24 */ LSLS R3, R3, 0x2 \n\
/* 0802db26 */ ADDS R0, R4, R3 @ Set R0 to R4 + R3 \n\
/* 0802db28 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802db2a */ LDR R0, [R0] \n\
/* 0802db2c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802db2e */ BEQ branch_0802dc28 \n\
/* 0802db30 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802db32 */ BNE branch_0802dc28 \n\
/* 0802db34 */ MOVS R7, 0x82 @ Set R7 to 0x82 \n\
/* 0802db36 */ LSLS R7, R7, 0x2 \n\
/* 0802db38 */ ADDS R1, R4, R7 @ Set R1 to R4 + R7 \n\
/* 0802db3a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802db3c */ LDR R0, [R1] \n\
/* 0802db3e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802db40 */ STR R0, [R1] \n\
/* 0802db42 */ MOVS R0, 0x83 @ Set R0 to 0x83 \n\
/* 0802db44 */ LSLS R0, R0, 0x2 \n\
/* 0802db46 */ ADDS R2, R4, R0 @ Set R2 to R4 + R0 \n\
/* 0802db48 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0802db4a */ MOVS R6, 0x85 @ Set R6 to 0x85 \n\
/* 0802db4c */ LSLS R6, R6, 0x2 \n\
/* 0802db4e */ ADDS R0, R4, R6 @ Set R0 to R4 + R6 \n\
/* 0802db50 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802db52 */ LDR R1, [R2] \n\
/* 0802db54 */ LDR R0, [R0] \n\
/* 0802db56 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802db58 */ STR R1, [R2] \n\
/* 0802db5a */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 0802db5c */ LSLS R1, R1, 0x2 \n\
/* 0802db5e */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0802db60 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 0802db62 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802db64 */ ADDS R3, 0x18 @ Add 0x18 to R3 \n\
/* 0802db66 */ ADDS R0, R4, R3 @ Set R0 to R4 + R3 \n\
/* 0802db68 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802db6a */ LDR R3, [R1] \n\
/* 0802db6c */ LDR R0, [R0] \n\
/* 0802db6e */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0802db70 */ STR R3, [R1] \n\
/* 0802db72 */ LDR R7, =gSpriteHandler \n\
/* 0802db74 */ LDR R0, [R7] \n\
/* 0802db76 */ MOVS R1, 0x81 @ Set R1 to 0x81 \n\
/* 0802db78 */ LSLS R1, R1, 0x2 \n\
/* 0802db7a */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0802db7c */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 0802db7e */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802db80 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802db82 */ LDRSH R1, [R1, R4] \n\
/* 0802db84 */ LDR R2, [R2] \n\
/* 0802db86 */ LSLS R2, R2, 0x8 \n\
/* 0802db88 */ ASRS R2, R2, 0x10 \n\
/* 0802db8a */ LSLS R3, R3, 0x8 \n\
/* 0802db8c */ ASRS R3, R3, 0x10 \n\
/* 0802db8e */ BL sprite_set_x_y \n\
/* 0802db92 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802db94 */ LDR R0, [R7] \n\
/* 0802db96 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802db98 */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0802db9a */ LDR R0, [R1] \n\
/* 0802db9c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802db9e */ BLE branch_0802dba4 \n\
/* 0802dba0 */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
/* 0802dba2 */ STR R0, [R1] \n\
 \n\
branch_0802dba4: \n\
/* 0802dba4 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802dba6 */ LDR R0, [R1] \n\
/* 0802dba8 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802dbaa */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0802dbac */ LDR R0, [R1] \n\
/* 0802dbae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802dbb0 */ BGE branch_0802dbb6 \n\
/* 0802dbb2 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0802dbb4 */ STR R0, [R1] \n\
 \n\
branch_0802dbb6: \n\
/* 0802dbb6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802dbb8 */ LDR R0, [R2] \n\
/* 0802dbba */ MOVS R3, 0x86 @ Set R3 to 0x86 \n\
/* 0802dbbc */ LSLS R3, R3, 0x2 \n\
/* 0802dbbe */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802dbc0 */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0802dbc2 */ LDR R0, [R1] \n\
/* 0802dbc4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802dbc6 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0802dbc8 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0802dbca */ BLE branch_0802dbd0 \n\
/* 0802dbcc */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 0802dbce */ STR R0, [R1] \n\
 \n\
branch_0802dbd0: \n\
/* 0802dbd0 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0802dbd2 */ LDR R0, [R4] \n\
/* 0802dbd4 */ MOVS R7, 0x86 @ Set R7 to 0x86 \n\
/* 0802dbd6 */ LSLS R7, R7, 0x2 \n\
/* 0802dbd8 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802dbda */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0802dbdc */ LDR R0, [R1] \n\
/* 0802dbde */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0802dbe0 */ BGE branch_0802dbe6 \n\
/* 0802dbe2 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0802dbe4 */ STR R0, [R1] \n\
 \n\
branch_0802dbe6: \n\
/* 0802dbe6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802dbe8 */ LDR R2, [R0] \n\
/* 0802dbea */ MOVS R1, 0x82 @ Set R1 to 0x82 \n\
/* 0802dbec */ LSLS R1, R1, 0x2 \n\
/* 0802dbee */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802dbf0 */ ADDS R3, R0, R5 @ Set R3 to R0 + R5 \n\
/* 0802dbf2 */ LDR R0, [R3] \n\
/* 0802dbf4 */ CMP R0, 0x78 @ Compare R0 and 0x78 \n\
/* 0802dbf6 */ BGT branch_0802dc06 \n\
/* 0802dbf8 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0802dbfa */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 0802dbfc */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802dbfe */ LDR R1, [R0] \n\
/* 0802dc00 */ LDR R0, =0x8fff \n\
/* 0802dc02 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0802dc04 */ BGT branch_0802dc28 \n\
 \n\
branch_0802dc06: \n\
/* 0802dc06 */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 0802dc08 */ LSLS R7, R7, 0x2 \n\
/* 0802dc0a */ ADDS R0, R2, R7 @ Set R0 to R2 + R7 \n\
/* 0802dc0c */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802dc0e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802dc10 */ STR R1, [R0] \n\
/* 0802dc12 */ STR R1, [R3] \n\
/* 0802dc14 */ LDR R1, =gSpriteHandler \n\
/* 0802dc16 */ LDR R0, [R1] \n\
/* 0802dc18 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0802dc1a */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802dc1c */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802dc1e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802dc20 */ LDRSH R1, [R1, R4] \n\
/* 0802dc22 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802dc24 */ BL sprite_set_visible \n\
 \n\
branch_0802dc28: \n\
/* 0802dc28 */ ADDS R5, 0x1C @ Add 0x1C to R5 \n\
/* 0802dc2a */ LDR R7, [SP] \n\
/* 0802dc2c */ SUBS R7, 0x1 @ Subtract 0x1 from R7 \n\
/* 0802dc2e */ STR R7, [SP] \n\
/* 0802dc30 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0802dc32 */ BLT branch_0802dc36 \n\
/* 0802dc34 */ B branch_0802db1e \n\
 \n\
branch_0802dc36: \n\
/* 0802dc36 */ ADD SP, 0x4 \n\
/* 0802dc38 */ POP {R3-R5} \n\
/* 0802dc3a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802dc3c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802dc3e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802dc40 */ POP {R4-R7} \n\
/* 0802dc42 */ POP {R0} \n\
/* 0802dc44 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
