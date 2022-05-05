asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a224 \n\
/* 0804a224 */ PUSH {R4, R5, LR} \n\
/* 0804a226 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804a228 */ LDR R3, [R0, 0x4] \n\
/* 0804a22a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804a22c */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 0804a22e */ LDR R1, [R0, 0x1C] \n\
/* 0804a230 */ LSRS R2, R1, 0x8 \n\
/* 0804a232 */ LDRB R0, [R0, 0x1C] \n\
/* 0804a234 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0804a236 */ BHI branch_0804a2b4 \n\
/* 0804a238 */ LSLS R0, R0, 0x2 \n\
/* 0804a23a */ LDR R1, =jtbl_0804a248 \n\
/* 0804a23c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804a23e */ LDR R0, [R0] \n\
/* 0804a240 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0804a248: \n\
.word jump_0804a25c \n\
.word jump_0804a274 \n\
.word jump_0804a286 \n\
.word jump_0804a29c \n\
.word jump_0804a2a0 \n\
jump_0804a25c: \n\
/* 0804a25c */ LDR R0, [R3, 0x10] \n\
/* 0804a25e */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0804a260 */ LDR R0, =0x007effff \n\
/* 0804a262 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804a264 */ BLE branch_0804a2b4 \n\
/* 0804a266 */ MOVS R2, 0xFE @ Set R2 to 0xFE \n\
/* 0804a268 */ LSLS R2, R2, 0xF \n\
/* 0804a26a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804a26c */ STRB R0, [R4] \n\
/* 0804a26e */ B branch_0804a2b4 \n\
\n\
.ltorg \n\
jump_0804a274: \n\
/* 0804a274 */ LDR R0, [R3, 0x14] \n\
/* 0804a276 */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0804a278 */ LDR R0, [R3, 0xC] \n\
/* 0804a27a */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804a27c */ BGT branch_0804a2b4 \n\
/* 0804a27e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804a280 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804a282 */ STRB R0, [R4] \n\
/* 0804a284 */ B branch_0804a2b4 \n\
jump_0804a286: \n\
/* 0804a286 */ LDR R0, [R3, 0x18] \n\
/* 0804a288 */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0804a28a */ LDR R0, =0x007effff \n\
/* 0804a28c */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804a28e */ BLE branch_0804a2ac \n\
/* 0804a290 */ MOVS R2, 0xFE @ Set R2 to 0xFE \n\
/* 0804a292 */ LSLS R2, R2, 0xF \n\
/* 0804a294 */ B branch_0804a2b4 \n\
\n\
.ltorg \n\
jump_0804a29c: \n\
/* 0804a29c */ LDR R0, [R3, 0x1C] \n\
/* 0804a29e */ B branch_0804a2aa \n\
jump_0804a2a0: \n\
/* 0804a2a0 */ LDR R0, [R3, 0x1C] \n\
/* 0804a2a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a2a4 */ BNE branch_0804a2aa \n\
/* 0804a2a6 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0804a2a8 */ LSLS R0, R0, 0xB \n\
 \n\
branch_0804a2aa: \n\
/* 0804a2aa */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
 \n\
branch_0804a2ac: \n\
/* 0804a2ac */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804a2ae */ BGT branch_0804a2b4 \n\
/* 0804a2b0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804a2b2 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_0804a2b4: \n\
/* 0804a2b4 */ LSLS R1, R2, 0x8 \n\
/* 0804a2b6 */ LDRB R0, [R4] \n\
/* 0804a2b8 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804a2ba */ STR R0, [R4] \n\
/* 0804a2bc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804a2be */ POP {R4, R5} \n\
/* 0804a2c0 */ POP {R1} \n\
/* 0804a2c2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
