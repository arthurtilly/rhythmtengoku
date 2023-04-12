asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c2ec \n\
/* 0801c2ec */ PUSH {R4-R7, LR} \n\
/* 0801c2ee */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801c2f0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801c2f2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801c2f4 */ PUSH {R5-R7} \n\
/* 0801c2f6 */ SUB SP, 0x14 \n\
/* 0801c2f8 */ BL func_0800061c \n\
/* 0801c2fc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801c2fe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c300 */ BL func_08007324 \n\
/* 0801c304 */ BL func_080073f0 \n\
/* 0801c308 */ BL func_0801c290 \n\
/* 0801c30c */ LDR R4, =D_030046a4 \n\
/* 0801c30e */ LDR R0, [R4] \n\
/* 0801c310 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0801c312 */ BL init_drumtech \n\
/* 0801c316 */ LDR R0, =D_03001545 \n\
/* 0801c318 */ LDRB R1, [R0] \n\
/* 0801c31a */ LDR R0, =D_03001546 \n\
/* 0801c31c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c31e */ LDRSB R2, [R0, R2] \n\
/* 0801c320 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c322 */ BL func_0801b138 \n\
/* 0801c326 */ LDR R0, =D_03001547 \n\
/* 0801c328 */ LDRB R1, [R0] \n\
/* 0801c32a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c32c */ BL func_0801ba74 \n\
/* 0801c330 */ LDR R0, =D_03001548 \n\
/* 0801c332 */ LDRB R1, [R0] \n\
/* 0801c334 */ LDR R0, =D_03001549 \n\
/* 0801c336 */ LDRB R2, [R0] \n\
/* 0801c338 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c33a */ BL func_0801b710 \n\
/* 0801c33e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801c340 */ BEQ branch_0801c39c \n\
/* 0801c342 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0801c344 */ BNE branch_0801c39c \n\
/* 0801c346 */ LDR R0, [R4] \n\
/* 0801c348 */ MOVS R1, 0xD7 @ Set R1 to 0xD7 \n\
/* 0801c34a */ LSLS R1, R1, 0x2 \n\
/* 0801c34c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c34e */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801c350 */ STRB R1, [R0] \n\
/* 0801c352 */ LDR R0, [R4] \n\
/* 0801c354 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801c356 */ LSLS R2, R2, 0x2 \n\
/* 0801c358 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c35a */ LDR R0, [R0] \n\
/* 0801c35c */ BL func_0800b3e8 \n\
/* 0801c360 */ LDR R0, [R4] \n\
/* 0801c362 */ MOVS R3, 0xDC @ Set R3 to 0xDC \n\
/* 0801c364 */ LSLS R3, R3, 0x2 \n\
/* 0801c366 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801c368 */ LDR R0, [R0] \n\
/* 0801c36a */ BL func_0800b3e8 \n\
/* 0801c36e */ LDR R0, [R4] \n\
/* 0801c370 */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 0801c372 */ LSLS R1, R1, 0x2 \n\
/* 0801c374 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c376 */ LDR R0, [R0] \n\
/* 0801c378 */ BL func_0800b3c8 \n\
/* 0801c37c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801c37e */ BL func_0801c674 \n\
/* 0801c382 */ B branch_0801c3da \n\
\n\
.ltorg \n\
 \n\
branch_0801c39c: \n\
/* 0801c39c */ LDR R4, =D_030046a4 \n\
/* 0801c39e */ LDR R0, [R4] \n\
/* 0801c3a0 */ MOVS R2, 0xD7 @ Set R2 to 0xD7 \n\
/* 0801c3a2 */ LSLS R2, R2, 0x2 \n\
/* 0801c3a4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c3a6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801c3a8 */ STRB R1, [R0] \n\
/* 0801c3aa */ LDR R0, [R4] \n\
/* 0801c3ac */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 0801c3ae */ LSLS R3, R3, 0x2 \n\
/* 0801c3b0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801c3b2 */ LDR R0, [R0] \n\
/* 0801c3b4 */ BL func_0800b3c8 \n\
/* 0801c3b8 */ LDR R0, [R4] \n\
/* 0801c3ba */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801c3bc */ LSLS R1, R1, 0x2 \n\
/* 0801c3be */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c3c0 */ LDR R0, [R0] \n\
/* 0801c3c2 */ BL func_0800b3e8 \n\
/* 0801c3c6 */ LDR R0, [R4] \n\
/* 0801c3c8 */ MOVS R2, 0xDA @ Set R2 to 0xDA \n\
/* 0801c3ca */ LSLS R2, R2, 0x2 \n\
/* 0801c3cc */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801c3ce */ LDR R0, [R0] \n\
/* 0801c3d0 */ BL func_0800b3e8 \n\
/* 0801c3d4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c3d6 */ BL func_0801c674 \n\
 \n\
