asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803709c \n\
/* 0803709c */ PUSH {R4-R7, LR} \n\
/* 0803709e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080370a0 */ PUSH {R7} \n\
/* 080370a2 */ LDR R0, =gSpriteHandler \n\
/* 080370a4 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080370a6 */ LDR R0, [R0] \n\
/* 080370a8 */ LDR R7, =gCurrentEngineData \n\
/* 080370aa */ LDR R1, [R7] \n\
/* 080370ac */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 080370ae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080370b0 */ LDRSH R1, [R1, R2] \n\
/* 080370b2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080370b4 */ BL sprite_set_anim_cel \n\
/* 080370b8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080370ba */ LDR R0, [R1] \n\
/* 080370bc */ LDR R1, [R7] \n\
/* 080370be */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
/* 080370c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080370c2 */ LDRSH R1, [R1, R2] \n\
/* 080370c4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080370c6 */ BL sprite_set_anim_cel \n\
/* 080370ca */ LDR R0, [R7] \n\
/* 080370cc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080370ce */ ADDS R1, 0x4A @ Add 0x4A to R1 \n\
/* 080370d0 */ LDRH R6, [R1] \n\
/* 080370d2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080370d4 */ LDR R5, [R1] \n\
/* 080370d6 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 080370d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080370da */ LDRSH R4, [R0, R2] \n\
/* 080370dc */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080370de */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080370e0 */ BL __umodsi3 \n\
/* 080370e4 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080370e6 */ LSLS R2, R2, 0x18 \n\
/* 080370e8 */ ASRS R2, R2, 0x18 \n\
/* 080370ea */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080370ec */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080370ee */ BL sprite_set_anim_cel \n\
/* 080370f2 */ CMP R6, 0x9 @ Compare R6 and 0x9 \n\
/* 080370f4 */ BLS branch_08037118 \n\
/* 080370f6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080370f8 */ LDR R5, [R0] \n\
/* 080370fa */ LDR R0, [R7] \n\
/* 080370fc */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 080370fe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08037100 */ LDRSH R4, [R0, R1] \n\
/* 08037102 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08037104 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08037106 */ BL __udivsi3 \n\
/* 0803710a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803710c */ LSLS R2, R2, 0x18 \n\
/* 0803710e */ ASRS R2, R2, 0x18 \n\
/* 08037110 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08037112 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08037114 */ BL sprite_set_anim_cel \n\
 \n\
branch_08037118: \n\
/* 08037118 */ LDR R0, [R7] \n\
/* 0803711a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803711c */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 0803711e */ LDRH R6, [R1] \n\
/* 08037120 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08037122 */ LDR R5, [R2] \n\
/* 08037124 */ ADDS R0, 0x52 @ Add 0x52 to R0 \n\
/* 08037126 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08037128 */ LDRSH R4, [R0, R1] \n\
/* 0803712a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803712c */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0803712e */ BL __umodsi3 \n\
/* 08037132 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08037134 */ LSLS R2, R2, 0x18 \n\
/* 08037136 */ ASRS R2, R2, 0x18 \n\
/* 08037138 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803713a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803713c */ BL sprite_set_anim_cel \n\
/* 08037140 */ CMP R6, 0x9 @ Compare R6 and 0x9 \n\
/* 08037142 */ BLS branch_08037166 \n\
/* 08037144 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08037146 */ LDR R5, [R2] \n\
/* 08037148 */ LDR R0, [R7] \n\
/* 0803714a */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 0803714c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803714e */ LDRSH R4, [R0, R1] \n\
/* 08037150 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08037152 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08037154 */ BL __udivsi3 \n\
/* 08037158 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803715a */ LSLS R2, R2, 0x18 \n\
/* 0803715c */ ASRS R2, R2, 0x18 \n\
/* 0803715e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08037160 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08037162 */ BL sprite_set_anim_cel \n\
 \n\
branch_08037166: \n\
/* 08037166 */ POP {R3} \n\
/* 08037168 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803716a */ POP {R4-R7} \n\
/* 0803716c */ POP {R0} \n\
/* 0803716e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
