asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_toys_engine_start \n\
/* 08044530 */ PUSH {R4-R7, LR} \n\
/* 08044532 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08044534 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08044536 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08044538 */ PUSH {R5-R7} \n\
/* 0804453a */ SUB SP, 0x14 \n\
/* 0804453c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804453e */ LDR R0, =D_030055d0 \n\
/* 08044540 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08044542 */ LDR R0, [R0] \n\
/* 08044544 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044546 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08044548 */ STRB R5, [R0] \n\
/* 0804454a */ LDR R1, =rhythm_toys_demo_bpm_table \n\
/* 0804454c */ LSLS R0, R5, 0x2 \n\
/* 0804454e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044550 */ LDR R0, [R0] \n\
/* 08044552 */ LDRH R0, [R0] \n\
/* 08044554 */ BL set_beatscript_tempo \n\
/* 08044558 */ BL rhythm_toys_init_gfx1 \n\
/* 0804455c */ BL scene_show_obj_layer \n\
/* 08044560 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08044562 */ STR R2, [SP] \n\
/* 08044564 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08044566 */ STR R0, [SP, 0x4] \n\
/* 08044568 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0804456a */ STR R7, [SP, 0x8] \n\
/* 0804456c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804456e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08044570 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044572 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08044574 */ BL scene_set_bg_layer_display \n\
/* 08044578 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0804457a */ BL func_08044208 \n\
/* 0804457e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08044580 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 08044582 */ BL func_08044228 \n\
/* 08044586 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08044588 */ LSLS R4, R4, 0x10 \n\
/* 0804458a */ ASRS R4, R4, 0x10 \n\
/* 0804458c */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0804458e */ BL func_08044248 \n\
/* 08044592 */ LSLS R0, R0, 0x10 \n\
/* 08044594 */ ASRS R0, R0, 0x10 \n\
/* 08044596 */ LDR R3, =D_03005380 \n\
/* 08044598 */ LDR R1, [R3] \n\
/* 0804459a */ STR R0, [SP] \n\
/* 0804459c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804459e */ LSLS R0, R0, 0x4 \n\
/* 080445a0 */ STR R0, [SP, 0x4] \n\
/* 080445a2 */ STR R7, [SP, 0x8] \n\
/* 080445a4 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 080445a6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080445a8 */ STR R0, [SP, 0xC] \n\
/* 080445aa */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080445ac */ STR R2, [SP, 0x10] \n\
/* 080445ae */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080445b0 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080445b2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080445b4 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080445b6 */ BL func_0804d160 \n\
/* 080445ba */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080445bc */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080445be */ LDR R1, [R3] \n\
/* 080445c0 */ MOVS R3, 0xD5 @ Set R3 to 0xD5 \n\
/* 080445c2 */ LSLS R3, R3, 0x2 \n\
/* 080445c4 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080445c6 */ STRH R2, [R0] \n\
/* 080445c8 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 080445ca */ BNE branch_0804462c \n\
/* 080445cc */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080445ce */ BL func_08044208 \n\
/* 080445d2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080445d4 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080445d6 */ BL func_08044228 \n\
/* 080445da */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080445dc */ LSLS R4, R4, 0x10 \n\
/* 080445de */ ASRS R4, R4, 0x10 \n\
/* 080445e0 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080445e2 */ BL func_08044248 \n\
/* 080445e6 */ LSLS R0, R0, 0x10 \n\
/* 080445e8 */ ASRS R0, R0, 0x10 \n\
/* 080445ea */ LDR R2, =D_03005380 \n\
/* 080445ec */ LDR R1, [R2] \n\
/* 080445ee */ STR R0, [SP] \n\
/* 080445f0 */ LDR R0, =0x7ff \n\
/* 080445f2 */ STR R0, [SP, 0x4] \n\
/* 080445f4 */ STR R7, [SP, 0x8] \n\
/* 080445f6 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080445f8 */ STR R3, [SP, 0xC] \n\
/* 080445fa */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080445fc */ STR R0, [SP, 0x10] \n\
/* 080445fe */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08044600 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08044602 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08044604 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08044606 */ BL func_0804d160 \n\
/* 0804460a */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0804460c */ LDR R1, [R2] \n\
/* 0804460e */ LDR R3, =0x356 \n\
/* 08044610 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08044612 */ STRH R0, [R1] \n\
/* 08044614 */ B branch_08044632 \n\
\n\
.ltorg \n\
 \n\
branch_0804462c: \n\
/* 0804462c */ LDR R3, =0x356 \n\
/* 0804462e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08044630 */ STRH R2, [R0] \n\
 \n\
