asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08041970 \n\
/* 08041970 */ PUSH {R4-R7, LR} \n\
/* 08041972 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08041974 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08041976 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08041978 */ PUSH {R5-R7} \n\
/* 0804197a */ SUB SP, 0xC \n\
/* 0804197c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804197e */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_08041980: \n\
/* 08041980 */ LDR R3, =gCurrentEngineData \n\
/* 08041982 */ LDR R1, [R3] \n\
/* 08041984 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 08041986 */ LSLS R2, R4, 0x3 \n\
/* 08041988 */ SUBS R0, R2, R4 @ Set R0 to R2 - R4 \n\
/* 0804198a */ LSLS R0, R0, 0x2 \n\
/* 0804198c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804198e */ ADDS R1, 0x3E @ Add 0x3E to R1 \n\
/* 08041990 */ LDRB R0, [R1] \n\
/* 08041992 */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 08041994 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08041996 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08041998 */ BLS branch_0804199c \n\
/* 0804199a */ B branch_08041c76 \n\
 \n\
branch_0804199c: \n\
/* 0804199c */ LSLS R0, R0, 0x2 \n\
/* 0804199e */ LDR R1, =jtbl_080419b0 \n\
/* 080419a0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080419a2 */ LDR R0, [R0] \n\
/* 080419a4 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_080419b0: \n\
.word branch_08041c76 \n\
.word jump_08041c50 \n\
.word jump_080419c4 \n\
.word jump_080419c4 \n\
.word jump_08041bb8 \n\
jump_080419c4: \n\
/* 080419c4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080419c6 */ LDR R2, [R7] \n\
/* 080419c8 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080419ca */ MOV R4, R10 @ Set R4 to R10 \n\
/* 080419cc */ SUBS R0, R3, R4 @ Set R0 to R3 - R4 \n\
/* 080419ce */ LSLS R3, R0, 0x2 \n\
/* 080419d0 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 080419d2 */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 080419d4 */ LDRB R0, [R0] \n\
/* 080419d6 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080419d8 */ BNE branch_080419dc \n\
/* 080419da */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_080419dc: \n\
/* 080419dc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080419de */ BEQ branch_080419f8 \n\
/* 080419e0 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080419e2 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 080419e4 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080419e6 */ LDR R1, [R2, 0xC] \n\
/* 080419e8 */ STR R1, [R0] \n\
/* 080419ea */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080419ec */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 080419ee */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080419f0 */ LDR R1, =0x8002 \n\
/* 080419f2 */ B branch_08041a0a \n\
\n\
.ltorg \n\
 \n\
branch_080419f8: \n\
/* 080419f8 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080419fa */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 080419fc */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080419fe */ LDR R1, [R2, 0x24] \n\
/* 08041a00 */ STR R1, [R0] \n\
/* 08041a02 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08041a04 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 08041a06 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08041a08 */ LDR R1, =0x8005 \n\
 \n\
branch_08041a0a: \n\
/* 08041a0a */ STR R1, [R0] \n\
/* 08041a0c */ LDR R6, =gCurrentEngineData \n\
/* 08041a0e */ LDR R2, [R6] \n\
/* 08041a10 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08041a12 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08041a14 */ SUBS R0, R1, R3 @ Set R0 to R1 - R3 \n\
/* 08041a16 */ LSLS R7, R0, 0x2 \n\
/* 08041a18 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08041a1a */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08041a1c */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08041a1e */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08041a20 */ LSLS R1, R1, 0x7 \n\
/* 08041a22 */ STR R1, [R0] \n\
/* 08041a24 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08041a26 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 08041a28 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08041a2a */ LDR R3, =D_0805aa40 \n\
/* 08041a2c */ MOVS R5, 0xB3 @ Set R5 to 0xB3 \n\
/* 08041a2e */ LSLS R5, R5, 0x2 \n\
/* 08041a30 */ ADDS R4, R2, R5 @ Set R4 to R2 + R5 \n\
/* 08041a32 */ LDRB R0, [R4] \n\
/* 08041a34 */ LSLS R0, R0, 0x3 \n\
/* 08041a36 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08041a38 */ LDR R0, [R0] \n\
/* 08041a3a */ STR R0, [R1] \n\
/* 08041a3c */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08041a3e */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
/* 08041a40 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08041a42 */ LDRB R0, [R4] \n\
/* 08041a44 */ LSLS R0, R0, 0x3 \n\
/* 08041a46 */ ADDS R3, 0x4 @ Add 0x4 to R3 \n\
/* 08041a48 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08041a4a */ LDR R0, [R0] \n\
/* 08041a4c */ STR R0, [R1] \n\
/* 08041a4e */ ADDS R2, R2, R7 @ Set R2 to R2 + R7 \n\
/* 08041a50 */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 08041a52 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08041a54 */ STRB R3, [R2] \n\
/* 08041a56 */ LDR R1, [R6] \n\
/* 08041a58 */ ADDS R5, R1, R5 @ Set R5 to R1 + R5 \n\
/* 08041a5a */ LDRB R0, [R5] \n\
/* 08041a5c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08041a5e */ BNE branch_08041aa4 \n\
/* 08041a60 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08041a62 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08041a64 */ ADDS R0, 0x3F @ Add 0x3F to R0 \n\
/* 08041a66 */ LDRB R0, [R0] \n\
/* 08041a68 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08041a6a */ BEQ branch_08041a70 \n\
/* 08041a6c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08041a6e */ BNE branch_08041a90 \n\
 \n\
