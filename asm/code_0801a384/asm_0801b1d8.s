asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b1d8 \n\
/* 0801b1d8 */ PUSH {R4-R7, LR} \n\
/* 0801b1da */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801b1dc */ LDR R0, =D_030046a4 \n\
/* 0801b1de */ LDR R0, [R0] \n\
/* 0801b1e0 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801b1e2 */ LSLS R1, R1, 0x2 \n\
/* 0801b1e4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b1e6 */ LDR R0, [R0] \n\
/* 0801b1e8 */ BL func_0800b368 \n\
/* 0801b1ec */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b1ee */ BNE branch_0801b23a \n\
/* 0801b1f0 */ BL func_0801c8b8 \n\
/* 0801b1f4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b1f6 */ BEQ branch_0801b23a \n\
/* 0801b1f8 */ LDR R0, =D_03004afc \n\
/* 0801b1fa */ LDRH R2, [R0] \n\
/* 0801b1fc */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0801b1fe */ ANDS R4, R2 @ Set R4 to R4 & R2 \n\
/* 0801b200 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b202 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0801b204 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b206 */ BEQ branch_0801b20a \n\
/* 0801b208 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
 \n\
branch_0801b20a: \n\
/* 0801b20a */ LDR R0, =D_030053b8 \n\
/* 0801b20c */ LDRH R1, [R0] \n\
/* 0801b20e */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801b210 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b212 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b214 */ BEQ branch_0801b218 \n\
/* 0801b216 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
 \n\
branch_0801b218: \n\
/* 0801b218 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801b21a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b21c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b21e */ BEQ branch_0801b222 \n\
/* 0801b220 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_0801b222: \n\
/* 0801b222 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801b224 */ LSLS R0, R0, 0x2 \n\
/* 0801b226 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0801b228 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b22a */ BEQ branch_0801b22e \n\
/* 0801b22c */ MOVS R4, 0x5 @ Set R4 to 0x5 \n\
 \n\
branch_0801b22e: \n\
/* 0801b22e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801b230 */ LSLS R0, R0, 0x1 \n\
/* 0801b232 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0801b234 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b236 */ BEQ branch_0801b23a \n\
/* 0801b238 */ MOVS R4, 0x6 @ Set R4 to 0x6 \n\
 \n\
branch_0801b23a: \n\
/* 0801b23a */ SUBS R0, R4, 0x1 @ Set R0 to R4 - 0x1 \n\
/* 0801b23c */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0801b23e */ BLS branch_0801b242 \n\
/* 0801b240 */ B branch_0801b48c \n\
 \n\
branch_0801b242: \n\
/* 0801b242 */ LSLS R0, R0, 0x2 \n\
/* 0801b244 */ LDR R1, =jtbl_0801b25c \n\
/* 0801b246 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b248 */ LDR R0, [R0] \n\
/* 0801b24a */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0801b25c: \n\
.word jump_0801b274 \n\
.word jump_0801b35c \n\
.word jump_0801b374 \n\
.word jump_0801b324 \n\
.word jump_0801b38c \n\
.word jump_0801b3f4 \n\
\n\
jump_0801b274: \n\
/* 0801b274 */ LDR R0, =s_studio_bgm_seqData \n\
/* 0801b276 */ BL func_0800274c \n\
/* 0801b27a */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801b27c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b27e */ BL func_0800267c \n\
/* 0801b282 */ LDR R4, =D_030046a4 \n\
/* 0801b284 */ LDR R0, [R4] \n\
/* 0801b286 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801b288 */ LSLS R2, R2, 0x2 \n\
/* 0801b28a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b28c */ LDR R0, [R0] \n\
/* 0801b28e */ BL func_0800b118 \n\
/* 0801b292 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801b294 */ BL func_0801c6fc \n\
/* 0801b298 */ LDR R0, [R4] \n\
/* 0801b29a */ MOVS R5, 0xDC @ Set R5 to 0xDC \n\
/* 0801b29c */ LSLS R5, R5, 0x2 \n\
/* 0801b29e */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0801b2a0 */ LDR R0, [R0] \n\
/* 0801b2a2 */ BL func_0800b118 \n\
/* 0801b2a6 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0801b2a8 */ LDR R0, [R4] \n\
/* 0801b2aa */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0801b2ac */ LDR R0, [R0] \n\
/* 0801b2ae */ BL func_0800b0d4 \n\
/* 0801b2b2 */ LDR R0, =D_030046a8 \n\
/* 0801b2b4 */ LDR R0, [R0] \n\
/* 0801b2b6 */ LSLS R1, R7, 0x2 \n\
/* 0801b2b8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b2ba */ ADDS R0, 0xC5 @ Add 0xC5 to R0 \n\
/* 0801b2bc */ LDRB R0, [R0] \n\
/* 0801b2be */ LSLS R0, R0, 0x18 \n\
/* 0801b2c0 */ ASRS R0, R0, 0x18 \n\
/* 0801b2c2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b2c4 */ BGE branch_0801b2e0 \n\
/* 0801b2c6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801b2c8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801b2ca */ BL func_0801ba74 \n\
/* 0801b2ce */ B branch_0801b2ee \n\
\n\
.ltorg \n\
 \n\
