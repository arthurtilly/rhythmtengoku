asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_engine_start \n\
/* 0803fd10 */ PUSH {R4-R7, LR} \n\
/* 0803fd12 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803fd14 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803fd16 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803fd18 */ PUSH {R5-R7} \n\
/* 0803fd1a */ SUB SP, 0x1C \n\
/* 0803fd1c */ LDR R7, =gCurrentEngineData \n\
/* 0803fd1e */ LDR R1, [R7] \n\
/* 0803fd20 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803fd22 */ STRB R0, [R1] \n\
/* 0803fd24 */ BL tram_pauline_init_gfx1 \n\
/* 0803fd28 */ BL scene_show_obj_layer \n\
/* 0803fd2c */ LDR R0, [R7] \n\
/* 0803fd2e */ LDRB R4, [R0] \n\
/* 0803fd30 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0803fd32 */ BNE branch_0803fd60 \n\
/* 0803fd34 */ STR R5, [SP] \n\
/* 0803fd36 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0803fd38 */ STR R0, [SP, 0x4] \n\
/* 0803fd3a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803fd3c */ LSLS R0, R0, 0x8 \n\
/* 0803fd3e */ STR R0, [SP, 0x8] \n\
/* 0803fd40 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803fd42 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803fd44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fd46 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fd48 */ BL scene_set_bg_layer_display \n\
/* 0803fd4c */ STR R5, [SP] \n\
/* 0803fd4e */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0803fd50 */ STR R0, [SP, 0x4] \n\
/* 0803fd52 */ STR R4, [SP, 0x8] \n\
/* 0803fd54 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803fd56 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803fd58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fd5a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fd5c */ BL scene_set_bg_layer_display \n\
 \n\
branch_0803fd60: \n\
/* 0803fd60 */ LDR R0, [R7] \n\
/* 0803fd62 */ LDRB R0, [R0] \n\
/* 0803fd64 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803fd66 */ BNE branch_0803fd7e \n\
/* 0803fd68 */ STR R5, [SP] \n\
/* 0803fd6a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0803fd6c */ STR R0, [SP, 0x4] \n\
/* 0803fd6e */ LDR R0, =0x8001 \n\
/* 0803fd70 */ STR R0, [SP, 0x8] \n\
/* 0803fd72 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803fd74 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803fd76 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fd78 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fd7a */ BL scene_set_bg_layer_display \n\
 \n\
branch_0803fd7e: \n\
/* 0803fd7e */ LDR R0, [R7] \n\
/* 0803fd80 */ LDRB R0, [R0] \n\
/* 0803fd82 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803fd84 */ BNE branch_0803fdb4 \n\
/* 0803fd86 */ STR R5, [SP] \n\
/* 0803fd88 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0803fd8a */ STR R0, [SP, 0x4] \n\
/* 0803fd8c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803fd8e */ LSLS R0, R0, 0x8 \n\
/* 0803fd90 */ STR R0, [SP, 0x8] \n\
/* 0803fd92 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803fd94 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803fd96 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fd98 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fd9a */ BL scene_set_bg_layer_display \n\
/* 0803fd9e */ STR R5, [SP] \n\
/* 0803fda0 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0803fda2 */ STR R0, [SP, 0x4] \n\
/* 0803fda4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803fda6 */ STR R0, [SP, 0x8] \n\
/* 0803fda8 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803fdaa */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803fdac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fdae */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fdb0 */ BL scene_set_bg_layer_display \n\
 \n\
branch_0803fdb4: \n\
/* 0803fdb4 */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 0803fdb6 */ LSLS R0, R0, 0x2 \n\
/* 0803fdb8 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803fdba */ BL func_0800c660 \n\
/* 0803fdbe */ LDR R1, [R7] \n\
/* 0803fdc0 */ STR R0, [R1, 0x38] \n\
/* 0803fdc2 */ LDR R1, =D_0805a910 \n\
/* 0803fdc4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803fdc6 */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0803fdc8 */ BL bmp_font_obj_print_c \n\
/* 0803fdcc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803fdce */ LDR R4, =D_03005380 \n\
/* 0803fdd0 */ LDR R0, [R4] \n\
/* 0803fdd2 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0803fdd4 */ STR R2, [SP] \n\
/* 0803fdd6 */ STR R5, [SP, 0x4] \n\
/* 0803fdd8 */ STR R5, [SP, 0x8] \n\
/* 0803fdda */ STR R5, [SP, 0xC] \n\
/* 0803fddc */ STR R5, [SP, 0x10] \n\
/* 0803fdde */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fde0 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 0803fde2 */ BL func_0804d160 \n\
/* 0803fde6 */ LDR R1, [R7] \n\
/* 0803fde8 */ STRH R0, [R1, 0x3C] \n\
/* 0803fdea */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803fdec */ MOV R9, R7 @ Set R9 to R7 \n\
/* 0803fdee */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803fdf0 */ MOV R10, R4 @ Set R10 to R4 \n\
 \n\
