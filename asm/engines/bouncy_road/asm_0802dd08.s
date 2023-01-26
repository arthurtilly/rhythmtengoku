asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802dd08 \n\
/* 0802dd08 */ PUSH {R4-R7, LR} \n\
/* 0802dd0a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802dd0c */ PUSH {R7} \n\
/* 0802dd0e */ SUB SP, 0x1C \n\
/* 0802dd10 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802dd12 */ LDR R0, =D_030055d0 \n\
/* 0802dd14 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802dd16 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802dd18 */ MOVS R6, 0x40 @ Set R6 to 0x40 \n\
 \n\
branch_0802dd1a: \n\
/* 0802dd1a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802dd1c */ LDR R4, [R1] \n\
/* 0802dd1e */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0802dd20 */ STR R5, [SP] \n\
/* 0802dd22 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802dd24 */ LSLS R0, R0, 0x1 \n\
/* 0802dd26 */ STR R0, [SP, 0x4] \n\
/* 0802dd28 */ STR R5, [SP, 0x8] \n\
/* 0802dd2a */ STR R5, [SP, 0xC] \n\
/* 0802dd2c */ STR R5, [SP, 0x10] \n\
/* 0802dd2e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802dd30 */ LSLS R0, R0, 0x8 \n\
/* 0802dd32 */ STR R0, [SP, 0x14] \n\
/* 0802dd34 */ STR R5, [SP, 0x18] \n\
/* 0802dd36 */ LDR R0, =anim_bouncy_road_ball \n\
/* 0802dd38 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802dd3a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802dd3c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802dd3e */ BL create_affine_sprite \n\
/* 0802dd42 */ STR R0, [R4] \n\
/* 0802dd44 */ LDRB R0, [R4, 0x4] \n\
/* 0802dd46 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802dd48 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0802dd4a */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0802dd4c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802dd4e */ STRB R0, [R4, 0x4] \n\
/* 0802dd50 */ ADDS R6, 0x28 @ Add 0x28 to R6 \n\
/* 0802dd52 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0802dd54 */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 0802dd56 */ BLS branch_0802dd1a \n\
/* 0802dd58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802dd5a */ LDR R0, =D_030055d0 \n\
/* 0802dd5c */ LDR R3, [R0] \n\
/* 0802dd5e */ MOVS R1, 0xE8 @ Set R1 to 0xE8 \n\
/* 0802dd60 */ LSLS R1, R1, 0x1 \n\
/* 0802dd62 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0802dd64 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802dd66 */ STRH R2, [R0] \n\
/* 0802dd68 */ MOVS R2, 0xE9 @ Set R2 to 0xE9 \n\
/* 0802dd6a */ LSLS R2, R2, 0x1 \n\
/* 0802dd6c */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802dd6e */ STRB R1, [R0] \n\
/* 0802dd70 */ ADD SP, 0x1C \n\
/* 0802dd72 */ POP {R3} \n\
/* 0802dd74 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802dd76 */ POP {R4-R7} \n\
/* 0802dd78 */ POP {R0} \n\
/* 0802dd7a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
