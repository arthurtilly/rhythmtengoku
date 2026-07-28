asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_engine_start \n\
/* 0803ea98 */ PUSH {R4-R7, LR} \n\
/* 0803ea9a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803ea9c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803ea9e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803eaa0 */ PUSH {R5-R7} \n\
/* 0803eaa2 */ SUB SP, 0x14 \n\
/* 0803eaa4 */ LDR R1, =gCurrentEngineData \n\
/* 0803eaa6 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0803eaa8 */ LDR R1, [R1] \n\
/* 0803eaaa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803eaac */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0803eaae */ STRB R0, [R1] \n\
/* 0803eab0 */ BL toss_boys_init_gfx1 \n\
/* 0803eab4 */ BL scene_show_obj_layer \n\
/* 0803eab8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803eaba */ STR R0, [SP] \n\
/* 0803eabc */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0803eabe */ STR R0, [SP, 0x4] \n\
/* 0803eac0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803eac2 */ LSLS R0, R0, 0x7 \n\
/* 0803eac4 */ STR R0, [SP, 0x8] \n\
/* 0803eac6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803eac8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803eaca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803eacc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803eace */ BL scene_set_bg_layer_display \n\
/* 0803ead2 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0803ead4 */ STR R3, [SP] \n\
/* 0803ead6 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0803ead8 */ STR R0, [SP, 0x4] \n\
/* 0803eada */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0803eadc */ STR R6, [SP, 0x8] \n\
/* 0803eade */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803eae0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803eae2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803eae4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803eae6 */ BL scene_set_bg_layer_display \n\
/* 0803eaea */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803eaec */ BL toss_boys_get_anim \n\
/* 0803eaf0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803eaf2 */ LDR R5, =gSpriteHandler \n\
/* 0803eaf4 */ LDR R0, [R5] \n\
/* 0803eaf6 */ MOVS R2, 0x73 @ Set R2 to 0x73 \n\
/* 0803eaf8 */ STR R2, [SP] \n\
/* 0803eafa */ LDR R2, =0x4810 \n\
/* 0803eafc */ STR R2, [SP, 0x4] \n\
/* 0803eafe */ STR R6, [SP, 0x8] \n\
/* 0803eb00 */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 0803eb02 */ STR R4, [SP, 0xC] \n\
/* 0803eb04 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803eb06 */ STR R2, [SP, 0x10] \n\
/* 0803eb08 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803eb0a */ MOVS R3, 0xB9 @ Set R3 to 0xB9 \n\
/* 0803eb0c */ BL sprite_create \n\
/* 0803eb10 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803eb12 */ LDR R1, [R3] \n\
/* 0803eb14 */ MOVS R2, 0xD5 @ Set R2 to 0xD5 \n\
/* 0803eb16 */ LSLS R2, R2, 0x2 \n\
/* 0803eb18 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803eb1a */ STRH R0, [R1] \n\
/* 0803eb1c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803eb1e */ BL toss_boys_get_anim \n\
/* 0803eb22 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803eb24 */ LDR R0, [R5] \n\
/* 0803eb26 */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 0803eb28 */ STR R2, [SP] \n\
/* 0803eb2a */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0803eb2c */ LSLS R3, R3, 0x7 \n\
/* 0803eb2e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803eb30 */ STR R3, [SP, 0x4] \n\
/* 0803eb32 */ STR R6, [SP, 0x8] \n\
/* 0803eb34 */ STR R4, [SP, 0xC] \n\
/* 0803eb36 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803eb38 */ STR R2, [SP, 0x10] \n\
/* 0803eb3a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803eb3c */ MOVS R3, 0xA1 @ Set R3 to 0xA1 \n\
/* 0803eb3e */ BL sprite_create \n\
/* 0803eb42 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803eb44 */ LDR R1, [R3] \n\
/* 0803eb46 */ LDR R2, =0x356 \n\
/* 0803eb48 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803eb4a */ STRH R0, [R1] \n\
/* 0803eb4c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803eb4e */ BL toss_boys_get_anim \n\
/* 0803eb52 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803eb54 */ LDR R0, [R5] \n\
/* 0803eb56 */ MOVS R2, 0x7C @ Set R2 to 0x7C \n\
/* 0803eb58 */ STR R2, [SP] \n\
/* 0803eb5a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803eb5c */ STR R3, [SP, 0x4] \n\
/* 0803eb5e */ STR R6, [SP, 0x8] \n\
/* 0803eb60 */ STR R4, [SP, 0xC] \n\
/* 0803eb62 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803eb64 */ STR R2, [SP, 0x10] \n\
/* 0803eb66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803eb68 */ MOVS R3, 0x3A @ Set R3 to 0x3A \n\
/* 0803eb6a */ BL sprite_create \n\
/* 0803eb6e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803eb70 */ LDR R1, [R3] \n\
/* 0803eb72 */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 0803eb74 */ LSLS R2, R2, 0x2 \n\
/* 0803eb76 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803eb78 */ STRH R0, [R1] \n\
/* 0803eb7a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803eb7c */ LDR R6, =0x35a \n\
/* 0803eb7e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803eb80 */ LDR R5, =0x35d \n\
/* 0803eb82 */ MOVS R4, 0xD8 @ Set R4 to 0xD8 \n\
/* 0803eb84 */ LSLS R4, R4, 0x2 \n\
 \n\