branch_08041a70: \n\
/* 08041a70 */ LDR R0, =gSpriteHandler \n\
/* 08041a72 */ LDR R0, [R0] \n\
/* 08041a74 */ MOVS R4, 0x3C @ Set R4 to 0x3C \n\
/* 08041a76 */ LDRSH R1, [R1, R4] \n\
/* 08041a78 */ LDR R2, =anim_horse_text_pak \n\
/* 08041a7a */ B branch_08041b26 \n\
\n\
.ltorg \n\
 \n\
branch_08041a90: \n\
/* 08041a90 */ LDR R0, =gSpriteHandler \n\
/* 08041a92 */ LDR R0, [R0] \n\
/* 08041a94 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08041a96 */ LDRSH R1, [R1, R2] \n\
/* 08041a98 */ LDR R2, =anim_horse_text_ka \n\
/* 08041a9a */ B branch_08041b26 \n\
\n\
.ltorg \n\
 \n\
branch_08041aa4: \n\
/* 08041aa4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08041aa6 */ BNE branch_08041ac0 \n\
/* 08041aa8 */ LDR R0, =gSpriteHandler \n\
/* 08041aaa */ LDR R0, [R0] \n\
/* 08041aac */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08041aae */ MOVS R4, 0x3C @ Set R4 to 0x3C \n\
/* 08041ab0 */ LDRSH R1, [R1, R4] \n\
/* 08041ab2 */ LDR R2, =anim_horse_text_tot \n\
/* 08041ab4 */ B branch_08041b26 \n\
\n\
.ltorg \n\
 \n\
branch_08041ac0: \n\
/* 08041ac0 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08041ac2 */ BNE branch_08041b10 \n\
/* 08041ac4 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08041ac6 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08041ac8 */ ADDS R0, 0x3F @ Add 0x3F to R0 \n\
/* 08041aca */ LDRB R0, [R0] \n\
/* 08041acc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08041ace */ BNE branch_08041ae4 \n\
/* 08041ad0 */ LDR R0, =gSpriteHandler \n\
/* 08041ad2 */ LDR R0, [R0] \n\
/* 08041ad4 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08041ad6 */ LDRSH R1, [R1, R2] \n\
/* 08041ad8 */ LDR R2, =anim_horse_text_pa \n\
/* 08041ada */ B branch_08041b26 \n\
\n\
.ltorg \n\
 \n\
branch_08041ae4: \n\
/* 08041ae4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08041ae6 */ BNE branch_08041afc \n\
/* 08041ae8 */ LDR R0, =gSpriteHandler \n\
/* 08041aea */ LDR R0, [R0] \n\
/* 08041aec */ MOVS R4, 0x3C @ Set R4 to 0x3C \n\
/* 08041aee */ LDRSH R1, [R1, R4] \n\
/* 08041af0 */ LDR R2, =anim_horse_text_ka \n\
/* 08041af2 */ B branch_08041b26 \n\
\n\
.ltorg \n\
 \n\
branch_08041afc: \n\
/* 08041afc */ LDR R0, =gSpriteHandler \n\
/* 08041afe */ LDR R0, [R0] \n\
/* 08041b00 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08041b02 */ LDRSH R1, [R1, R2] \n\
/* 08041b04 */ LDR R2, =anim_horse_text_rap \n\
/* 08041b06 */ B branch_08041b26 \n\
\n\
.ltorg \n\
 \n\
