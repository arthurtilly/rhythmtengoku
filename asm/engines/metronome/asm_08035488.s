asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start metronome_engine_start \n\
/* 08035488 */ PUSH {R4-R7, LR} \n\
/* 0803548a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803548c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803548e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08035490 */ PUSH {R5-R7} \n\
/* 08035492 */ SUB SP, 0x1C \n\
/* 08035494 */ LDR R1, =gCurrentEngineData \n\
/* 08035496 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08035498 */ LDR R1, [R1] \n\
/* 0803549a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803549c */ STRB R0, [R1] \n\
/* 0803549e */ BL metronome_init_gfx1 \n\
/* 080354a2 */ BL scene_show_obj_layer \n\
/* 080354a6 */ LDR R0, =anim_metronome_pendulum \n\
/* 080354a8 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 080354aa */ LSLS R1, R1, 0x7 \n\
/* 080354ac */ STR R1, [SP] \n\
/* 080354ae */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080354b0 */ LSLS R1, R1, 0x1 \n\
/* 080354b2 */ STR R1, [SP, 0x4] \n\
/* 080354b4 */ STR R4, [SP, 0x8] \n\
/* 080354b6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080354b8 */ STR R2, [SP, 0xC] \n\
/* 080354ba */ STR R4, [SP, 0x10] \n\
/* 080354bc */ STR R4, [SP, 0x14] \n\
/* 080354be */ STR R4, [SP, 0x18] \n\
/* 080354c0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080354c2 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 080354c4 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 080354c6 */ BL create_affine_sprite \n\
/* 080354ca */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080354cc */ LDR R1, [R2] \n\
/* 080354ce */ STR R0, [R1, 0x4] \n\
/* 080354d0 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 080354d2 */ LSLS R0, R0, 0x1 \n\
/* 080354d4 */ STRH R0, [R1, 0x8] \n\
/* 080354d6 */ STRH R4, [R1, 0xA] \n\
/* 080354d8 */ LDR R0, =gSpriteHandler \n\
/* 080354da */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080354dc */ LDR R0, [R0] \n\
/* 080354de */ LDR R1, =anim_metronome_bird_marker \n\
/* 080354e0 */ MOVS R6, 0x20 @ Set R6 to 0x20 \n\
/* 080354e2 */ STR R6, [SP] \n\
/* 080354e4 */ LDR R7, =0x480a \n\
/* 080354e6 */ STR R7, [SP, 0x4] \n\
/* 080354e8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080354ea */ STR R2, [SP, 0x8] \n\
/* 080354ec */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080354ee */ MOV R10, R2 @ Set R10 to R2 \n\
/* 080354f0 */ STR R2, [SP, 0xC] \n\
/* 080354f2 */ STR R4, [SP, 0x10] \n\
/* 080354f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080354f6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080354f8 */ BL sprite_create \n\
/* 080354fc */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080354fe */ LDR R1, [R2] \n\
/* 08035500 */ STRH R0, [R1, 0xE] \n\
/* 08035502 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08035504 */ LDR R0, [R1] \n\
/* 08035506 */ LDR R1, =anim_metronome_timing_meter \n\
/* 08035508 */ STR R6, [SP] \n\
/* 0803550a */ STR R7, [SP, 0x4] \n\
/* 0803550c */ STR R4, [SP, 0x8] \n\
/* 0803550e */ STR R4, [SP, 0xC] \n\
/* 08035510 */ STR R4, [SP, 0x10] \n\
/* 08035512 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08035514 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08035516 */ BL sprite_create \n\
/* 0803551a */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803551c */ LDR R1, [R2] \n\
/* 0803551e */ STRH R0, [R1, 0x10] \n\
/* 08035520 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08035522 */ LDR R0, [R1] \n\
/* 08035524 */ LDR R1, =anim_metronome_bird \n\
/* 08035526 */ STR R6, [SP] \n\
/* 08035528 */ STR R7, [SP, 0x4] \n\
/* 0803552a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803552c */ STR R2, [SP, 0x8] \n\
/* 0803552e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08035530 */ STR R2, [SP, 0xC] \n\
/* 08035532 */ STR R4, [SP, 0x10] \n\
/* 08035534 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035536 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08035538 */ BL sprite_create \n\
/* 0803553c */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803553e */ LDR R1, [R2] \n\
/* 08035540 */ STRH R0, [R1, 0x12] \n\
/* 08035542 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08035544 */ LDR R0, [R1] \n\
/* 08035546 */ LDR R1, =anim_metronome_score_counter \n\
/* 08035548 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0803554a */ STR R2, [SP] \n\
/* 0803554c */ LDR R2, =0x479d \n\
/* 0803554e */ STR R2, [SP, 0x4] \n\
/* 08035550 */ STR R4, [SP, 0x8] \n\
/* 08035552 */ STR R4, [SP, 0xC] \n\
/* 08035554 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08035556 */ LSLS R2, R2, 0x8 \n\
/* 08035558 */ STR R2, [SP, 0x10] \n\
/* 0803555a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803555c */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 0803555e */ BL sprite_create \n\
/* 08035562 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08035564 */ LDR R1, [R2] \n\
/* 08035566 */ STRH R0, [R1, 0x14] \n\
 \n\
