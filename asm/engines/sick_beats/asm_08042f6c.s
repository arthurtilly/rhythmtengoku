asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042f6c \n\
/* 08042f6c */ PUSH {R4-R7, LR} \n\
/* 08042f6e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08042f70 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08042f72 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08042f74 */ PUSH {R5-R7} \n\
/* 08042f76 */ SUB SP, 0x1C \n\
/* 08042f78 */ LDR R0, =gCurrentEngineData \n\
/* 08042f7a */ LDR R6, [R0] \n\
/* 08042f7c */ ADDS R5, R6, 0x0 @ Set R5 to R6 + 0x0 \n\
/* 08042f7e */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 08042f80 */ LDR R0, =D_03005380 \n\
/* 08042f82 */ LDR R0, [R0] \n\
/* 08042f84 */ LDR R1, =anim_fork_launcher \n\
/* 08042f86 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08042f88 */ STR R2, [SP] \n\
/* 08042f8a */ MOVS R7, 0x90 @ Set R7 to 0x90 \n\
/* 08042f8c */ LSLS R7, R7, 0x7 \n\
/* 08042f8e */ STR R7, [SP, 0x4] \n\
/* 08042f90 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08042f92 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08042f94 */ STR R2, [SP, 0x8] \n\
/* 08042f96 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08042f98 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08042f9a */ STR R2, [SP, 0xC] \n\
/* 08042f9c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08042f9e */ STR R4, [SP, 0x10] \n\
/* 08042fa0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042fa2 */ MOVS R3, 0x68 @ Set R3 to 0x68 \n\
/* 08042fa4 */ BL func_0804d160 \n\
/* 08042fa8 */ STRH R0, [R6, 0xC] \n\
/* 08042faa */ LDR R0, =anim_fork_hit_none2 \n\
/* 08042fac */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08042fae */ STR R7, [SP] \n\
/* 08042fb0 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 08042fb2 */ LSLS R6, R6, 0x1 \n\
/* 08042fb4 */ STR R6, [SP, 0x4] \n\
/* 08042fb6 */ LDR R0, =0xfffffe00 \n\
/* 08042fb8 */ STR R0, [SP, 0x8] \n\
/* 08042fba */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08042fbc */ STR R2, [SP, 0xC] \n\
/* 08042fbe */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08042fc0 */ STR R0, [SP, 0x10] \n\
/* 08042fc2 */ STR R4, [SP, 0x14] \n\
/* 08042fc4 */ STR R4, [SP, 0x18] \n\
/* 08042fc6 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08042fc8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08042fca */ MOVS R2, 0x68 @ Set R2 to 0x68 \n\
/* 08042fcc */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08042fce */ BL create_affine_sprite \n\
/* 08042fd2 */ STR R0, [R5, 0x4] \n\
/* 08042fd4 */ STR R7, [SP] \n\
/* 08042fd6 */ STR R6, [SP, 0x4] \n\
/* 08042fd8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08042fda */ LSLS R0, R0, 0x2 \n\
/* 08042fdc */ STR R0, [SP, 0x8] \n\
/* 08042fde */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08042fe0 */ STR R2, [SP, 0xC] \n\
/* 08042fe2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08042fe4 */ STR R0, [SP, 0x10] \n\
/* 08042fe6 */ STR R4, [SP, 0x14] \n\
/* 08042fe8 */ STR R4, [SP, 0x18] \n\
/* 08042fea */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08042fec */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08042fee */ MOVS R2, 0x68 @ Set R2 to 0x68 \n\
/* 08042ff0 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08042ff2 */ BL create_affine_sprite \n\
/* 08042ff6 */ STR R0, [R5, 0x8] \n\
/* 08042ff8 */ STR R7, [SP] \n\
/* 08042ffa */ STR R6, [SP, 0x4] \n\
/* 08042ffc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08042ffe */ LSLS R0, R0, 0x3 \n\
/* 08043000 */ STR R0, [SP, 0x8] \n\
/* 08043002 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08043004 */ STR R2, [SP, 0xC] \n\
/* 08043006 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08043008 */ STR R0, [SP, 0x10] \n\
/* 0804300a */ STR R4, [SP, 0x14] \n\
/* 0804300c */ STR R4, [SP, 0x18] \n\
/* 0804300e */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08043010 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043012 */ MOVS R2, 0x68 @ Set R2 to 0x68 \n\
/* 08043014 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08043016 */ BL create_affine_sprite \n\
/* 0804301a */ STR R0, [R5, 0xC] \n\
/* 0804301c */ STR R7, [SP] \n\
/* 0804301e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08043020 */ STR R2, [SP, 0x4] \n\
/* 08043022 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08043024 */ STR R0, [SP, 0x8] \n\
/* 08043026 */ STR R4, [SP, 0xC] \n\
/* 08043028 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804302a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804302c */ MOVS R2, 0x68 @ Set R2 to 0x68 \n\
/* 0804302e */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08043030 */ BL create_default_affine_sprite \n\
/* 08043034 */ STR R0, [R5, 0x10] \n\
/* 08043036 */ STRH R4, [R5, 0x14] \n\
/* 08043038 */ STRH R4, [R5, 0x16] \n\
/* 0804303a */ STRH R4, [R5, 0x18] \n\
/* 0804303c */ STRH R4, [R5, 0x1A] \n\
/* 0804303e */ ADD SP, 0x1C \n\
/* 08043040 */ POP {R3-R5} \n\
/* 08043042 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08043044 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08043046 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08043048 */ POP {R4-R7} \n\
/* 0804304a */ POP {R0} \n\
/* 0804304c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