branch_08041b10: \n\
/* 08041b10 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08041b12 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08041b14 */ ADDS R0, 0x3F @ Add 0x3F to R0 \n\
/* 08041b16 */ LDRB R0, [R0] \n\
/* 08041b18 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08041b1a */ BHI branch_08041b3c \n\
/* 08041b1c */ LDR R0, =gSpriteHandler \n\
/* 08041b1e */ LDR R0, [R0] \n\
/* 08041b20 */ MOVS R4, 0x3C @ Set R4 to 0x3C \n\
/* 08041b22 */ LDRSH R1, [R1, R4] \n\
/* 08041b24 */ LDR R2, =anim_horse_text_do \n\
 \n\
branch_08041b26: \n\
/* 08041b26 */ STR R3, [SP] \n\
/* 08041b28 */ STR R3, [SP, 0x4] \n\
/* 08041b2a */ STR R3, [SP, 0x8] \n\
/* 08041b2c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08041b2e */ BL sprite_set_anim \n\
/* 08041b32 */ B branch_08041b52 \n\
\n\
.ltorg \n\
 \n\
branch_08041b3c: \n\
/* 08041b3c */ LDR R0, =gSpriteHandler \n\
/* 08041b3e */ LDR R0, [R0] \n\
/* 08041b40 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08041b42 */ LDRSH R1, [R1, R2] \n\
/* 08041b44 */ LDR R2, =anim_horse_text_dod \n\
/* 08041b46 */ STR R3, [SP] \n\
/* 08041b48 */ STR R3, [SP, 0x4] \n\
/* 08041b4a */ STR R3, [SP, 0x8] \n\
/* 08041b4c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08041b4e */ BL sprite_set_anim \n\
 \n\
branch_08041b52: \n\
/* 08041b52 */ LDR R3, =gSpriteHandler \n\
/* 08041b54 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08041b56 */ LDR R0, [R3] \n\
/* 08041b58 */ LDR R6, =gCurrentEngineData \n\
/* 08041b5a */ LDR R4, [R6] \n\
/* 08041b5c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08041b5e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08041b60 */ SUBS R5, R1, R2 @ Set R5 to R1 - R2 \n\
/* 08041b62 */ LSLS R5, R5, 0x2 \n\
/* 08041b64 */ ADDS R1, R4, R5 @ Set R1 to R4 + R5 \n\
/* 08041b66 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08041b68 */ LDRSH R1, [R1, R3] \n\
/* 08041b6a */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08041b6c */ ADDS R2, 0x44 @ Add 0x44 to R2 \n\
/* 08041b6e */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 08041b70 */ LDR R2, [R2] \n\
/* 08041b72 */ LSLS R2, R2, 0x8 \n\
/* 08041b74 */ ASRS R2, R2, 0x10 \n\
/* 08041b76 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08041b78 */ ADDS R3, 0x48 @ Add 0x48 to R3 \n\
/* 08041b7a */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 08041b7c */ LDR R3, [R3] \n\
/* 08041b7e */ LSLS R3, R3, 0x8 \n\
/* 08041b80 */ ASRS R3, R3, 0x10 \n\
/* 08041b82 */ ADDS R4, 0x4C @ Add 0x4C to R4 \n\
/* 08041b84 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 08041b86 */ LDRH R4, [R4] \n\
/* 08041b88 */ STR R4, [SP] \n\
/* 08041b8a */ BL sprite_set_x_y_z \n\
/* 08041b8e */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08041b90 */ LDR R0, [R4] \n\
/* 08041b92 */ LDR R1, [R6] \n\
/* 08041b94 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08041b96 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08041b98 */ LDRSH R1, [R1, R2] \n\
/* 08041b9a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08041b9c */ BL sprite_set_visible \n\
/* 08041ba0 */ LDR R0, [R6] \n\
/* 08041ba2 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08041ba4 */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08041ba6 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08041ba8 */ B branch_08041c74 \n\
\n\
.ltorg \n\
jump_08041bb8: \n\
/* 08041bb8 */ LDR R6, [R7] \n\
/* 08041bba */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08041bbc */ MOV R4, R10 @ Set R4 to R10 \n\
/* 08041bbe */ SUBS R0, R3, R4 @ Set R0 to R3 - R4 \n\
/* 08041bc0 */ LSLS R5, R0, 0x2 \n\
/* 08041bc2 */ ADDS R4, R6, 0x0 @ Set R4 to R6 + 0x0 \n\
/* 08041bc4 */ ADDS R4, 0x44 @ Add 0x44 to R4 \n\
/* 08041bc6 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 08041bc8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08041bca */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08041bcc */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08041bce */ LDR R1, [R4] \n\
/* 08041bd0 */ LDR R0, [R0] \n\
/* 08041bd2 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08041bd4 */ STR R1, [R4] \n\
/* 08041bd6 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08041bd8 */ ADDS R3, 0x48 @ Add 0x48 to R3 \n\
/* 08041bda */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 08041bdc */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08041bde */ ADDS R2, 0x54 @ Add 0x54 to R2 \n\
/* 08041be0 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 08041be2 */ LDR R0, [R3] \n\
/* 08041be4 */ LDR R1, [R2] \n\
/* 08041be6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041be8 */ STR R0, [R3] \n\
/* 08041bea */ LDR R0, [R2] \n\
/* 08041bec */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 08041bee */ STR R0, [R2] \n\
/* 08041bf0 */ LDR R0, =gSpriteHandler \n\
/* 08041bf2 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08041bf4 */ LDR R0, [R0] \n\
/* 08041bf6 */ ADDS R1, R6, R5 @ Set R1 to R6 + R5 \n\
/* 08041bf8 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08041bfa */ LDRSH R1, [R1, R2] \n\
/* 08041bfc */ LDR R2, [R4] \n\
/* 08041bfe */ LSLS R2, R2, 0x8 \n\
/* 08041c00 */ ASRS R2, R2, 0x10 \n\
/* 08041c02 */ LDR R3, [R3] \n\
/* 08041c04 */ LSLS R3, R3, 0x8 \n\
/* 08041c06 */ ASRS R3, R3, 0x10 \n\
/* 08041c08 */ BL sprite_set_x_y \n\
/* 08041c0c */ LDR R2, [R7] \n\
/* 08041c0e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08041c10 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 08041c12 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08041c14 */ LDR R1, [R0] \n\
/* 08041c16 */ LDR R0, =0xfffff000 \n\
/* 08041c18 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08041c1a */ BLT branch_08041c2c \n\
/* 08041c1c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08041c1e */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08041c20 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08041c22 */ LDR R1, [R0] \n\
/* 08041c24 */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 08041c26 */ LSLS R0, R0, 0x7 \n\
/* 08041c28 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08041c2a */ BLE branch_08041c76 \n\
 \n\