branch_08035568: \n\
/* 08035568 */ LDR R5, =gSpriteHandler \n\
/* 0803556a */ LDR R0, [R5] \n\
/* 0803556c */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 0803556e */ STR R1, [SP] \n\
/* 08035570 */ LDR R1, =0x479c \n\
/* 08035572 */ STR R1, [SP, 0x4] \n\
/* 08035574 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08035576 */ STR R6, [SP, 0x8] \n\
/* 08035578 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0803557a */ STR R1, [SP, 0xC] \n\
/* 0803557c */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803557e */ LSLS R1, R1, 0x8 \n\
/* 08035580 */ STR R1, [SP, 0x10] \n\
/* 08035582 */ LDR R1, =anim_metronome_score_num \n\
/* 08035584 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035586 */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 08035588 */ BL sprite_create \n\
/* 0803558c */ LDR R7, =gCurrentEngineData \n\
/* 0803558e */ LDR R1, [R7] \n\
/* 08035590 */ LSLS R2, R4, 0x1 \n\
/* 08035592 */ ADDS R1, 0x16 @ Add 0x16 to R1 \n\
/* 08035594 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08035596 */ STRH R0, [R1] \n\
/* 08035598 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0803559a */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0803559c */ BLS branch_08035568 \n\
/* 0803559e */ LDR R0, [R5] \n\
/* 080355a0 */ LDR R1, =anim_metronome_face_l \n\
/* 080355a2 */ MOVS R4, 0xFA @ Set R4 to 0xFA \n\
/* 080355a4 */ LSLS R4, R4, 0x2 \n\
/* 080355a6 */ STR R4, [SP] \n\
/* 080355a8 */ LDR R2, =0x4864 \n\
/* 080355aa */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080355ac */ STR R2, [SP, 0x4] \n\
/* 080355ae */ STR R6, [SP, 0x8] \n\
/* 080355b0 */ STR R6, [SP, 0xC] \n\
/* 080355b2 */ STR R6, [SP, 0x10] \n\
/* 080355b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080355b6 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080355b8 */ BL sprite_create \n\
/* 080355bc */ LDR R1, [R7] \n\
/* 080355be */ STRH R0, [R1, 0x1C] \n\
/* 080355c0 */ LDR R0, [R5] \n\
/* 080355c2 */ LDR R1, =anim_metronome_face_r \n\
/* 080355c4 */ STR R4, [SP] \n\
/* 080355c6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080355c8 */ STR R2, [SP, 0x4] \n\
/* 080355ca */ STR R6, [SP, 0x8] \n\
/* 080355cc */ STR R6, [SP, 0xC] \n\
/* 080355ce */ STR R6, [SP, 0x10] \n\
/* 080355d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080355d2 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080355d4 */ BL sprite_create \n\
/* 080355d8 */ LDR R1, [R7] \n\
/* 080355da */ STRH R0, [R1, 0x1E] \n\
/* 080355dc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080355de */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 080355e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_080355e2: \n\
/* 080355e2 */ LDR R0, [R1] \n\
/* 080355e4 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 080355e6 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080355e8 */ STRB R2, [R0] \n\
/* 080355ea */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080355ec */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 080355ee */ BLS branch_080355e2 \n\
/* 080355f0 */ LDR R1, =(VRAMBase + 0x16000) \n\
/* 080355f2 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 080355f4 */ LSLS R2, R2, 0x5 \n\
/* 080355f6 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080355f8 */ LSLS R0, R0, 0x2 \n\
/* 080355fa */ STR R0, [SP] \n\
/* 080355fc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080355fe */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08035600 */ BL dma3_fill \n\
/* 08035604 */ BL get_current_mem_id \n\
/* 08035608 */ LDR R1, =D_0805a694 \n\
/* 0803560a */ STR R1, [SP] \n\
/* 0803560c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803560e */ STR R1, [SP, 0x4] \n\
/* 08035610 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08035612 */ STR R4, [SP, 0x8] \n\
/* 08035614 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08035616 */ LSLS R2, R2, 0x1 \n\
/* 08035618 */ STR R2, [SP, 0xC] \n\
/* 0803561a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803561c */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 0803561e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08035620 */ BL text_printer_get_unformatted_line_anim \n\
/* 08035624 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08035626 */ LDR R6, =gSpriteHandler \n\
/* 08035628 */ LDR R0, [R6] \n\
/* 0803562a */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0803562c */ STR R1, [SP] \n\
/* 0803562e */ LDR R1, =0x480a \n\
/* 08035630 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08035632 */ STR R1, [SP, 0x4] \n\
/* 08035634 */ STR R4, [SP, 0x8] \n\
/* 08035636 */ STR R4, [SP, 0xC] \n\
/* 08035638 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803563a */ LSLS R1, R1, 0x8 \n\
/* 0803563c */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0803563e */ STR R1, [SP, 0x10] \n\
/* 08035640 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08035642 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035644 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08035646 */ BL sprite_create \n\
/* 0803564a */ LDR R7, =gCurrentEngineData \n\
/* 0803564c */ LDR R1, [R7] \n\
/* 0803564e */ STRH R0, [R1, 0x22] \n\
/* 08035650 */ LDR R0, [R6] \n\
/* 08035652 */ MOVS R2, 0x22 @ Set R2 to 0x22 \n\
/* 08035654 */ LDRSH R1, [R1, R2] \n\
/* 08035656 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08035658 */ BL sprite_set_base_palette \n\
/* 0803565c */ BL get_current_mem_id \n\
/* 08035660 */ LDR R1, =D_0805a6c0 \n\
/* 08035662 */ STR R1, [SP] \n\
/* 08035664 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08035666 */ STR R1, [SP, 0x4] \n\
/* 08035668 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803566a */ STR R1, [SP, 0x8] \n\
/* 0803566c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803566e */ LSLS R2, R2, 0x1 \n\
/* 08035670 */ STR R2, [SP, 0xC] \n\
/* 08035672 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08035674 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08035676 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08035678 */ BL text_printer_get_unformatted_line_anim \n\
/* 0803567c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803567e */ LDR R0, [R6] \n\
/* 08035680 */ MOVS R1, 0x54 @ Set R1 to 0x54 \n\
/* 08035682 */ STR R1, [SP] \n\
/* 08035684 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08035686 */ STR R1, [SP, 0x4] \n\
/* 08035688 */ STR R4, [SP, 0x8] \n\
/* 0803568a */ STR R4, [SP, 0xC] \n\
/* 0803568c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803568e */ STR R1, [SP, 0x10] \n\
/* 08035690 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08035692 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035694 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08035696 */ BL sprite_create \n\
/* 0803569a */ LDR R1, [R7] \n\
/* 0803569c */ STRH R0, [R1, 0x24] \n\
/* 0803569e */ LDR R0, [R6] \n\
/* 080356a0 */ MOVS R2, 0x24 @ Set R2 to 0x24 \n\
/* 080356a2 */ LDRSH R1, [R1, R2] \n\
/* 080356a4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080356a6 */ BL sprite_set_base_palette \n\
/* 080356aa */ BL get_current_mem_id \n\
/* 080356ae */ LDR R1, =D_0805a6c8 \n\
/* 080356b0 */ STR R1, [SP] \n\
/* 080356b2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080356b4 */ STR R1, [SP, 0x4] \n\
/* 080356b6 */ STR R4, [SP, 0x8] \n\
/* 080356b8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080356ba */ LSLS R2, R2, 0x1 \n\
/* 080356bc */ STR R2, [SP, 0xC] \n\
/* 080356be */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080356c0 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080356c2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080356c4 */ BL text_printer_get_unformatted_line_anim \n\
/* 080356c8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080356ca */ LDR R0, [R6] \n\
/* 080356cc */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 080356ce */ STR R1, [SP] \n\
/* 080356d0 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080356d2 */ STR R1, [SP, 0x4] \n\
/* 080356d4 */ STR R4, [SP, 0x8] \n\
/* 080356d6 */ STR R4, [SP, 0xC] \n\
/* 080356d8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080356da */ STR R1, [SP, 0x10] \n\
/* 080356dc */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 080356de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080356e0 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080356e2 */ BL sprite_create \n\
/* 080356e6 */ LDR R1, [R7] \n\
/* 080356e8 */ STRH R0, [R1, 0x26] \n\
/* 080356ea */ LDR R0, [R6] \n\
/* 080356ec */ MOVS R2, 0x26 @ Set R2 to 0x26 \n\
/* 080356ee */ LDRSH R1, [R1, R2] \n\
/* 080356f0 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080356f2 */ BL sprite_set_base_palette \n\
/* 080356f6 */ LDR R0, [R7] \n\
/* 080356f8 */ STRH R4, [R0, 0x28] \n\
/* 080356fa */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 080356fc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080356fe */ STRB R1, [R0] \n\
/* 08035700 */ LDR R0, [R7] \n\
/* 08035702 */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 08035704 */ STRH R1, [R0, 0x2C] \n\
/* 08035706 */ ADDS R0, 0x2E @ Add 0x2E to R0 \n\
/* 08035708 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803570a */ STRB R2, [R0] \n\
/* 0803570c */ LDR R0, [R7] \n\
/* 0803570e */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 08035710 */ STRB R2, [R0] \n\
/* 08035712 */ BL func_080359e8 \n\
/* 08035716 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08035718 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803571a */ BL gameplay_set_input_buttons \n\
/* 0803571e */ LDR R0, =scene_results_ver_score \n\
/* 08035720 */ BL set_next_scene \n\
/* 08035724 */ ADD SP, 0x1C \n\
/* 08035726 */ POP {R3-R5} \n\
/* 08035728 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803572a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803572c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803572e */ POP {R4-R7} \n\
/* 08035730 */ POP {R0} \n\
/* 08035732 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