branch_0803eb86: \n\
/* 0803eb86 */ LDR R0, [R3] \n\
/* 0803eb88 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0803eb8a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803eb8c */ STRB R1, [R0] \n\
/* 0803eb8e */ LDR R0, [R3] \n\
/* 0803eb90 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803eb92 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803eb94 */ STRB R1, [R0] \n\
/* 0803eb96 */ LDR R0, [R3] \n\
/* 0803eb98 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803eb9a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803eb9c */ STRB R1, [R0] \n\
/* 0803eb9e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0803eba0 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 0803eba2 */ BLS branch_0803eb86 \n\
/* 0803eba4 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0803eba6 */ BL toss_boys_get_anim \n\
/* 0803ebaa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803ebac */ LDR R3, =gSpriteHandler \n\
/* 0803ebae */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0803ebb0 */ LDR R0, [R3] \n\
/* 0803ebb2 */ MOVS R2, 0x6E @ Set R2 to 0x6E \n\
/* 0803ebb4 */ STR R2, [SP] \n\
/* 0803ebb6 */ MOVS R2, 0x92 @ Set R2 to 0x92 \n\
/* 0803ebb8 */ LSLS R2, R2, 0x7 \n\
/* 0803ebba */ STR R2, [SP, 0x4] \n\
/* 0803ebbc */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0803ebbe */ STR R7, [SP, 0x8] \n\
/* 0803ebc0 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803ebc2 */ STR R2, [SP, 0xC] \n\
/* 0803ebc4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ebc6 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803ebc8 */ STR R2, [SP, 0x10] \n\
/* 0803ebca */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803ebcc */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803ebce */ BL sprite_create \n\
/* 0803ebd2 */ LDR R6, =gCurrentEngineData \n\
/* 0803ebd4 */ LDR R1, [R6] \n\
/* 0803ebd6 */ MOVS R3, 0xD9 @ Set R3 to 0xD9 \n\
/* 0803ebd8 */ LSLS R3, R3, 0x2 \n\
/* 0803ebda */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803ebdc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ebde */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0803ebe0 */ STRH R0, [R1] \n\
/* 0803ebe2 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0803ebe4 */ BL toss_boys_get_anim \n\
/* 0803ebe8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803ebea */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0803ebec */ LDR R0, [R3] \n\
/* 0803ebee */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0803ebf0 */ STR R2, [SP] \n\
/* 0803ebf2 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 0803ebf4 */ LSLS R2, R2, 0x3 \n\
/* 0803ebf6 */ STR R2, [SP, 0x4] \n\
/* 0803ebf8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803ebfa */ STR R2, [SP, 0x8] \n\
/* 0803ebfc */ STR R2, [SP, 0xC] \n\
/* 0803ebfe */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803ec00 */ LSLS R2, R2, 0x8 \n\
/* 0803ec02 */ STR R2, [SP, 0x10] \n\
/* 0803ec04 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ec06 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803ec08 */ BL sprite_create \n\
/* 0803ec0c */ LDR R1, [R6] \n\
/* 0803ec0e */ LDR R4, =0x366 \n\
/* 0803ec10 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803ec12 */ STRH R0, [R1] \n\
/* 0803ec14 */ BL scene_affine_group_alloc \n\
/* 0803ec18 */ LDR R1, [R6] \n\
/* 0803ec1a */ MOVS R5, 0xDA @ Set R5 to 0xDA \n\
/* 0803ec1c */ LSLS R5, R5, 0x2 \n\
/* 0803ec1e */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803ec20 */ STRB R0, [R1] \n\
/* 0803ec22 */ LDR R1, [R6] \n\
/* 0803ec24 */ ADDS R4, R1, R4 @ Set R4 to R1 + R4 \n\
/* 0803ec26 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ec28 */ LDRSH R0, [R4, R3] \n\
/* 0803ec2a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803ec2c */ LDRB R1, [R1] \n\
/* 0803ec2e */ LSLS R1, R1, 0x18 \n\
/* 0803ec30 */ ASRS R1, R1, 0x18 \n\
/* 0803ec32 */ BL assign_sprite_affine_param \n\
/* 0803ec36 */ LDR R0, [R6] \n\
/* 0803ec38 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803ec3a */ LDRB R0, [R0] \n\
/* 0803ec3c */ LSLS R0, R0, 0x18 \n\
/* 0803ec3e */ ASRS R0, R0, 0x18 \n\
/* 0803ec40 */ BL func_080022d8 \n\
/* 0803ec44 */ LDR R0, [R6] \n\
/* 0803ec46 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803ec48 */ LDRB R0, [R0] \n\
/* 0803ec4a */ LSLS R0, R0, 0x18 \n\
/* 0803ec4c */ ASRS R0, R0, 0x18 \n\
/* 0803ec4e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803ec50 */ LSLS R1, R1, 0x1 \n\
/* 0803ec52 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ec54 */ BL set_affine_scale_rotation \n\
/* 0803ec58 */ LDR R0, [R6] \n\
/* 0803ec5a */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 0803ec5c */ LSLS R1, R1, 0x2 \n\
/* 0803ec5e */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 0803ec60 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803ec62 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0803ec64 */ STR R1, [R2] \n\
/* 0803ec66 */ LDR R2, =0x36a \n\
/* 0803ec68 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803ec6a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803ec6c */ STRH R3, [R1] \n\
/* 0803ec6e */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0803ec70 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803ec72 */ STRH R3, [R1] \n\
/* 0803ec74 */ LDR R3, =0x36e \n\
/* 0803ec76 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0803ec78 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803ec7a */ STRH R2, [R1] \n\
/* 0803ec7c */ ADDS R3, 0xE @ Add 0xE to R3 \n\
/* 0803ec7e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803ec80 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803ec82 */ STRB R1, [R0] \n\
/* 0803ec84 */ LDR R0, [R6] \n\
/* 0803ec86 */ LDR R2, =0x37d \n\
/* 0803ec88 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803ec8a */ STRB R1, [R0] \n\
/* 0803ec8c */ LDR R0, [R6] \n\
/* 0803ec8e */ ADDS R3, 0x1A @ Add 0x1A to R3 \n\
/* 0803ec90 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0803ec92 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803ec94 */ STRH R2, [R1] \n\
/* 0803ec96 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 0803ec98 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803ec9a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803ec9c */ STRB R1, [R0] \n\
/* 0803ec9e */ MOVS R0, 0x21 @ Set R0 to 0x21 \n\
/* 0803eca0 */ BL toss_boys_get_anim \n\
/* 0803eca4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803eca6 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803eca8 */ LDR R0, [R2] \n\
/* 0803ecaa */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 0803ecac */ STR R2, [SP] \n\
/* 0803ecae */ MOVS R2, 0x9E @ Set R2 to 0x9E \n\
/* 0803ecb0 */ LSLS R2, R2, 0x7 \n\
/* 0803ecb2 */ STR R2, [SP, 0x4] \n\
/* 0803ecb4 */ STR R7, [SP, 0x8] \n\
/* 0803ecb6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803ecb8 */ STR R3, [SP, 0xC] \n\
/* 0803ecba */ LDR R2, =0x8002 \n\
/* 0803ecbc */ STR R2, [SP, 0x10] \n\
/* 0803ecbe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ecc0 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803ecc2 */ BL sprite_create \n\
/* 0803ecc6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803ecc8 */ LDR R0, [R6] \n\
/* 0803ecca */ MOVS R3, 0xE8 @ Set R3 to 0xE8 \n\
/* 0803eccc */ LSLS R3, R3, 0x2 \n\
/* 0803ecce */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0803ecd0 */ STRH R2, [R1] \n\
/* 0803ecd2 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 0803ecd4 */ BL init_drumtech \n\
/* 0803ecd8 */ LDR R0, =toss_boys_drumtech_bank \n\
/* 0803ecda */ BL set_drumtech_bank \n\
/* 0803ecde */ LDR R1, [R6] \n\
/* 0803ece0 */ MOVS R0, 0xE4 @ Set R0 to 0xE4 \n\
/* 0803ece2 */ LSLS R0, R0, 0x2 \n\
/* 0803ece4 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0803ece6 */ LDR R0, =0xffff \n\
/* 0803ece8 */ STRH R0, [R2] \n\
/* 0803ecea */ LDR R2, =0x392 \n\
/* 0803ecec */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803ecee */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803ecf0 */ STRH R3, [R0] \n\
/* 0803ecf2 */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 0803ecf4 */ LSLS R0, R0, 0x2 \n\
/* 0803ecf6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803ecf8 */ MOVS R0, 0xF3 @ Set R0 to 0xF3 \n\
/* 0803ecfa */ STRH R0, [R1] \n\
/* 0803ecfc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ecfe */ BL gameplay_set_input_buttons \n\
/* 0803ed02 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ed04 */ MOVS R4, 0xE1 @ Set R4 to 0xE1 \n\
/* 0803ed06 */ LSLS R4, R4, 0x2 \n\
/* 0803ed08 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0803ed0a: \n\
/* 0803ed0a */ LDR R0, [R6] \n\
/* 0803ed0c */ LSLS R1, R2, 0x2 \n\
/* 0803ed0e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803ed10 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803ed12 */ STR R3, [R0] \n\
/* 0803ed14 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0803ed16 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 0803ed18 */ BLS branch_0803ed0a \n\
/* 0803ed1a */ BL get_current_mem_id \n\
/* 0803ed1e */ LSLS R0, R0, 0x10 \n\
/* 0803ed20 */ LSRS R0, R0, 0x10 \n\
/* 0803ed22 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803ed24 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0803ed26 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0803ed28 */ BL text_printer_create_new \n\
/* 0803ed2c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803ed2e */ LDR R0, =gCurrentEngineData \n\
/* 0803ed30 */ LDR R0, [R0] \n\
/* 0803ed32 */ LDRB R0, [R0] \n\
/* 0803ed34 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803ed36 */ BNE branch_0803ed90 \n\
/* 0803ed38 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803ed3a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ed3c */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0803ed3e */ BL text_printer_set_x_y \n\
/* 0803ed42 */ MOVS R1, 0x98 @ Set R1 to 0x98 \n\
/* 0803ed44 */ LSLS R1, R1, 0x7 \n\
/* 0803ed46 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803ed48 */ BL text_printer_set_layer \n\
/* 0803ed4c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803ed4e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ed50 */ BL text_printer_center_by_content \n\
/* 0803ed54 */ B branch_0803edb4 \n\
\n\
.ltorg \n\
 \n\