branch_0803fdf2: \n\
/* 0803fdf2 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0803fdf4 */ LDR R1, [R0] \n\
/* 0803fdf6 */ LSLS R2, R6, 0x2 \n\
/* 0803fdf8 */ ADDS R0, R2, R6 @ Set R0 to R2 + R6 \n\
/* 0803fdfa */ LSLS R5, R0, 0x2 \n\
/* 0803fdfc */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803fdfe */ STRB R7, [R1, 0x6] \n\
/* 0803fe00 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803fe02 */ LDR R3, [R1] \n\
/* 0803fe04 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803fe06 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0803fe08 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803fe0a */ STR R7, [R0] \n\
/* 0803fe0c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803fe0e */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0803fe10 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803fe12 */ MOVS R1, 0x98 @ Set R1 to 0x98 \n\
/* 0803fe14 */ STR R1, [R0] \n\
/* 0803fe16 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803fe18 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0803fe1a */ BNE branch_0803fe34 \n\
/* 0803fe1c */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 0803fe1e */ STR R0, [R3, 0x8] \n\
/* 0803fe20 */ STRB R6, [R3, 0x15] \n\
/* 0803fe22 */ B branch_0803fe44 \n\
\n\
.ltorg \n\
 \n\
branch_0803fe34: \n\
/* 0803fe34 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803fe36 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0803fe38 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803fe3a */ MOVS R1, 0xB4 @ Set R1 to 0xB4 \n\
/* 0803fe3c */ STR R1, [R0] \n\
/* 0803fe3e */ ADDS R1, R3, R5 @ Set R1 to R3 + R5 \n\
/* 0803fe40 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803fe42 */ STRB R0, [R1, 0x15] \n\
 \n\
branch_0803fe44: \n\
/* 0803fe44 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803fe46 */ LDR R2, [R2] \n\
/* 0803fe48 */ STR R2, [SP, 0x18] \n\
/* 0803fe4a */ LDR R3, =gCurrentEngineData \n\
/* 0803fe4c */ LDR R0, [R3] \n\
/* 0803fe4e */ LDRB R0, [R0] \n\
/* 0803fe50 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803fe52 */ BEQ branch_0803fe58 \n\
/* 0803fe54 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803fe56 */ BNE branch_0803fe68 \n\
 \n\
branch_0803fe58: \n\
/* 0803fe58 */ LDR R4, =anim_circus_fox_beat \n\
/* 0803fe5a */ MOV R12, R4 @ Set R12 to R4 \n\
/* 0803fe5c */ B branch_0803fe6c \n\
\n\
.ltorg \n\
 \n\
branch_0803fe68: \n\
/* 0803fe68 */ LDR R0, =anim_casual_fox_beat \n\
/* 0803fe6a */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_0803fe6c: \n\
/* 0803fe6c */ LDR R5, =gCurrentEngineData \n\
/* 0803fe6e */ LDR R1, [R5] \n\
/* 0803fe70 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803fe72 */ ADDS R4, R2, R6 @ Set R4 to R2 + R6 \n\
/* 0803fe74 */ LSLS R4, R4, 0x2 \n\
/* 0803fe76 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803fe78 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0803fe7a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803fe7c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fe7e */ LDRSH R3, [R0, R2] \n\
/* 0803fe80 */ STR R3, [SP, 0x14] \n\
/* 0803fe82 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 0803fe84 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803fe86 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fe88 */ LDRSH R0, [R1, R3] \n\
/* 0803fe8a */ STR R0, [SP] \n\
/* 0803fe8c */ LDR R0, =0x4003 \n\
/* 0803fe8e */ STR R0, [SP, 0x4] \n\
/* 0803fe90 */ STR R7, [SP, 0x8] \n\
/* 0803fe92 */ STR R7, [SP, 0xC] \n\
/* 0803fe94 */ STR R7, [SP, 0x10] \n\
/* 0803fe96 */ LDR R0, [SP, 0x18] \n\
/* 0803fe98 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0803fe9a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fe9c */ LDR R3, [SP, 0x14] \n\
/* 0803fe9e */ BL func_0804d160 \n\
/* 0803fea2 */ LDR R1, [R5] \n\
/* 0803fea4 */ ADDS R4, R1, R4 @ Set R4 to R1 + R4 \n\
/* 0803fea6 */ STRH R0, [R4, 0x4] \n\
/* 0803fea8 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0803feaa */ BNE branch_0803feba \n\
/* 0803feac */ MOV R4, R10 @ Set R4 to R10 \n\
/* 0803feae */ LDR R0, [R4] \n\
/* 0803feb0 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 0803feb2 */ LDRSH R1, [R1, R2] \n\
/* 0803feb4 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0803feb6 */ BL func_0804d8c4 \n\
 \n\
