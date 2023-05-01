asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start sick_beats_engine_start \n\
/* 080433e8 */ PUSH {R4-R7, LR} \n\
/* 080433ea */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080433ec */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080433ee */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080433f0 */ PUSH {R5-R7} \n\
/* 080433f2 */ SUB SP, 0x14 \n\
/* 080433f4 */ LDR R4, =gCurrentEngineData \n\
/* 080433f6 */ LDR R1, [R4] \n\
/* 080433f8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080433fa */ STRB R0, [R1] \n\
/* 080433fc */ BL sick_beats_init_gfx1 \n\
/* 08043400 */ BL scene_show_obj_layer \n\
/* 08043404 */ STR R5, [SP] \n\
/* 08043406 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08043408 */ STR R0, [SP, 0x4] \n\
/* 0804340a */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0804340c */ STR R6, [SP, 0x8] \n\
/* 0804340e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08043410 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08043412 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043414 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08043416 */ BL scene_set_bg_layer_display \n\
/* 0804341a */ STR R5, [SP] \n\
/* 0804341c */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0804341e */ STR R0, [SP, 0x4] \n\
/* 08043420 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08043422 */ STR R0, [SP, 0x8] \n\
/* 08043424 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08043426 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043428 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804342a */ BL scene_set_bg_layer_display \n\
/* 0804342e */ BL func_0804317c \n\
/* 08043432 */ BL func_08042f6c \n\
/* 08043436 */ BL func_08042d74 \n\
/* 0804343a */ LDR R7, =D_03005380 \n\
/* 0804343c */ LDR R0, [R7] \n\
/* 0804343e */ LDR R1, =anim_virus_doctor_beat \n\
/* 08043440 */ MOVS R2, 0x9B @ Set R2 to 0x9B \n\
/* 08043442 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08043444 */ STR R2, [SP] \n\
/* 08043446 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08043448 */ LSLS R2, R2, 0x4 \n\
/* 0804344a */ STR R2, [SP, 0x4] \n\
/* 0804344c */ STR R6, [SP, 0x8] \n\
/* 0804344e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08043450 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08043452 */ STR R3, [SP, 0xC] \n\
/* 08043454 */ STR R5, [SP, 0x10] \n\
/* 08043456 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043458 */ MOVS R3, 0x11 @ Set R3 to 0x11 \n\
/* 0804345a */ BL func_0804d160 \n\
/* 0804345e */ LDR R1, [R4] \n\
/* 08043460 */ MOVS R2, 0xFB @ Set R2 to 0xFB \n\
/* 08043462 */ LSLS R2, R2, 0x1 \n\
/* 08043464 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08043466 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08043468 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804346a */ STRH R0, [R1] \n\
/* 0804346c */ LDR R0, [R7] \n\
/* 0804346e */ LDR R1, =anim_sick_beats_radio \n\
/* 08043470 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08043472 */ STR R2, [SP] \n\
/* 08043474 */ MOVS R2, 0x81 @ Set R2 to 0x81 \n\
/* 08043476 */ LSLS R2, R2, 0x4 \n\
/* 08043478 */ STR R2, [SP, 0x4] \n\
/* 0804347a */ STR R6, [SP, 0x8] \n\
/* 0804347c */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804347e */ STR R3, [SP, 0xC] \n\
/* 08043480 */ STR R5, [SP, 0x10] \n\
/* 08043482 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043484 */ MOVS R3, 0x11 @ Set R3 to 0x11 \n\
/* 08043486 */ BL func_0804d160 \n\
/* 0804348a */ LDR R2, [R4] \n\
/* 0804348c */ MOVS R3, 0xFC @ Set R3 to 0xFC \n\
/* 0804348e */ LSLS R3, R3, 0x1 \n\
/* 08043490 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08043492 */ STRH R0, [R1] \n\
/* 08043494 */ MOVS R1, 0xF8 @ Set R1 to 0xF8 \n\
/* 08043496 */ LSLS R1, R1, 0x1 \n\
/* 08043498 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0804349a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804349c */ STRB R2, [R0] \n\
/* 0804349e */ LDR R0, [R4] \n\
/* 080434a0 */ SUBS R3, 0x7 @ Subtract 0x7 from R3 \n\
/* 080434a2 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 080434a4 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080434a6 */ STRB R0, [R1] \n\
/* 080434a8 */ LDR R0, [R4] \n\
/* 080434aa */ MOVS R1, 0xF9 @ Set R1 to 0xF9 \n\
/* 080434ac */ LSLS R1, R1, 0x1 \n\
/* 080434ae */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080434b0 */ STRB R2, [R0] \n\
/* 080434b2 */ LDR R0, [R4] \n\
/* 080434b4 */ MOVS R2, 0xFA @ Set R2 to 0xFA \n\
/* 080434b6 */ LSLS R2, R2, 0x1 \n\
/* 080434b8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080434ba */ STRH R5, [R0] \n\
/* 080434bc */ BL func_08042b88 \n\
/* 080434c0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080434c2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080434c4 */ BL func_08042cec \n\
/* 080434c8 */ LDR R0, =D_030046a8 \n\
/* 080434ca */ LDR R0, [R0] \n\
/* 080434cc */ MOVS R3, 0xAB @ Set R3 to 0xAB \n\
/* 080434ce */ LSLS R3, R3, 0x2 \n\
/* 080434d0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080434d2 */ LDR R1, [R0] \n\
/* 080434d4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080434d6 */ BL func_08042cec \n\
/* 080434da */ BL func_08042864 \n\
/* 080434de */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080434e0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080434e2 */ BL gameplay_set_input_buttons \n\
/* 080434e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080434e8 */ BL gameplay_prevent_dpad_overlap \n\
/* 080434ec */ LDR R0, [R4] \n\
/* 080434ee */ LDR R1, =0x202 \n\
/* 080434f0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080434f2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080434f4 */ STRB R2, [R0] \n\
/* 080434f6 */ LDR R1, [R4] \n\
/* 080434f8 */ MOVS R3, 0xFE @ Set R3 to 0xFE \n\
/* 080434fa */ LSLS R3, R3, 0x1 \n\
/* 080434fc */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080434fe */ STR R5, [R0] \n\
/* 08043500 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08043502 */ LSLS R2, R2, 0x2 \n\
/* 08043504 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08043506 */ STRH R5, [R0] \n\
/* 08043508 */ ADD SP, 0x14 \n\
/* 0804350a */ POP {R3-R5} \n\
/* 0804350c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804350e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08043510 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08043512 */ POP {R4-R7} \n\
/* 08043514 */ POP {R0} \n\
/* 08043516 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
