asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080231c8 \n\
/* 080231c8 */ PUSH {R4-R7, LR} \n\
/* 080231ca */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080231cc */ PUSH {R7} \n\
/* 080231ce */ LDR R0, =gCurrentEngineData \n\
/* 080231d0 */ LDR R0, [R0] \n\
/* 080231d2 */ MOVS R1, 0x83 @ Set R1 to 0x83 \n\
/* 080231d4 */ LSLS R1, R1, 0x3 \n\
/* 080231d6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080231d8 */ LDR R6, [R0] \n\
/* 080231da */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_080231dc: \n\
/* 080231dc */ LDR R0, =gSpriteHandler \n\
/* 080231de */ LDR R5, [R0] \n\
/* 080231e0 */ LDR R2, =gCurrentEngineData \n\
/* 080231e2 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080231e4 */ LDR R0, [R2] \n\
/* 080231e6 */ LSLS R1, R7, 0x1 \n\
/* 080231e8 */ LDR R2, =0x0000041c \n\
/* 080231ea */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080231ec */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080231ee */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080231f0 */ LDRSH R4, [R0, R1] \n\
/* 080231f2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080231f4 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080231f6 */ BL __umodsi3 \n\
/* 080231fa */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080231fc */ LSLS R2, R2, 0x18 \n\
/* 080231fe */ ASRS R2, R2, 0x18 \n\
/* 08023200 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08023202 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08023204 */ BL sprite_set_anim_cel \n\
/* 08023208 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802320a */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0802320c */ BL __udivsi3 \n\
/* 08023210 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08023212 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08023214 */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 08023216 */ BLS branch_080231dc \n\
/* 08023218 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802321a */ LDR R0, [R2] \n\
/* 0802321c */ LDR R1, =0x00000424 \n\
/* 0802321e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08023220 */ LDR R6, [R0] \n\
/* 08023222 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08023224: \n\
/* 08023224 */ LDR R0, =gSpriteHandler \n\
/* 08023226 */ LDR R5, [R0] \n\
/* 08023228 */ LDR R0, =gCurrentEngineData \n\
/* 0802322a */ LDR R0, [R0] \n\
/* 0802322c */ LSLS R1, R7, 0x1 \n\
/* 0802322e */ MOVS R2, 0x85 @ Set R2 to 0x85 \n\
/* 08023230 */ LSLS R2, R2, 0x3 \n\
/* 08023232 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08023234 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08023236 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08023238 */ LDRSH R4, [R0, R1] \n\
/* 0802323a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802323c */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0802323e */ BL __umodsi3 \n\
/* 08023242 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08023244 */ LSLS R2, R2, 0x18 \n\
/* 08023246 */ ASRS R2, R2, 0x18 \n\
/* 08023248 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802324a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802324c */ BL sprite_set_anim_cel \n\
/* 08023250 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08023252 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08023254 */ BL __udivsi3 \n\
/* 08023258 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802325a */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0802325c */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 0802325e */ BLS branch_08023224 \n\
/* 08023260 */ POP {R3} \n\
/* 08023262 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08023264 */ POP {R4-R7} \n\
/* 08023266 */ POP {R0} \n\
/* 08023268 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
