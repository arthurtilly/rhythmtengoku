asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038fbc \n\
/* 08038fbc */ PUSH {R4-R7, LR} \n\
/* 08038fbe */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08038fc0 */ PUSH {R7} \n\
/* 08038fc2 */ SUB SP, 0xC \n\
/* 08038fc4 */ LSLS R0, R0, 0x18 \n\
/* 08038fc6 */ LSRS R7, R0, 0x18 \n\
/* 08038fc8 */ LSLS R1, R1, 0x18 \n\
/* 08038fca */ LSRS R1, R1, 0x18 \n\
/* 08038fcc */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08038fce */ LDR R4, =gCurrentEngineData \n\
/* 08038fd0 */ LDR R0, [R4] \n\
/* 08038fd2 */ ADDS R5, R0, 0x4 @ Set R5 to R0 + 0x4 \n\
/* 08038fd4 */ STRB R7, [R5, 0x2] \n\
/* 08038fd6 */ LDR R0, [R4] \n\
/* 08038fd8 */ ADDS R0, 0xF0 @ Add 0xF0 to R0 \n\
/* 08038fda */ LDR R6, [R0] \n\
/* 08038fdc */ LSRS R0, R6, 0x8 \n\
/* 08038fde */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08038fe0 */ BL __umodsi3 \n\
/* 08038fe4 */ LSLS R0, R0, 0x10 \n\
/* 08038fe6 */ LSRS R0, R0, 0x10 \n\
/* 08038fe8 */ CMP R0, 0xB @ Compare R0 and 0xB \n\
/* 08038fea */ BHI branch_08038ffc \n\
/* 08038fec */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08038fee */ LSLS R1, R1, 0x5 \n\
/* 08038ff0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08038ff2 */ BL __umodsi3 \n\
/* 08038ff6 */ B branch_0803900a \n\
\n\
.ltorg \n\
 \n\
branch_08038ffc: \n\
/* 08038ffc */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08038ffe */ LSLS R1, R1, 0x5 \n\
/* 08039000 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08039002 */ BL __umodsi3 \n\
/* 08039006 */ LDR R1, =0xffffe800 \n\
/* 08039008 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
 \n\
branch_0803900a: \n\
/* 0803900a */ STR R0, [R5, 0xC] \n\
/* 0803900c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803900e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08039010 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08039012 */ BEQ branch_08039016 \n\
/* 08039014 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_08039016: \n\
/* 08039016 */ SUBS R0, R7, 0x2 @ Set R0 to R7 - 0x2 \n\
/* 08039018 */ CMP R0, 0x7 @ Compare R0 and 0x7 \n\
/* 0803901a */ BHI branch_080390b6 \n\
/* 0803901c */ LSLS R0, R0, 0x2 \n\
/* 0803901e */ LDR R1, =jtbl_08039030 \n\
/* 08039020 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08039022 */ LDR R0, [R0] \n\
/* 08039024 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08039030: \n\
.word jump_08039050 \n\
.word jump_0803906a \n\
.word jump_0803906a \n\
.word jump_0803906a \n\
.word jump_08039074 \n\
.word jump_0803907e \n\
.word jump_0803908a \n\
.word jump_0803909e \n\
jump_08039050: \n\
/* 08039050 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08039052 */ LSLS R0, R0, 0x5 \n\
/* 08039054 */ STR R0, [R5, 0x10] \n\
/* 08039056 */ LDR R0, [R4] \n\
/* 08039058 */ MOVS R1, 0xC6 @ Set R1 to 0xC6 \n\
/* 0803905a */ LSLS R1, R1, 0x2 \n\
/* 0803905c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803905e */ LDRB R1, [R0] \n\
/* 08039060 */ LSLS R0, R1, 0x2 \n\
/* 08039062 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08039064 */ LSLS R0, R0, 0x2 \n\
/* 08039066 */ STRH R0, [R5, 0x14] \n\
/* 08039068 */ B branch_080390b6 \n\
jump_0803906a: \n\
/* 0803906a */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0803906c */ LSLS R0, R0, 0x5 \n\
/* 0803906e */ STR R0, [R5, 0x10] \n\
/* 08039070 */ MOVS R0, 0x50 @ Set R0 to 0x50 \n\
/* 08039072 */ B branch_08039094 \n\
jump_08039074: \n\
/* 08039074 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08039076 */ LSLS R0, R0, 0x6 \n\
/* 08039078 */ STR R0, [R5, 0x10] \n\
/* 0803907a */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0803907c */ B branch_08039094 \n\
jump_0803907e: \n\
/* 0803907e */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08039080 */ LSLS R0, R0, 0x7 \n\
/* 08039082 */ STR R0, [R5, 0x10] \n\
/* 08039084 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08039086 */ LSLS R0, R0, 0x1 \n\
/* 08039088 */ B branch_08039094 \n\
jump_0803908a: \n\
/* 0803908a */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0803908c */ LSLS R0, R0, 0x8 \n\
/* 0803908e */ STR R0, [R5, 0x10] \n\
/* 08039090 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08039092 */ LSLS R0, R0, 0x2 \n\
 \n\