branch_08044632: \n\
/* 08044632 */ LDR R4, =D_030055d0 \n\
/* 08044634 */ LDR R0, [R4] \n\
/* 08044636 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08044638 */ BL init_drumtech \n\
/* 0804463c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0804463e */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 08044640 */ LSLS R2, R2, 0x2 \n\
/* 08044642 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
 \n\
branch_08044644: \n\
/* 08044644 */ LDR R0, [R4] \n\
/* 08044646 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08044648 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0804464a */ STRB R1, [R0] \n\
/* 0804464c */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0804464e */ CMP R7, 0x5 @ Compare R7 and 0x5 \n\
/* 08044650 */ BLS branch_08044644 \n\
/* 08044652 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08044654 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044656 */ BL gameplay_set_input_buttons \n\
/* 0804465a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0804465c: \n\
/* 0804465c */ LDR R4, =rhythm_toys_button_anim_ids \n\
/* 0804465e */ ADDS R4, R7, R4 @ Set R4 to R7 + R4 \n\
/* 08044660 */ LDRB R0, [R4] \n\
/* 08044662 */ BL func_08044208 \n\
/* 08044666 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08044668 */ LDRB R0, [R4] \n\
/* 0804466a */ BL func_08044228 \n\
/* 0804466e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08044670 */ LSLS R5, R5, 0x10 \n\
/* 08044672 */ ASRS R5, R5, 0x10 \n\
/* 08044674 */ LDRB R0, [R4] \n\
/* 08044676 */ BL func_08044248 \n\
/* 0804467a */ LSLS R0, R0, 0x10 \n\
/* 0804467c */ ASRS R0, R0, 0x10 \n\
/* 0804467e */ LDR R1, =D_03005380 \n\
/* 08044680 */ LDR R1, [R1] \n\
/* 08044682 */ STR R0, [SP] \n\
/* 08044684 */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 08044686 */ LSLS R0, R0, 0x3 \n\
/* 08044688 */ STR R0, [SP, 0x4] \n\
/* 0804468a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804468c */ STR R0, [SP, 0x8] \n\
/* 0804468e */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08044690 */ STR R0, [SP, 0xC] \n\
/* 08044692 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08044694 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08044696 */ STR R0, [SP, 0x10] \n\
/* 08044698 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804469a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804469c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0804469e */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 080446a0 */ BL func_0804d160 \n\
/* 080446a4 */ LDR R4, =D_030055d0 \n\
/* 080446a6 */ LDR R1, [R4] \n\
/* 080446a8 */ LSLS R2, R7, 0x1 \n\
/* 080446aa */ MOVS R3, 0xDB @ Set R3 to 0xDB \n\
/* 080446ac */ LSLS R3, R3, 0x2 \n\
/* 080446ae */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080446b0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080446b2 */ STRH R0, [R1] \n\
/* 080446b4 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 080446b6 */ CMP R7, 0x5 @ Compare R7 and 0x5 \n\
/* 080446b8 */ BLS branch_0804465c \n\
/* 080446ba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080446bc */ BL gameplay_prevent_dpad_overlap \n\
/* 080446c0 */ BL func_08044268 \n\
/* 080446c4 */ LDR R0, [R4] \n\
/* 080446c6 */ LDR R1, =0x35e \n\
/* 080446c8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080446ca */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080446cc */ STRB R2, [R0] \n\
/* 080446ce */ LDR R0, [R4] \n\
/* 080446d0 */ MOVS R3, 0xDE @ Set R3 to 0xDE \n\
/* 080446d2 */ LSLS R3, R3, 0x2 \n\
/* 080446d4 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080446d6 */ STRB R2, [R0] \n\
/* 080446d8 */ LDR R1, [R4] \n\
/* 080446da */ MOVS R2, 0xDF @ Set R2 to 0xDF \n\
/* 080446dc */ LSLS R2, R2, 0x2 \n\
/* 080446de */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080446e0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080446e2 */ STR R3, [R0] \n\
/* 080446e4 */ ADDS R2, 0x6 @ Add 0x6 to R2 \n\
/* 080446e6 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080446e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080446ea */ STRH R3, [R0] \n\
/* 080446ec */ LDR R3, =0x381 \n\
/* 080446ee */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080446f0 */ STRB R2, [R1] \n\
/* 080446f2 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080446f4 */ BL agb_random \n\
/* 080446f8 */ LDR R1, [R4] \n\
/* 080446fa */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 080446fc */ LSLS R2, R2, 0x2 \n\
/* 080446fe */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08044700 */ STRB R0, [R1] \n\
/* 08044702 */ ADD SP, 0x14 \n\
/* 08044704 */ POP {R3-R5} \n\
/* 08044706 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08044708 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804470a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804470c */ POP {R4-R7} \n\
/* 0804470e */ POP {R0} \n\
/* 08044710 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