branch_0803ed90: \n\
/* 0803ed90 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803ed92 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803ed94 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0803ed96 */ BL text_printer_set_x_y \n\
/* 0803ed9a */ MOVS R1, 0x98 @ Set R1 to 0x98 \n\
/* 0803ed9c */ LSLS R1, R1, 0x7 \n\
/* 0803ed9e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803eda0 */ BL text_printer_set_layer \n\
/* 0803eda4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803eda6 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803eda8 */ BL text_printer_set_alignment \n\
/* 0803edac */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803edae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803edb0 */ BL text_printer_center_by_content \n\
 \n\
branch_0803edb4: \n\
/* 0803edb4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803edb6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803edb8 */ BL text_printer_set_palette \n\
/* 0803edbc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803edbe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803edc0 */ BL text_printer_set_colors \n\
/* 0803edc4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803edc6 */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 0803edc8 */ BL text_printer_set_line_spacing \n\
/* 0803edcc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803edce */ BL gameplay_set_text_printer \n\
/* 0803edd2 */ LDR R1, =D_03004b10 \n\
/* 0803edd4 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803edd6 */ ADDS R2, 0x4C @ Add 0x4C to R2 \n\
/* 0803edd8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803edda */ LDR R0, =0x3f41 \n\
/* 0803eddc */ STRH R0, [R2] \n\
/* 0803edde */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 0803ede0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803ede2 */ LSLS R0, R0, 0x5 \n\
/* 0803ede4 */ STRH R0, [R1] \n\
/* 0803ede6 */ LDR R0, =gCurrentEngineData \n\
/* 0803ede8 */ LDR R0, [R0] \n\
/* 0803edea */ LDR R1, =0x39a \n\
/* 0803edec */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803edee */ STRH R3, [R0] \n\
/* 0803edf0 */ BL func_0803e824 \n\
/* 0803edf4 */ ADD SP, 0x14 \n\
/* 0803edf6 */ POP {R3-R5} \n\
/* 0803edf8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803edfa */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803edfc */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803edfe */ POP {R4-R7} \n\
/* 0803ee00 */ POP {R0} \n\
/* 0803ee02 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
