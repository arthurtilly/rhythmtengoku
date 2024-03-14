asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d250 \n\
/* 0802d250 */ PUSH {LR} \n\
/* 0802d252 */ LDR R0, =gCurrentEngineData \n\
/* 0802d254 */ LDR R1, [R0] \n\
/* 0802d256 */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 0802d258 */ LSLS R2, R2, 0x1 \n\
/* 0802d25a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802d25c */ LDR R0, [R0] \n\
/* 0802d25e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802d260 */ BEQ branch_0802d26c \n\
/* 0802d262 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802d264 */ BEQ branch_0802d288 \n\
/* 0802d266 */ B branch_0802d29c \n\
\n\
.ltorg \n\
 \n\
branch_0802d26c: \n\
/* 0802d26c */ LDR R0, =gSpriteHandler \n\
/* 0802d26e */ LDR R0, [R0] \n\
/* 0802d270 */ MOVS R2, 0xB2 @ Set R2 to 0xB2 \n\
/* 0802d272 */ LSLS R2, R2, 0x1 \n\
/* 0802d274 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d276 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d278 */ LDRSH R1, [R1, R2] \n\
/* 0802d27a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802d27c */ BL sprite_set_visible \n\
/* 0802d280 */ B branch_0802d29c \n\
\n\
.ltorg \n\
 \n\
branch_0802d288: \n\
/* 0802d288 */ LDR R0, =gSpriteHandler \n\
/* 0802d28a */ LDR R0, [R0] \n\
/* 0802d28c */ MOVS R2, 0xB2 @ Set R2 to 0xB2 \n\
/* 0802d28e */ LSLS R2, R2, 0x1 \n\
/* 0802d290 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d292 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d294 */ LDRSH R1, [R1, R2] \n\
/* 0802d296 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d298 */ BL sprite_set_visible \n\
 \n\
branch_0802d29c: \n\
/* 0802d29c */ LDR R0, =gCurrentEngineData \n\
/* 0802d29e */ LDR R0, [R0] \n\
/* 0802d2a0 */ MOVS R2, 0xB8 @ Set R2 to 0xB8 \n\
/* 0802d2a2 */ LSLS R2, R2, 0x1 \n\
/* 0802d2a4 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802d2a6 */ LDRH R0, [R1] \n\
/* 0802d2a8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802d2aa */ BEQ branch_0802d2b0 \n\
/* 0802d2ac */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802d2ae */ STRH R0, [R1] \n\
 \n\
branch_0802d2b0: \n\
/* 0802d2b0 */ POP {R0} \n\
/* 0802d2b2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
