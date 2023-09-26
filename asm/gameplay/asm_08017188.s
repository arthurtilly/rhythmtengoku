asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start gameplay_set_current_engine \n\
/* 08017188 */ PUSH {R4-R7, LR} \n\
/* 0801718a */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0801718c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801718e */ PUSH {R6, R7} \n\
/* 08017190 */ SUB SP, 0x4 \n\
/* 08017192 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08017194 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08017196 */ LDR R4, =gCurrentSceneData \n\
/* 08017198 */ LDR R0, [R4] \n\
/* 0801719a */ LDR R0, [R0, 0x10] \n\
/* 0801719c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801719e */ BEQ branch_080171fe \n\
/* 080171a0 */ BL gameplay_reset_cues \n\
/* 080171a4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080171a6 */ BL gameplay_enable_cue_spawning \n\
/* 080171aa */ LDR R0, [R4] \n\
/* 080171ac */ LDR R0, [R0, 0x10] \n\
/* 080171ae */ LDR R1, [R0, 0xC] \n\
/* 080171b0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080171b2 */ BEQ branch_080171b8 \n\
/* 080171b4 */ BL _call_via_r1 \n\
 \n\
branch_080171b8: \n\
/* 080171b8 */ LDR R0, [R4] \n\
/* 080171ba */ LDR R0, [R0, 0x14] \n\
/* 080171bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080171be */ BEQ branch_080171c4 \n\
/* 080171c0 */ BL mem_heap_dealloc \n\
 \n\
branch_080171c4: \n\
/* 080171c4 */ LDR R0, =D_03005380 \n\
/* 080171c6 */ LDR R4, [R0] \n\
/* 080171c8 */ BL get_current_mem_id \n\
/* 080171cc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080171ce */ LSLS R1, R1, 0x10 \n\
/* 080171d0 */ LSRS R1, R1, 0x10 \n\
/* 080171d2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080171d4 */ BL func_0804e0c4 \n\
/* 080171d8 */ BL get_current_mem_id \n\
/* 080171dc */ BL func_0800222c \n\
/* 080171e0 */ BL get_current_mem_id \n\
/* 080171e4 */ LSLS R0, R0, 0x10 \n\
/* 080171e6 */ LSRS R0, R0, 0x10 \n\
/* 080171e8 */ BL task_pool_force_cancel_id \n\
/* 080171ec */ BL get_current_mem_id \n\
/* 080171f0 */ LSLS R0, R0, 0x10 \n\
/* 080171f2 */ LSRS R0, R0, 0x10 \n\
/* 080171f4 */ BL mem_heap_dealloc_with_id \n\
/* 080171f8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080171fa */ BL gameplay_set_text_printer \n\
 \n\
branch_080171fe: \n\
/* 080171fe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08017200 */ BL scene_set_video_mode \n\
/* 08017204 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08017206 */ BL scene_hide_bg_layer \n\
/* 0801720a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801720c */ BL scene_hide_bg_layer \n\
/* 08017210 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08017212 */ BL scene_hide_bg_layer \n\
/* 08017216 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08017218 */ BL scene_hide_bg_layer \n\
/* 0801721c */ BL func_08004058 \n\
/* 08017220 */ LDR R0, =gameplay_clear_palette_buffer \n\
/* 08017222 */ BL func_08007344 \n\
/* 08017226 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08017228 */ BL gameplay_prevent_dpad_overlap \n\
/* 0801722c */ LDR R4, =gCurrentSceneData \n\
/* 0801722e */ LDR R2, [R4] \n\
/* 08017230 */ LDR R0, =0x4ae \n\
/* 08017232 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 08017234 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08017236 */ STRH R0, [R1] \n\
/* 08017238 */ STR R6, [R2, 0x10] \n\
/* 0801723a */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0801723c */ BEQ branch_08017316 \n\
/* 0801723e */ LDR R0, [R6] \n\
/* 08017240 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017242 */ BEQ branch_08017270 \n\
/* 08017244 */ BL mem_heap_alloc \n\
/* 08017248 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801724a */ LDR R0, [R4] \n\
/* 0801724c */ STR R1, [R0, 0x14] \n\
/* 0801724e */ LDR R2, [R6] \n\
/* 08017250 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08017252 */ LSLS R0, R0, 0x2 \n\
/* 08017254 */ STR R0, [SP] \n\
/* 08017256 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08017258 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801725a */ BL dma3_fill \n\
/* 0801725e */ B branch_08017272 \n\
\n\
.ltorg \n\
 \n\
