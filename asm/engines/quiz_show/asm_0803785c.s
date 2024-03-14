asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803785c \n\
/* 0803785c */ PUSH {R4-R6, LR} \n\
/* 0803785e */ MOV R6, R10 @ Set R6 to R10 \n\
/* 08037860 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 08037862 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08037864 */ PUSH {R4-R6} \n\
/* 08037866 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08037868 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0803786a */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0803786c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803786e */ MOVS R2, 0x63 @ Set R2 to 0x63 \n\
/* 08037870 */ BL clamp_int32 \n\
/* 08037874 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08037876 */ LDR R6, =gSpriteHandler \n\
/* 08037878 */ LDR R4, [R6] \n\
/* 0803787a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0803787c */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0803787e */ LDRSH R5, [R0, R1] \n\
/* 08037880 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08037882 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08037884 */ BL __umodsi3 \n\
/* 08037888 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803788a */ LSLS R2, R2, 0x18 \n\
/* 0803788c */ ASRS R2, R2, 0x18 \n\
/* 0803788e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08037890 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08037892 */ BL sprite_set_anim_cel \n\
/* 08037896 */ LDR R4, [R6] \n\
/* 08037898 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0803789a */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0803789c */ LDRSH R5, [R0, R1] \n\
/* 0803789e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080378a0 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080378a2 */ BL __udivsi3 \n\
/* 080378a6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080378a8 */ LSLS R2, R2, 0x18 \n\
/* 080378aa */ ASRS R2, R2, 0x18 \n\
/* 080378ac */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080378ae */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080378b0 */ BL sprite_set_anim_cel \n\
/* 080378b4 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 080378b6 */ LSLS R2, R2, 0x1 \n\
/* 080378b8 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 080378ba */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080378bc */ BL clamp_int32 \n\
/* 080378c0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080378c2 */ STRH R0, [R1, 0x10] \n\
/* 080378c4 */ POP {R3-R5} \n\
/* 080378c6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080378c8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080378ca */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080378cc */ POP {R4-R6} \n\
/* 080378ce */ POP {R0} \n\
/* 080378d0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