branch_0803feba: \n\
/* 0803feba */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0803febc */ LDR R3, [R3] \n\
/* 0803febe */ MOV R12, R3 @ Set R12 to R3 \n\
/* 0803fec0 */ LDR R0, [R5] \n\
/* 0803fec2 */ LDRB R0, [R0] \n\
/* 0803fec4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803fec6 */ BEQ branch_0803fecc \n\
/* 0803fec8 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803feca */ BNE branch_0803fee0 \n\
 \n\
branch_0803fecc: \n\
/* 0803fecc */ LDR R5, =anim_circus_fox_transform_effect \n\
/* 0803fece */ B branch_0803fee2 \n\
\n\
.ltorg \n\
 \n\
branch_0803fee0: \n\
/* 0803fee0 */ LDR R5, =anim_casual_fox_transform_effect \n\
 \n\
branch_0803fee2: \n\
/* 0803fee2 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0803fee4 */ LDR R1, [R4] \n\
/* 0803fee6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0803fee8 */ ADDS R2, R0, R6 @ Set R2 to R0 + R6 \n\
/* 0803feea */ LSLS R2, R2, 0x2 \n\
/* 0803feec */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803feee */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0803fef0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803fef2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803fef4 */ LDRSH R3, [R0, R4] \n\
/* 0803fef6 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 0803fef8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803fefa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803fefc */ LDRSH R0, [R1, R2] \n\
/* 0803fefe */ STR R0, [SP] \n\
/* 0803ff00 */ LDR R0, =0x4002 \n\
/* 0803ff02 */ STR R0, [SP, 0x4] \n\
/* 0803ff04 */ STR R7, [SP, 0x8] \n\
/* 0803ff06 */ STR R7, [SP, 0xC] \n\
/* 0803ff08 */ STR R7, [SP, 0x10] \n\
/* 0803ff0a */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0803ff0c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803ff0e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ff10 */ BL func_0804d160 \n\
/* 0803ff14 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803ff16 */ LDR R1, [R3] \n\
/* 0803ff18 */ LSLS R2, R6, 0x1 \n\
/* 0803ff1a */ ADDS R1, 0x34 @ Add 0x34 to R1 \n\
/* 0803ff1c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803ff1e */ STRH R0, [R1] \n\
/* 0803ff20 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 0803ff22 */ LDR R0, [R4] \n\
/* 0803ff24 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ff26 */ LDRSH R1, [R1, R2] \n\
/* 0803ff28 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ff2a */ BL func_0804d770 \n\
/* 0803ff2e */ ADDS R0, R6, 0x1 @ Set R0 to R6 + 0x1 \n\
/* 0803ff30 */ LSLS R0, R0, 0x18 \n\
/* 0803ff32 */ LSRS R6, R0, 0x18 \n\
/* 0803ff34 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0803ff36 */ BHI branch_0803ff3a \n\
/* 0803ff38 */ B branch_0803fdf2 \n\
 \n\
branch_0803ff3a: \n\
/* 0803ff3a */ LDR R0, =D_03005380 \n\
/* 0803ff3c */ LDR R2, [R0] \n\
/* 0803ff3e */ LDR R0, =gCurrentEngineData \n\
/* 0803ff40 */ LDR R0, [R0] \n\
/* 0803ff42 */ LDRB R0, [R0] \n\
/* 0803ff44 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803ff46 */ BEQ branch_0803ff4c \n\
/* 0803ff48 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803ff4a */ BNE branch_0803ff64 \n\
 \n\
branch_0803ff4c: \n\
/* 0803ff4c */ LDR R1, =anim_circus_tram_pauline_trampoline1 \n\
/* 0803ff4e */ B branch_0803ff66 \n\
\n\
.ltorg \n\
 \n\
branch_0803ff64: \n\
/* 0803ff64 */ LDR R1, =anim_casual_tram_pauline_trampoline \n\
 \n\
branch_0803ff66: \n\
/* 0803ff66 */ MOVS R0, 0x98 @ Set R0 to 0x98 \n\
/* 0803ff68 */ STR R0, [SP] \n\
/* 0803ff6a */ LDR R0, =0x4004 \n\
/* 0803ff6c */ STR R0, [SP, 0x4] \n\
/* 0803ff6e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ff70 */ STR R0, [SP, 0x8] \n\
/* 0803ff72 */ STR R0, [SP, 0xC] \n\
/* 0803ff74 */ STR R0, [SP, 0x10] \n\
/* 0803ff76 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803ff78 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ff7a */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 0803ff7c */ BL func_0804d160 \n\
/* 0803ff80 */ LDR R1, =gCurrentEngineData \n\
/* 0803ff82 */ LDR R1, [R1] \n\
/* 0803ff84 */ STRH R0, [R1, 0x2C] \n\
/* 0803ff86 */ LDR R0, =D_03005380 \n\
/* 0803ff88 */ LDR R2, [R0] \n\
/* 0803ff8a */ LDRB R0, [R1] \n\
/* 0803ff8c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803ff8e */ BEQ branch_0803ff94 \n\
/* 0803ff90 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803ff92 */ BNE branch_0803ffac \n\
 \n\