branch_0801b2e0: \n\
/* 0801b2e0 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0801b2e2 */ BNE branch_0801b2e6 \n\
/* 0801b2e4 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_0801b2e6: \n\
/* 0801b2e6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801b2e8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801b2ea */ BL func_0801ba74 \n\
 \n\
branch_0801b2ee: \n\
/* 0801b2ee */ LDR R4, =D_030046a4 \n\
/* 0801b2f0 */ LDR R0, [R4] \n\
/* 0801b2f2 */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 0801b2f4 */ LSLS R3, R3, 0x2 \n\
/* 0801b2f6 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801b2f8 */ LDR R0, [R0] \n\
/* 0801b2fa */ BL func_0800b3e8 \n\
/* 0801b2fe */ LDR R0, [R4] \n\
/* 0801b300 */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801b302 */ LSLS R1, R1, 0x2 \n\
/* 0801b304 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b306 */ LDR R0, [R0] \n\
/* 0801b308 */ BL func_0800b3c8 \n\
/* 0801b30c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801b30e */ BL func_0801c6b8 \n\
/* 0801b312 */ LDR R0, [R4] \n\
/* 0801b314 */ MOVS R2, 0xD7 @ Set R2 to 0xD7 \n\
/* 0801b316 */ LSLS R2, R2, 0x2 \n\
/* 0801b318 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b31a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801b31c */ STRB R1, [R0] \n\
/* 0801b31e */ B branch_0801b48c \n\
\n\
.ltorg \n\
\n\
jump_0801b324: \n\
/* 0801b324 */ LDR R1, =s_menu_cancel3_seqData \n\
/* 0801b326 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b328 */ BL func_0800267c \n\
/* 0801b32c */ LDR R4, =D_030046a4 \n\
/* 0801b32e */ LDR R0, [R4] \n\
/* 0801b330 */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 0801b332 */ LSLS R3, R3, 0x2 \n\
/* 0801b334 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801b336 */ LDR R0, [R0] \n\
/* 0801b338 */ BL func_0800b3e8 \n\
/* 0801b33c */ LDR R0, =D_089d853c \n\
/* 0801b33e */ BL func_0801d968 \n\
/* 0801b342 */ LDR R0, [R4] \n\
/* 0801b344 */ MOVS R1, 0xD6 @ Set R1 to 0xD6 \n\
/* 0801b346 */ LSLS R1, R1, 0x2 \n\
/* 0801b348 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b34a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801b34c */ STR R1, [R0] \n\
/* 0801b34e */ B branch_0801b48c \n\
\n\
.ltorg \n\
\n\
jump_0801b35c: \n\
/* 0801b35c */ LDR R0, =D_030046a4 \n\
/* 0801b35e */ LDR R0, [R0] \n\
/* 0801b360 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801b362 */ LSLS R2, R2, 0x2 \n\
/* 0801b364 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b366 */ LDR R0, [R0] \n\
/* 0801b368 */ BL func_0800b140 \n\
/* 0801b36c */ B branch_0801b48c \n\
\n\
.ltorg \n\
\n\
jump_0801b374: \n\
/* 0801b374 */ LDR R0, =D_030046a4 \n\
/* 0801b376 */ LDR R0, [R0] \n\
/* 0801b378 */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 0801b37a */ LSLS R3, R3, 0x2 \n\
/* 0801b37c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801b37e */ LDR R0, [R0] \n\
/* 0801b380 */ BL func_0800b21c \n\
/* 0801b384 */ B branch_0801b48c \n\
\n\
.ltorg \n\
\n\
jump_0801b38c: \n\
/* 0801b38c */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801b38e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b390 */ BL func_0800267c \n\
/* 0801b394 */ LDR R5, =D_030046a4 \n\
/* 0801b396 */ LDR R0, [R5] \n\
/* 0801b398 */ MOVS R4, 0xD8 @ Set R4 to 0xD8 \n\
/* 0801b39a */ LSLS R4, R4, 0x2 \n\
/* 0801b39c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801b39e */ LDR R0, [R0] \n\
/* 0801b3a0 */ BL func_0800b118 \n\
/* 0801b3a4 */ LDR R1, [R5] \n\
/* 0801b3a6 */ LDR R3, =0x48e \n\
/* 0801b3a8 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 0801b3aa */ STRH R0, [R2] \n\
/* 0801b3ac */ ADDS R4, R1, R4 @ Set R4 to R1 + R4 \n\
/* 0801b3ae */ LDR R0, [R4] \n\
/* 0801b3b0 */ LDR R4, =0x48c \n\
/* 0801b3b2 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0801b3b4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801b3b6 */ LDRSH R1, [R1, R3] \n\
/* 0801b3b8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801b3ba */ LDRSH R2, [R2, R3] \n\
/* 0801b3bc */ BL func_0800b408 \n\
/* 0801b3c0 */ LDR R0, =D_03005380 \n\
/* 0801b3c2 */ LDR R0, [R0] \n\
/* 0801b3c4 */ LDR R1, [R5] \n\
/* 0801b3c6 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0801b3c8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b3ca */ LDRSH R1, [R1, R2] \n\
/* 0801b3cc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801b3ce */ BL func_0804d770 \n\
/* 0801b3d2 */ LDR R0, [R5] \n\
/* 0801b3d4 */ MOVS R3, 0xD7 @ Set R3 to 0xD7 \n\
/* 0801b3d6 */ LSLS R3, R3, 0x2 \n\
/* 0801b3d8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801b3da */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801b3dc */ STRB R1, [R0] \n\
/* 0801b3de */ B branch_0801b48c \n\
\n\
.ltorg \n\
\n\
jump_0801b3f4: \n\
/* 0801b3f4 */ LDR R0, =D_030046a4 \n\
/* 0801b3f6 */ LDR R0, [R0] \n\
/* 0801b3f8 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801b3fa */ LSLS R1, R1, 0x2 \n\
/* 0801b3fc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b3fe */ LDR R0, [R0] \n\
/* 0801b400 */ BL func_0800b118 \n\
/* 0801b404 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801b406 */ LDR R0, =D_030046a8 \n\
/* 0801b408 */ LDR R1, [R0] \n\
/* 0801b40a */ LSLS R0, R7, 0x2 \n\
/* 0801b40c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801b40e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801b410 */ ADDS R0, 0xC4 @ Add 0xC4 to R0 \n\
/* 0801b412 */ LDRB R0, [R0] \n\
/* 0801b414 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b416 */ BNE branch_0801b438 \n\
/* 0801b418 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801b41a */ ADDS R0, 0xC7 @ Add 0xC7 to R0 \n\
/* 0801b41c */ LDRB R1, [R0] \n\
/* 0801b41e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801b420 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b422 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b424 */ BNE branch_0801b438 \n\
/* 0801b426 */ LDR R1, =s_menu_error_seqData \n\
/* 0801b428 */ B branch_0801b46e \n\
\n\
.ltorg \n\
 \n\
