asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start clappy_trio_common_beat_animation \n\
/* 08030a60 */ PUSH {R4-R7, LR} \n\
/* 08030a62 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08030a64 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08030a66 */ PUSH {R6, R7} \n\
/* 08030a68 */ SUB SP, 0xC \n\
/* 08030a6a */ LDR R0, =gCurrentEngineData \n\
/* 08030a6c */ LDR R0, [R0] \n\
/* 08030a6e */ ADDS R6, R0, 0x4 @ Set R6 to R0 + 0x4 \n\
/* 08030a70 */ LDRB R0, [R6, 0x8] \n\
/* 08030a72 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08030a74 */ BEQ branch_08030a84 \n\
/* 08030a76 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08030a78 */ BEQ branch_08030a88 \n\
/* 08030a7a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030a7c */ B branch_08030a8a \n\
\n\
.ltorg \n\
 \n\
branch_08030a84: \n\
/* 08030a84 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08030a86 */ B branch_08030a8a \n\
 \n\
branch_08030a88: \n\
/* 08030a88 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08030a8a: \n\
/* 08030a8a */ BL clappy_trio_get_anim \n\
/* 08030a8e */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08030a90 */ LDRB R0, [R6, 0x9] \n\
/* 08030a92 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08030a94 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08030a96 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08030a98 */ STRB R0, [R6, 0x9] \n\
/* 08030a9a */ LSLS R0, R0, 0x18 \n\
/* 08030a9c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08030a9e */ BNE branch_08030aa4 \n\
/* 08030aa0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08030aa2 */ STRB R2, [R6, 0x8] \n\
 \n\
branch_08030aa4: \n\
/* 08030aa4 */ LDR R0, =gSpriteHandler \n\
/* 08030aa6 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08030aa8 */ LDR R0, [R0] \n\
/* 08030aaa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030aac */ LDRSH R1, [R6, R2] \n\
/* 08030aae */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08030ab0 */ STR R5, [SP] \n\
/* 08030ab2 */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 08030ab4 */ STR R4, [SP, 0x4] \n\
/* 08030ab6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08030ab8 */ STR R2, [SP, 0x8] \n\
/* 08030aba */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08030abc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030abe */ BL sprite_set_anim \n\
/* 08030ac2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08030ac4 */ LDR R0, [R1] \n\
/* 08030ac6 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08030ac8 */ LDRSH R1, [R6, R2] \n\
/* 08030aca */ STR R5, [SP] \n\
/* 08030acc */ STR R4, [SP, 0x4] \n\
/* 08030ace */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08030ad0 */ STR R2, [SP, 0x8] \n\
/* 08030ad2 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08030ad4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030ad6 */ BL sprite_set_anim \n\
/* 08030ada */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08030adc */ LDR R0, [R1] \n\
/* 08030ade */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08030ae0 */ LDRSH R1, [R6, R2] \n\
/* 08030ae2 */ STR R5, [SP] \n\
/* 08030ae4 */ STR R4, [SP, 0x4] \n\
/* 08030ae6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08030ae8 */ STR R2, [SP, 0x8] \n\
/* 08030aea */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08030aec */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030aee */ BL sprite_set_anim \n\
/* 08030af2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08030af4 */ LDR R0, [R1] \n\
/* 08030af6 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08030af8 */ LDRSH R1, [R6, R2] \n\
/* 08030afa */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08030afc */ BL sprite_get_data \n\
/* 08030b00 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08030b02 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08030b04 */ BL clappy_trio_get_anim \n\
/* 08030b08 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08030b0a */ BNE branch_08030b34 \n\
/* 08030b0c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08030b0e */ LDR R0, [R1] \n\
/* 08030b10 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08030b12 */ LDRSH R1, [R6, R2] \n\
/* 08030b14 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08030b16 */ BL sprite_get_data \n\
/* 08030b1a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08030b1c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08030b1e */ LDR R0, [R1] \n\
/* 08030b20 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08030b22 */ LDRSH R1, [R6, R2] \n\
/* 08030b24 */ BL sprite_get_anim_cel \n\
/* 08030b28 */ LSLS R0, R0, 0x18 \n\
/* 08030b2a */ ASRS R0, R0, 0x18 \n\
/* 08030b2c */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 08030b2e */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08030b30 */ BCS branch_08030b34 \n\
/* 08030b32 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08030b34: \n\
/* 08030b34 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08030b36 */ BL clappy_trio_get_anim \n\
/* 08030b3a */ CMP R7, R0 @ Check R7 - R0 \n\
/* 08030b3c */ BNE branch_08030b46 \n\
/* 08030b3e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030b40 */ BL clappy_trio_get_anim \n\
/* 08030b44 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
 \n\
branch_08030b46: \n\
/* 08030b46 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08030b48 */ BEQ branch_08030b66 \n\
/* 08030b4a */ LDR R0, =gSpriteHandler \n\
/* 08030b4c */ LDR R0, [R0] \n\
/* 08030b4e */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08030b50 */ LDRSH R1, [R6, R2] \n\
/* 08030b52 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08030b54 */ STR R2, [SP] \n\
/* 08030b56 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08030b58 */ STR R2, [SP, 0x4] \n\
/* 08030b5a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030b5c */ STR R2, [SP, 0x8] \n\
/* 08030b5e */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08030b60 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030b62 */ BL sprite_set_anim \n\
 \n\
branch_08030b66: \n\
/* 08030b66 */ LDR R5, =gCurrentEngineData \n\
/* 08030b68 */ LDR R0, [R5] \n\
/* 08030b6a */ LDRB R0, [R0, 0x11] \n\
/* 08030b6c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08030b6e */ BEQ branch_08030bae \n\
/* 08030b70 */ BL get_current_mem_id \n\
/* 08030b74 */ LSLS R0, R0, 0x10 \n\
/* 08030b76 */ LSRS R0, R0, 0x10 \n\
/* 08030b78 */ LDR R3, =(clappy_trio_bg_pal + 0x80) \n\
/* 08030b7a */ LDR R1, =clappy_trio_bg_pal \n\
/* 08030b7c */ STR R1, [SP] \n\
/* 08030b7e */ LDR R4, =(D_03004b10 + 0x54) \n\
/* 08030b80 */ STR R4, [SP, 0x4] \n\
/* 08030b82 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08030b84 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08030b86 */ BL palette_fade_to \n\
/* 08030b8a */ BL get_current_mem_id \n\
/* 08030b8e */ LSLS R0, R0, 0x10 \n\
/* 08030b90 */ LSRS R0, R0, 0x10 \n\
/* 08030b92 */ LDR R3, =(clappy_trio_bg_pal + 0x20) \n\
/* 08030b94 */ LDR R1, =clappy_trio_obj_pal \n\
/* 08030b96 */ STR R1, [SP] \n\
/* 08030b98 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08030b9a */ LSLS R1, R1, 0x2 \n\
/* 08030b9c */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08030b9e */ STR R4, [SP, 0x4] \n\
/* 08030ba0 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08030ba2 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08030ba4 */ BL palette_fade_to \n\
/* 08030ba8 */ LDR R1, [R5] \n\
/* 08030baa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030bac */ STRB R0, [R1, 0x11] \n\
 \n\
branch_08030bae: \n\
/* 08030bae */ ADD SP, 0xC \n\
/* 08030bb0 */ POP {R3, R4} \n\
/* 08030bb2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08030bb4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08030bb6 */ POP {R4-R7} \n\
/* 08030bb8 */ POP {R0} \n\
/* 08030bba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