branch_0803ff94: \n\
/* 0803ff94 */ LDR R1, =anim_circus_tram_pauline_trampoline1 \n\
/* 0803ff96 */ B branch_0803ffae \n\
\n\
.ltorg \n\
 \n\
branch_0803ffac: \n\
/* 0803ffac */ LDR R1, =anim_casual_tram_pauline_trampoline \n\
 \n\
branch_0803ffae: \n\
/* 0803ffae */ MOVS R0, 0x98 @ Set R0 to 0x98 \n\
/* 0803ffb0 */ STR R0, [SP] \n\
/* 0803ffb2 */ LDR R0, =0x4004 \n\
/* 0803ffb4 */ STR R0, [SP, 0x4] \n\
/* 0803ffb6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ffb8 */ STR R0, [SP, 0x8] \n\
/* 0803ffba */ STR R0, [SP, 0xC] \n\
/* 0803ffbc */ STR R0, [SP, 0x10] \n\
/* 0803ffbe */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803ffc0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ffc2 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 0803ffc4 */ BL func_0804d160 \n\
/* 0803ffc8 */ LDR R3, =gCurrentEngineData \n\
/* 0803ffca */ LDR R1, [R3] \n\
/* 0803ffcc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ffce */ STRH R0, [R1, 0x30] \n\
/* 0803ffd0 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803ffd2 */ ADDS R0, 0x32 @ Add 0x32 to R0 \n\
/* 0803ffd4 */ STRB R2, [R0] \n\
/* 0803ffd6 */ ADDS R1, 0x2E @ Add 0x2E to R1 \n\
/* 0803ffd8 */ STRB R2, [R1] \n\
/* 0803ffda */ LDR R0, =D_03005380 \n\
/* 0803ffdc */ LDR R2, [R0] \n\
/* 0803ffde */ LDR R0, [R3] \n\
/* 0803ffe0 */ LDRB R0, [R0] \n\
/* 0803ffe2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803ffe4 */ BEQ branch_0803ffea \n\
/* 0803ffe6 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803ffe8 */ BNE branch_08040004 \n\
 \n\
branch_0803ffea: \n\
/* 0803ffea */ LDR R1, =anim_circus_tram_pauline_text_skip \n\
/* 0803ffec */ B branch_08040006 \n\
\n\
.ltorg \n\
 \n\
branch_08040004: \n\
/* 08040004 */ LDR R1, =anim_casual_tram_pauline_text_skip \n\
 \n\
branch_08040006: \n\
/* 08040006 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08040008 */ STR R0, [SP] \n\
/* 0804000a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804000c */ STR R0, [SP, 0x4] \n\
/* 0804000e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08040010 */ STR R5, [SP, 0x8] \n\
/* 08040012 */ STR R5, [SP, 0xC] \n\
/* 08040014 */ STR R5, [SP, 0x10] \n\
/* 08040016 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08040018 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804001a */ MOVS R3, 0xF0 @ Set R3 to 0xF0 \n\
/* 0804001c */ BL func_0804d160 \n\
/* 08040020 */ LDR R4, =gCurrentEngineData \n\
/* 08040022 */ LDR R1, [R4] \n\
/* 08040024 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08040026 */ STRH R0, [R1, 0x3E] \n\
/* 08040028 */ LDR R0, =D_03005380 \n\
/* 0804002a */ LDR R0, [R0] \n\
/* 0804002c */ MOVS R3, 0x3E @ Set R3 to 0x3E \n\
/* 0804002e */ LDRSH R1, [R1, R3] \n\
/* 08040030 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040032 */ BL func_0804d770 \n\
/* 08040036 */ LDR R0, [R4] \n\
/* 08040038 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0804003a */ STRB R6, [R0] \n\
/* 0804003c */ LDR R0, [R4] \n\
/* 0804003e */ STR R5, [R0, 0x44] \n\
/* 08040040 */ MOVS R0, 0xF1 @ Set R0 to 0xF1 \n\
/* 08040042 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08040044 */ BL gameplay_set_input_buttons \n\
/* 08040048 */ ADD SP, 0x1C \n\
/* 0804004a */ POP {R3-R5} \n\
/* 0804004c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804004e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08040050 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08040052 */ POP {R4-R7} \n\
/* 08040054 */ POP {R0} \n\
/* 08040056 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
