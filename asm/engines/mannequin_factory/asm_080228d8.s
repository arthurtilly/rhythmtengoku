asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080228d8 \n\
/* 080228d8 */ PUSH {R4-R6, LR} \n\
/* 080228da */ SUB SP, 0xC \n\
/* 080228dc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080228de */ LDRB R0, [R5] \n\
/* 080228e0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080228e2 */ BEQ branch_080229b4 \n\
/* 080228e4 */ LDR R0, =gCurrentEngineData \n\
/* 080228e6 */ LDR R0, [R0] \n\
/* 080228e8 */ ADDS R0, 0x8C @ Add 0x8C to R0 \n\
/* 080228ea */ STR R5, [R0] \n\
/* 080228ec */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 080228ee */ LDRSB R0, [R5, R0] \n\
/* 080228f0 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 080228f2 */ BHI branch_080229b0 \n\
/* 080228f4 */ LSLS R0, R0, 0x2 \n\
/* 080228f6 */ LDR R1, =jtbl_08022908 \n\
/* 080228f8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080228fa */ LDR R0, [R0] \n\
/* 080228fc */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_08022908: \n\
.word jump_0802298c \n\
.word jump_08022994 \n\
.word jump_080229aa \n\
.word jump_0802291c \n\
.word jump_0802298c \n\
\n\
jump_0802291c: \n\
/* 0802291c */ LDR R6, =gSpriteHandler \n\
/* 0802291e */ LDR R0, [R6] \n\
/* 08022920 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08022922 */ LDRSH R1, [R5, R2] \n\
/* 08022924 */ BL sprite_clone \n\
/* 08022928 */ LDR R1, [R6] \n\
/* 0802292a */ LSLS R0, R0, 0x10 \n\
/* 0802292c */ ASRS R4, R0, 0x10 \n\
/* 0802292e */ LDR R2, =0x0000485a \n\
/* 08022930 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08022932 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08022934 */ BL sprite_set_z \n\
/* 08022938 */ LDR R0, [R6] \n\
/* 0802293a */ LDR R2, =anim_mannequin_ng_effect \n\
/* 0802293c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802293e */ STR R1, [SP] \n\
/* 08022940 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08022942 */ STR R1, [SP, 0x4] \n\
/* 08022944 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08022946 */ STR R1, [SP, 0x8] \n\
/* 08022948 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802294a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802294c */ BL sprite_set_anim \n\
/* 08022950 */ LDR R0, =gCurrentEngineData \n\
/* 08022952 */ LDR R0, [R0] \n\
/* 08022954 */ LDRB R0, [R0] \n\
/* 08022956 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08022958 */ BNE branch_0802297c \n\
/* 0802295a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802295c */ BL func_08022894 \n\
/* 08022960 */ LDR R0, =s_ghost_walk_seqData \n\
/* 08022962 */ BL play_sound \n\
/* 08022966 */ B branch_080229b0 \n\
\n\
.ltorg \n\
 \n\
branch_0802297c: \n\
/* 0802297c */ LDR R0, [R6] \n\
/* 0802297e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08022980 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08022982 */ BL sprite_set_anim_speed \n\
/* 08022986 */ BL func_0802310c \n\
/* 0802298a */ B branch_080229b0 \n\
\n\
jump_0802298c: \n\
/* 0802298c */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802298e */ BL gameplay_spawn_cue \n\
/* 08022992 */ B branch_080229b0 \n\
\n\
jump_08022994: \n\
/* 08022994 */ LDRB R0, [R5, 0xA] \n\
/* 08022996 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08022998 */ BNE branch_080229a2 \n\
/* 0802299a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802299c */ BL gameplay_spawn_cue \n\
/* 080229a0 */ B branch_080229b0 \n\
 \n\
branch_080229a2: \n\
/* 080229a2 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080229a4 */ BL gameplay_spawn_cue \n\
/* 080229a8 */ B branch_080229b0 \n\
\n\
jump_080229aa: \n\
/* 080229aa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080229ac */ BL gameplay_spawn_cue \n\
 \n\
branch_080229b0: \n\
/* 080229b0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080229b2 */ STRB R0, [R5, 0x10] \n\
 \n\
branch_080229b4: \n\
/* 080229b4 */ ADD SP, 0xC \n\
/* 080229b6 */ POP {R4-R6} \n\
/* 080229b8 */ POP {R0} \n\
/* 080229ba */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