branch_0801b438: \n\
/* 0801b438 */ LDR R5, =D_030046a8 \n\
/* 0801b43a */ LDR R1, [R5] \n\
/* 0801b43c */ LSLS R4, R7, 0x2 \n\
/* 0801b43e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0801b440 */ ADDS R1, 0xC7 @ Add 0xC7 to R1 \n\
/* 0801b442 */ LDRB R0, [R1] \n\
/* 0801b444 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0801b446 */ EORS R0, R2 @ Set R0 to R0 ^ R2 \n\
/* 0801b448 */ STRB R0, [R1] \n\
/* 0801b44a */ LDR R0, =D_030046a4 \n\
/* 0801b44c */ LDR R0, [R0] \n\
/* 0801b44e */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801b450 */ LSLS R2, R2, 0x2 \n\
/* 0801b452 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b454 */ LDR R0, [R0] \n\
/* 0801b456 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0801b458 */ BL func_0800b454 \n\
/* 0801b45c */ LDR R0, [R5] \n\
/* 0801b45e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801b460 */ ADDS R0, 0xC7 @ Add 0xC7 to R0 \n\
/* 0801b462 */ LDRB R1, [R0] \n\
/* 0801b464 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b466 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b468 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b46a */ BEQ branch_0801b484 \n\
/* 0801b46c */ LDR R1, =s_menu_cancel3_seqData \n\
 \n\
branch_0801b46e: \n\
/* 0801b46e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b470 */ BL func_0800267c \n\
/* 0801b474 */ B branch_0801b48c \n\
\n\
.ltorg \n\
 \n\
branch_0801b484: \n\
/* 0801b484 */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801b486 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b488 */ BL func_0800267c \n\
 \n\
branch_0801b48c: \n\
/* 0801b48c */ POP {R4-R7} \n\
/* 0801b48e */ POP {R0} \n\
/* 0801b490 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