branch_08041c2c: \n\
/* 08041c2c */ ADDS R0, R2, R5 @ Set R0 to R2 + R5 \n\
/* 08041c2e */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08041c30 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08041c32 */ STRB R1, [R0] \n\
/* 08041c34 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08041c36 */ LDR R0, [R3] \n\
/* 08041c38 */ LDR R1, [R7] \n\
/* 08041c3a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08041c3c */ MOVS R4, 0x3C @ Set R4 to 0x3C \n\
/* 08041c3e */ LDRSH R1, [R1, R4] \n\
/* 08041c40 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08041c42 */ BL sprite_set_visible \n\
/* 08041c46 */ B branch_08041c76 \n\
\n\
.ltorg \n\
jump_08041c50: \n\
/* 08041c50 */ LDR R2, [R7] \n\
/* 08041c52 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08041c54 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08041c56 */ SUBS R0, R1, R3 @ Set R0 to R1 - R3 \n\
/* 08041c58 */ LSLS R3, R0, 0x2 \n\
/* 08041c5a */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08041c5c */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 08041c5e */ LDRB R1, [R2] \n\
/* 08041c60 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08041c62 */ ADDS R0, 0xFF @ Add 0xFF to R0 \n\
/* 08041c64 */ STRB R0, [R2] \n\
/* 08041c66 */ LSLS R1, R1, 0x18 \n\
/* 08041c68 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08041c6a */ BNE branch_08041c76 \n\
/* 08041c6c */ LDR R0, [R7] \n\
/* 08041c6e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08041c70 */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08041c72 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
 \n\
branch_08041c74: \n\
/* 08041c74 */ STRB R1, [R0] \n\
 \n\
branch_08041c76: \n\
/* 08041c76 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08041c78 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08041c7a */ LSLS R0, R0, 0x18 \n\
/* 08041c7c */ LSRS R0, R0, 0x18 \n\
/* 08041c7e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08041c80 */ CMP R0, 0x13 @ Compare R0 and 0x13 \n\
/* 08041c82 */ BHI branch_08041c86 \n\
/* 08041c84 */ B branch_08041980 \n\
 \n\
branch_08041c86: \n\
/* 08041c86 */ ADD SP, 0xC \n\
/* 08041c88 */ POP {R3-R5} \n\
/* 08041c8a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08041c8c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08041c8e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08041c90 */ POP {R4-R7} \n\
/* 08041c92 */ POP {R0} \n\
/* 08041c94 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
