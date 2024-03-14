asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080358fc \n\
/* 080358fc */ PUSH {R4-R7, LR} \n\
/* 080358fe */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08035900 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08035902 */ PUSH {R6, R7} \n\
/* 08035904 */ SUB SP, 0xC \n\
/* 08035906 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08035908 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0803590a */ LDR R0, =gCurrentEngineData \n\
/* 0803590c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803590e */ LDR R1, [R0] \n\
/* 08035910 */ LSLS R2, R6, 0x1 \n\
/* 08035912 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08035914 */ ADDS R0, 0x1C @ Add 0x1C to R0 \n\
/* 08035916 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08035918 */ LDRH R5, [R0] \n\
/* 0803591a */ ADDS R1, 0x2A @ Add 0x2A to R1 \n\
/* 0803591c */ LDRB R0, [R1] \n\
/* 0803591e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08035920 */ BEQ branch_080359d0 \n\
/* 08035922 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 08035924 */ BEQ branch_08035934 \n\
/* 08035926 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 08035928 */ BCC branch_080359d0 \n\
/* 0803592a */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0803592c */ BEQ branch_08035984 \n\
/* 0803592e */ B branch_080359d0 \n\
\n\
.ltorg \n\
 \n\
branch_08035934: \n\
/* 08035934 */ LDR R0, =gSpriteHandler \n\
/* 08035936 */ LDR R0, [R0] \n\
/* 08035938 */ LSLS R5, R5, 0x10 \n\
/* 0803593a */ ASRS R5, R5, 0x10 \n\
/* 0803593c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803593e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035940 */ BL sprite_set_anim_cel \n\
/* 08035944 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08035946 */ BL ticks_to_frames \n\
/* 0803594a */ LSLS R0, R0, 0x10 \n\
/* 0803594c */ LSRS R0, R0, 0x10 \n\
/* 0803594e */ LDR R1, =D_089e5890 \n\
/* 08035950 */ LSLS R4, R6, 0x3 \n\
/* 08035952 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08035954 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035956 */ LDRSH R1, [R4, R2] \n\
/* 08035958 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803595a */ LDRSH R3, [R4, R2] \n\
/* 0803595c */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0803595e */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08035960 */ LDRSH R3, [R4, R2] \n\
/* 08035962 */ MOV R12, R3 @ Set R12 to R3 \n\
/* 08035964 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08035966 */ LDRSH R4, [R4, R3] \n\
/* 08035968 */ STR R4, [SP] \n\
/* 0803596a */ STR R0, [SP, 0x4] \n\
/* 0803596c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803596e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08035970 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 08035972 */ BL scene_set_sprite_motion_lerp \n\
/* 08035976 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08035978 */ LDR R0, [R4] \n\
/* 0803597a */ B branch_080359ca \n\
\n\
.ltorg \n\
 \n\
branch_08035984: \n\
/* 08035984 */ LDR R0, =gSpriteHandler \n\
/* 08035986 */ LDR R0, [R0] \n\
/* 08035988 */ LSLS R5, R5, 0x10 \n\
/* 0803598a */ ASRS R5, R5, 0x10 \n\
/* 0803598c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803598e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035990 */ BL sprite_set_anim_cel \n\
/* 08035994 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08035996 */ BL ticks_to_frames \n\
/* 0803599a */ LSLS R0, R0, 0x10 \n\
/* 0803599c */ LSRS R0, R0, 0x10 \n\
/* 0803599e */ LDR R2, =D_089e58a0 \n\
/* 080359a0 */ LSLS R1, R6, 0x3 \n\
/* 080359a2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080359a4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080359a6 */ LDRSH R2, [R1, R3] \n\
/* 080359a8 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080359aa */ LDRSH R4, [R1, R3] \n\
/* 080359ac */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080359ae */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080359b0 */ LDRSH R4, [R1, R3] \n\
/* 080359b2 */ STR R4, [SP] \n\
/* 080359b4 */ MOVS R4, 0x6 @ Set R4 to 0x6 \n\
/* 080359b6 */ LDRSH R1, [R1, R4] \n\
/* 080359b8 */ STR R1, [SP, 0x4] \n\
/* 080359ba */ STR R0, [SP, 0x8] \n\
/* 080359bc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080359be */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080359c0 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080359c2 */ BL scene_set_sprite_motion_sine_vel \n\
/* 080359c6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080359c8 */ LDR R0, [R1] \n\
 \n\
branch_080359ca: \n\
/* 080359ca */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 080359cc */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 080359ce */ STRB R7, [R0] \n\
 \n\
branch_080359d0: \n\
/* 080359d0 */ ADD SP, 0xC \n\
/* 080359d2 */ POP {R3, R4} \n\
/* 080359d4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080359d6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080359d8 */ POP {R4-R7} \n\
/* 080359da */ POP {R0} \n\
/* 080359dc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
