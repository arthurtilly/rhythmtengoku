asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022268 \n\
/* 08022268 */ PUSH {R4-R7, LR} \n\
/* 0802226a */ SUB SP, 0xC \n\
/* 0802226c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802226e */ LDRB R0, [R6] \n\
/* 08022270 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08022272 */ BNE branch_08022276 \n\
/* 08022274 */ B branch_08022398 \n\
 \n\
branch_08022276: \n\
/* 08022276 */ LDRH R0, [R6, 0x4] \n\
/* 08022278 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802227a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802227c */ STRH R0, [R6, 0x4] \n\
/* 0802227e */ LSLS R0, R0, 0x10 \n\
/* 08022280 */ LSRS R0, R0, 0x10 \n\
/* 08022282 */ LDRH R1, [R6, 0x6] \n\
/* 08022284 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08022286 */ BCS branch_0802228a \n\
/* 08022288 */ B branch_08022398 \n\
 \n\
branch_0802228a: \n\
/* 0802228a */ LDRB R5, [R6] \n\
/* 0802228c */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0802228e */ BEQ branch_08022318 \n\
/* 08022290 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 08022292 */ BGT branch_0802229a \n\
/* 08022294 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 08022296 */ BEQ branch_080222a0 \n\
/* 08022298 */ B branch_08022398 \n\
 \n\
branch_0802229a: \n\
/* 0802229a */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0802229c */ BEQ branch_080222e8 \n\
/* 0802229e */ B branch_08022398 \n\
 \n\
branch_080222a0: \n\
/* 080222a0 */ LDR R4, =gSpriteHandler \n\
/* 080222a2 */ LDR R0, [R4] \n\
/* 080222a4 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080222a6 */ LDRSH R1, [R6, R2] \n\
/* 080222a8 */ LDR R2, =anim_mannequin_crane \n\
/* 080222aa */ STR R5, [SP] \n\
/* 080222ac */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080222ae */ STR R3, [SP, 0x4] \n\
/* 080222b0 */ STR R7, [SP, 0x8] \n\
/* 080222b2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080222b4 */ BL sprite_set_anim \n\
/* 080222b8 */ LDR R0, [R4] \n\
/* 080222ba */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080222bc */ LDRSH R1, [R6, R2] \n\
/* 080222be */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080222c0 */ LSLS R2, R2, 0x1 \n\
/* 080222c2 */ BL sprite_set_anim_speed \n\
/* 080222c6 */ STRH R7, [R6, 0x4] \n\
/* 080222c8 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 080222ca */ BL ticks_to_frames \n\
/* 080222ce */ STRH R0, [R6, 0x6] \n\
/* 080222d0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080222d2 */ STRB R0, [R6] \n\
/* 080222d4 */ LDR R0, =s_poly_shototu_seqData \n\
/* 080222d6 */ BL play_sound \n\
/* 080222da */ B branch_08022398 \n\
\n\
.ltorg \n\
 \n\
branch_080222e8: \n\
/* 080222e8 */ LDR R0, =gSpriteHandler \n\
/* 080222ea */ LDR R0, [R0] \n\
/* 080222ec */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080222ee */ LDRSH R1, [R6, R2] \n\
/* 080222f0 */ LDR R2, =anim_mannequin_crane_dash_effect \n\
/* 080222f2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080222f4 */ STR R3, [SP] \n\
/* 080222f6 */ STR R7, [SP, 0x4] \n\
/* 080222f8 */ STR R5, [SP, 0x8] \n\
/* 080222fa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080222fc */ BL sprite_set_anim \n\
/* 08022300 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022302 */ STRB R0, [R6] \n\
/* 08022304 */ LDR R0, =s_virus_fork_seqData \n\
/* 08022306 */ BL play_sound \n\
/* 0802230a */ B branch_08022398 \n\
\n\
.ltorg \n\
 \n\
branch_08022318: \n\
/* 08022318 */ LDR R0, =gCurrentEngineData \n\
/* 0802231a */ LDR R0, [R0] \n\
/* 0802231c */ LDRB R3, [R0] \n\
/* 0802231e */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08022320 */ BNE branch_08022354 \n\
/* 08022322 */ LDR R0, =gSpriteHandler \n\
/* 08022324 */ LDR R0, [R0] \n\
/* 08022326 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08022328 */ LDRSH R1, [R6, R2] \n\
/* 0802232a */ LDR R2, =anim_mannequin_ng_effect \n\
/* 0802232c */ STR R3, [SP] \n\
/* 0802232e */ STR R7, [SP, 0x4] \n\
/* 08022330 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 08022332 */ STR R3, [SP, 0x8] \n\
/* 08022334 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08022336 */ BL sprite_set_anim \n\
/* 0802233a */ LDR R0, =s_ghost_walk_seqData \n\
/* 0802233c */ BL play_sound \n\
/* 08022340 */ B branch_08022394 \n\
\n\
.ltorg \n\
 \n\
branch_08022354: \n\
/* 08022354 */ LDR R5, =gSpriteHandler \n\
/* 08022356 */ LDR R0, [R5] \n\
/* 08022358 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802235a */ LDRSH R1, [R6, R2] \n\
/* 0802235c */ BL sprite_clone \n\
/* 08022360 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08022362 */ LDR R0, [R5] \n\
/* 08022364 */ LSLS R4, R4, 0x10 \n\
/* 08022366 */ ASRS R4, R4, 0x10 \n\
/* 08022368 */ LDR R2, =0x000048be \n\
/* 0802236a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802236c */ BL sprite_set_z \n\
/* 08022370 */ LDR R0, [R5] \n\
/* 08022372 */ LDR R2, =anim_mannequin_ng_effect \n\
/* 08022374 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08022376 */ STR R1, [SP] \n\
/* 08022378 */ STR R7, [SP, 0x4] \n\
/* 0802237a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0802237c */ STR R1, [SP, 0x8] \n\
/* 0802237e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08022380 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08022382 */ BL sprite_set_anim \n\
/* 08022386 */ LDR R0, [R5] \n\
/* 08022388 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802238a */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802238c */ BL sprite_set_anim_speed \n\
/* 08022390 */ BL func_0802310c \n\
 \n\
branch_08022394: \n\
/* 08022394 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022396 */ STRB R0, [R6] \n\
 \n\
branch_08022398: \n\
/* 08022398 */ ADD SP, 0xC \n\
/* 0802239a */ POP {R4-R7} \n\
/* 0802239c */ POP {R0} \n\
/* 0802239e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