branch_08039094: \n\
/* 08039094 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08039096 */ BL __divsi3 \n\
/* 0803909a */ STRH R0, [R5, 0x14] \n\
/* 0803909c */ B branch_080390b6 \n\
jump_0803909e: \n\
/* 0803909e */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 080390a0 */ LSLS R0, R0, 0x8 \n\
/* 080390a2 */ STR R0, [R5, 0x10] \n\
/* 080390a4 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 080390a6 */ LSLS R0, R0, 0x3 \n\
/* 080390a8 */ STRH R0, [R5, 0x14] \n\
/* 080390aa */ LDR R0, [R4] \n\
/* 080390ac */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 080390ae */ LSLS R2, R2, 0x1 \n\
/* 080390b0 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 080390b2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080390b4 */ STRB R0, [R1] \n\
 \n\
branch_080390b6: \n\
/* 080390b6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080390b8 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080390ba */ BEQ branch_080390f4 \n\
/* 080390bc */ LDR R0, =gSpriteHandler \n\
/* 080390be */ LDR R0, [R0] \n\
/* 080390c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080390c2 */ LDRSH R1, [R5, R2] \n\
/* 080390c4 */ LDR R2, =anim_bunny_hop_jump \n\
/* 080390c6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080390c8 */ STR R3, [SP] \n\
/* 080390ca */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080390cc */ STR R3, [SP, 0x4] \n\
/* 080390ce */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080390d0 */ STR R4, [SP, 0x8] \n\
/* 080390d2 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080390d4 */ BL sprite_set_anim \n\
/* 080390d8 */ STRB R4, [R5, 0x18] \n\
/* 080390da */ STRB R4, [R5, 0x17] \n\
/* 080390dc */ MOVS R0, 0x16 @ Set R0 to 0x16 \n\
/* 080390de */ LDRSB R0, [R5, R0] \n\
/* 080390e0 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080390e2 */ LSLS R1, R1, 0x1 \n\
/* 080390e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080390e6 */ BL set_affine_scale_rotation \n\
/* 080390ea */ B branch_08039112 \n\
\n\
.ltorg \n\
 \n\
branch_080390f4: \n\
/* 080390f4 */ LDR R0, =gSpriteHandler \n\
/* 080390f6 */ LDR R0, [R0] \n\
/* 080390f8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080390fa */ LDRSH R1, [R5, R3] \n\
/* 080390fc */ LDR R2, =anim_bunny_hop_miss \n\
/* 080390fe */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08039100 */ STR R4, [SP] \n\
/* 08039102 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08039104 */ STR R3, [SP, 0x4] \n\
/* 08039106 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08039108 */ STR R3, [SP, 0x8] \n\
/* 0803910a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803910c */ BL sprite_set_anim \n\
/* 08039110 */ STRB R4, [R5, 0x18] \n\
 \n\
branch_08039112: \n\
/* 08039112 */ ADD SP, 0xC \n\
/* 08039114 */ POP {R3} \n\
/* 08039116 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08039118 */ POP {R4-R7} \n\
/* 0803911a */ POP {R0} \n\
/* 0803911c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
