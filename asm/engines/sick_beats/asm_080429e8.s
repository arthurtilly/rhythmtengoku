asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080429e8 \n\
/* 080429e8 */ PUSH {R4-R7, LR} \n\
/* 080429ea */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080429ec */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080429ee */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080429f0 */ PUSH {R5-R7} \n\
/* 080429f2 */ SUB SP, 0x4 \n\
/* 080429f4 */ LDR R7, =gCurrentEngineData \n\
/* 080429f6 */ LDR R1, [R7] \n\
/* 080429f8 */ LDR R0, =0x26e \n\
/* 080429fa */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080429fc */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 080429fe */ LDRB R0, [R0] \n\
/* 08042a00 */ LSLS R0, R0, 0x1 \n\
/* 08042a02 */ LDR R2, =0x21e \n\
/* 08042a04 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08042a06 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08042a08 */ LDR R4, =gSpriteHandler \n\
/* 08042a0a */ LDR R0, [R4] \n\
/* 08042a0c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042a0e */ LDRSH R3, [R1, R2] \n\
/* 08042a10 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08042a12 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08042a14 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08042a16 */ BL sprite_set_visible \n\
/* 08042a1a */ LDR R5, [R4] \n\
/* 08042a1c */ LDR R0, [R7] \n\
/* 08042a1e */ LDR R3, =0x26f \n\
/* 08042a20 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08042a22 */ LDRB R0, [R0] \n\
/* 08042a24 */ BL agb_random \n\
/* 08042a28 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08042a2a */ LSLS R2, R2, 0x18 \n\
/* 08042a2c */ ASRS R2, R2, 0x18 \n\
/* 08042a2e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08042a30 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08042a32 */ BL sprite_set_anim_cel \n\
/* 08042a36 */ LDR R0, [R4] \n\
/* 08042a38 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08042a3a */ MOVS R2, 0xAE @ Set R2 to 0xAE \n\
/* 08042a3c */ MOVS R3, 0x8A @ Set R3 to 0x8A \n\
/* 08042a3e */ BL sprite_set_x_y \n\
/* 08042a42 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08042a44 */ BL agb_random \n\
/* 08042a48 */ LSLS R0, R0, 0x10 \n\
/* 08042a4a */ LSRS R0, R0, 0xF \n\
/* 08042a4c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08042a4e */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08042a50 */ LSLS R4, R1, 0x2 \n\
/* 08042a52 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08042a54 */ LSLS R4, R4, 0x13 \n\
/* 08042a56 */ MOVS R0, 0xAE @ Set R0 to 0xAE \n\
/* 08042a58 */ LSLS R0, R0, 0x10 \n\
/* 08042a5a */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08042a5c */ LSRS R4, R4, 0x10 \n\
/* 08042a5e */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08042a60 */ BL agb_random \n\
/* 08042a64 */ LDR R1, =0xfff0 \n\
/* 08042a66 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042a68 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08042a6a */ LSLS R4, R4, 0x10 \n\
/* 08042a6c */ LSRS R4, R4, 0x10 \n\
/* 08042a6e */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08042a70 */ BL agb_random \n\
/* 08042a74 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08042a76 */ LDR R2, =0x1007e \n\
/* 08042a78 */ ADDS R5, R5, R2 @ Set R5 to R5 + R2 \n\
/* 08042a7a */ LSLS R5, R5, 0x10 \n\
/* 08042a7c */ LSRS R5, R5, 0x10 \n\
/* 08042a7e */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08042a80 */ BL agb_random \n\
/* 08042a84 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08042a86 */ ADDS R6, 0x20 @ Add 0x20 to R6 \n\
/* 08042a88 */ LSLS R6, R6, 0x10 \n\
/* 08042a8a */ ASRS R6, R6, 0x10 \n\
/* 08042a8c */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08042a8e */ BL ticks_to_frames \n\
/* 08042a92 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08042a94 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08042a96 */ BL agb_random \n\
/* 08042a9a */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08042a9c */ SUBS R0, 0xA @ Subtract 0xA from R0 \n\
/* 08042a9e */ LSLS R0, R0, 0x10 \n\
/* 08042aa0 */ LSRS R0, R0, 0x10 \n\
/* 08042aa2 */ LSLS R4, R4, 0x10 \n\
/* 08042aa4 */ ASRS R4, R4, 0x10 \n\
/* 08042aa6 */ LSLS R5, R5, 0x10 \n\
/* 08042aa8 */ ASRS R5, R5, 0x10 \n\
/* 08042aaa */ STR R0, [SP] \n\
/* 08042aac */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08042aae */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08042ab0 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08042ab2 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08042ab4 */ BL scene_move_sprite_sine_wave \n\
/* 08042ab8 */ LDR R1, =sick_beats_play_particle_sound \n\
/* 08042aba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042abc */ BL run_func_after_task \n\
/* 08042ac0 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08042ac2 */ BL ticks_to_frames \n\
/* 08042ac6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08042ac8 */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 08042aca */ BL agb_random \n\
/* 08042ace */ LDR R2, [R7] \n\
/* 08042ad0 */ ADD R10, R2 @ Add R2 to R10 \n\
/* 08042ad2 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08042ad4 */ LDRB R1, [R3] \n\
/* 08042ad6 */ LSLS R1, R1, 0x1 \n\
/* 08042ad8 */ LDR R3, =0x246 \n\
/* 08042ada */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08042adc */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08042ade */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08042ae0 */ STRH R0, [R2] \n\
/* 08042ae2 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08042ae4 */ LDRB R0, [R1] \n\
/* 08042ae6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08042ae8 */ STRB R0, [R1] \n\
/* 08042aea */ LSLS R0, R0, 0x18 \n\
/* 08042aec */ LSRS R0, R0, 0x18 \n\
/* 08042aee */ CMP R0, 0x13 @ Compare R0 and 0x13 \n\
/* 08042af0 */ BLS branch_08042afc \n\
/* 08042af2 */ LDR R0, [R7] \n\
/* 08042af4 */ LDR R2, =0x26e \n\
/* 08042af6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08042af8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08042afa */ STRB R1, [R0] \n\
 \n\
branch_08042afc: \n\
/* 08042afc */ ADD SP, 0x4 \n\
/* 08042afe */ POP {R3-R5} \n\
/* 08042b00 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08042b02 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08042b04 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08042b06 */ POP {R4-R7} \n\
/* 08042b08 */ POP {R0} \n\
/* 08042b0a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