branch_0801c3da: \n\
/* 0801c3da */ LDR R3, =D_030046a4 \n\
/* 0801c3dc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801c3de */ LDR R1, [R3] \n\
/* 0801c3e0 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 0801c3e2 */ LSLS R2, R2, 0x2 \n\
/* 0801c3e4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801c3e6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801c3e8 */ STR R4, [R0] \n\
/* 0801c3ea */ MOVS R3, 0xE1 @ Set R3 to 0xE1 \n\
/* 0801c3ec */ LSLS R3, R3, 0x2 \n\
/* 0801c3ee */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0801c3f0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801c3f2 */ STRH R4, [R0] \n\
/* 0801c3f4 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 0801c3f6 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801c3f8 */ STR R4, [R0] \n\
/* 0801c3fa */ LDR R6, =D_03005380 \n\
/* 0801c3fc */ LDR R0, [R6] \n\
/* 0801c3fe */ LDR R1, =anim_studio_item_move_highlight \n\
/* 0801c400 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0801c402 */ STR R2, [SP] \n\
/* 0801c404 */ LDR R2, =0x8864 \n\
/* 0801c406 */ STR R2, [SP, 0x4] \n\
/* 0801c408 */ STR R4, [SP, 0x8] \n\
/* 0801c40a */ STR R4, [SP, 0xC] \n\
/* 0801c40c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801c40e */ LSLS R2, R2, 0x8 \n\
/* 0801c410 */ STR R2, [SP, 0x10] \n\
/* 0801c412 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c414 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0801c416 */ BL func_0804d160 \n\
/* 0801c41a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0801c41c */ LDR R1, [R3] \n\
/* 0801c41e */ LDR R3, =0x48c \n\
/* 0801c420 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 0801c422 */ STRH R0, [R2] \n\
/* 0801c424 */ MOVS R0, 0x93 @ Set R0 to 0x93 \n\
/* 0801c426 */ LSLS R0, R0, 0x3 \n\
/* 0801c428 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801c42a */ STRB R5, [R1] \n\
/* 0801c42c */ BL func_0801aa04 \n\
/* 0801c430 */ LDR R0, =s_studio_bgm_seqData \n\
/* 0801c432 */ BL play_sound \n\
/* 0801c436 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801c438 */ LDR R1, [R2] \n\
/* 0801c43a */ MOVS R3, 0x97 @ Set R3 to 0x97 \n\
/* 0801c43c */ LSLS R3, R3, 0x3 \n\
/* 0801c43e */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0801c440 */ STR R0, [R1] \n\
/* 0801c442 */ LDR R0, [R6] \n\
/* 0801c444 */ LDR R1, =anim_studio_graphs_l \n\
/* 0801c446 */ MOVS R2, 0x42 @ Set R2 to 0x42 \n\
/* 0801c448 */ STR R2, [SP] \n\
/* 0801c44a */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0801c44c */ LSLS R2, R2, 0x7 \n\
/* 0801c44e */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0801c450 */ STR R2, [SP, 0x4] \n\
/* 0801c452 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801c454 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0801c456 */ STR R3, [SP, 0x8] \n\
/* 0801c458 */ STR R4, [SP, 0xC] \n\
/* 0801c45a */ STR R4, [SP, 0x10] \n\
/* 0801c45c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c45e */ MOVS R3, 0x4D @ Set R3 to 0x4D \n\
/* 0801c460 */ BL func_0804d160 \n\
/* 0801c464 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801c466 */ LDR R0, [R6] \n\
/* 0801c468 */ LSLS R1, R1, 0x10 \n\
/* 0801c46a */ ASRS R1, R1, 0x10 \n\
/* 0801c46c */ LDR R5, =(D_03004b10 + 0x10) \n\
/* 0801c46e */ ADDS R7, R5, 0x2 @ Set R7 to R5 + 0x2 \n\
/* 0801c470 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0801c472 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0801c474 */ BL func_0804db44 \n\
/* 0801c478 */ LDR R0, [R6] \n\
/* 0801c47a */ LDR R1, =anim_studio_graph_r \n\
/* 0801c47c */ MOVS R3, 0xA0 @ Set R3 to 0xA0 \n\
/* 0801c47e */ LSLS R3, R3, 0x1 \n\
/* 0801c480 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 0801c482 */ STR R2, [SP] \n\
/* 0801c484 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0801c486 */ STR R2, [SP, 0x4] \n\
/* 0801c488 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801c48a */ STR R2, [SP, 0x8] \n\
/* 0801c48c */ STR R4, [SP, 0xC] \n\
/* 0801c48e */ STR R4, [SP, 0x10] \n\
/* 0801c490 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c492 */ BL func_0804d160 \n\
/* 0801c496 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801c498 */ LDR R0, [R6] \n\
/* 0801c49a */ LSLS R1, R1, 0x10 \n\
/* 0801c49c */ ASRS R1, R1, 0x10 \n\
/* 0801c49e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0801c4a0 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0801c4a2 */ BL func_0804db44 \n\
/* 0801c4a6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0801c4a8 */ LDR R0, [R3] \n\
/* 0801c4aa */ MOVS R1, 0xD6 @ Set R1 to 0xD6 \n\
/* 0801c4ac */ LSLS R1, R1, 0x2 \n\
/* 0801c4ae */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c4b0 */ STR R4, [R0] \n\
/* 0801c4b2 */ BL get_current_mem_id \n\
/* 0801c4b6 */ LSLS R0, R0, 0x10 \n\
/* 0801c4b8 */ LSRS R0, R0, 0x10 \n\
/* 0801c4ba */ MOVS R1, 0xE0 @ Set R1 to 0xE0 \n\
/* 0801c4bc */ LSLS R1, R1, 0x6 \n\
/* 0801c4be */ BL mem_heap_alloc_id \n\
/* 0801c4c2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801c4c4 */ LDR R1, [R2] \n\
/* 0801c4c6 */ LDR R3, =0x494 \n\
/* 0801c4c8 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0801c4ca */ STR R0, [R1] \n\
/* 0801c4cc */ ADD SP, 0x14 \n\
/* 0801c4ce */ POP {R3-R5} \n\
/* 0801c4d0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801c4d2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801c4d4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801c4d6 */ POP {R4-R7} \n\
/* 0801c4d8 */ POP {R0} \n\
/* 0801c4da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