branch_08017270: \n\
/* 08017270 */ STR R0, [R2, 0x14] \n\
 \n\
branch_08017272: \n\
/* 08017272 */ LDR R1, =gCurrentEngineData \n\
/* 08017274 */ LDR R2, =gCurrentSceneData \n\
/* 08017276 */ LDR R0, [R2] \n\
/* 08017278 */ LDR R0, [R0, 0x14] \n\
/* 0801727a */ STR R0, [R1] \n\
/* 0801727c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801727e */ LDR R5, [R6, 0x10] \n\
/* 08017280 */ LDR R1, [R6, 0x14] \n\
/* 08017282 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08017284 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08017286: \n\
/* 08017286 */ LDR R0, [R2] \n\
/* 08017288 */ LSLS R1, R3, 0x2 \n\
/* 0801728a */ ADDS R0, 0x1C @ Add 0x1C to R0 \n\
/* 0801728c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801728e */ STR R4, [R0] \n\
/* 08017290 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08017292 */ CMP R3, 0xB @ Compare R3 and 0xB \n\
/* 08017294 */ BLS branch_08017286 \n\
/* 08017296 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08017298 */ LDR R0, [R5] \n\
/* 0801729a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801729c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0801729e */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080172a0 */ BEQ branch_080172c6 \n\
/* 080172a2 */ LDR R0, =gCurrentSceneData \n\
/* 080172a4 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 080172a6 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 080172a8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080172aa */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
 \n\
branch_080172ac: \n\
/* 080172ac */ MOV R1, R12 @ Set R1 to R12 \n\
/* 080172ae */ LDR R0, [R1] \n\
/* 080172b0 */ ADDS R0, 0x1C @ Add 0x1C to R0 \n\
/* 080172b2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080172b4 */ LDMIA R2!, {R1} \n\
/* 080172b6 */ STR R1, [R0] \n\
/* 080172b8 */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 080172ba */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080172bc */ CMP R3, 0xB @ Compare R3 and 0xB \n\
/* 080172be */ BHI branch_080172c6 \n\
/* 080172c0 */ LDR R0, [R2] \n\
/* 080172c2 */ CMP R0, R7 @ Check R0 - R7 \n\
/* 080172c4 */ BNE branch_080172ac \n\
 \n\
branch_080172c6: \n\
/* 080172c6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080172c8 */ LDR R4, =gCurrentSceneData \n\
/* 080172ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_080172cc: \n\
/* 080172cc */ LDR R0, [R4] \n\
/* 080172ce */ LSLS R1, R3, 0x2 \n\
/* 080172d0 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 080172d2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080172d4 */ STR R2, [R0] \n\
/* 080172d6 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080172d8 */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 080172da */ BLS branch_080172cc \n\
/* 080172dc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080172de */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080172e0 */ LDR R0, [R1] \n\
/* 080172e2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080172e4 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080172e6 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080172e8 */ BEQ branch_0801730a \n\
/* 080172ea */ LDR R7, =gCurrentSceneData \n\
/* 080172ec */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080172ee */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080172f0 */ MOV R2, R8 @ Set R2 to R8 \n\
 \n\
branch_080172f2: \n\
/* 080172f2 */ LDR R0, [R7] \n\
/* 080172f4 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 080172f6 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080172f8 */ LDMIA R2!, {R1} \n\
/* 080172fa */ STR R1, [R0] \n\
/* 080172fc */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 080172fe */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08017300 */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 08017302 */ BHI branch_0801730a \n\
/* 08017304 */ LDR R0, [R2] \n\
/* 08017306 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08017308 */ BNE branch_080172f2 \n\
 \n\
branch_0801730a: \n\
/* 0801730a */ LDR R1, [R6, 0x4] \n\
/* 0801730c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801730e */ BEQ branch_08017316 \n\
/* 08017310 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08017312 */ BL _call_via_r1 \n\
 \n\
branch_08017316: \n\
/* 08017316 */ ADD SP, 0x4 \n\
/* 08017318 */ POP {R3, R4} \n\
/* 0801731a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801731c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801731e */ POP {R4-R7} \n\
/* 08017320 */ POP {R0} \n\
/* 08017322 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
