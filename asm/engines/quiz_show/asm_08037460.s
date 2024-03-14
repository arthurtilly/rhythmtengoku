asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start quiz_show_engine_start \n\
/* 08037460 */ PUSH {R4-R7, LR} \n\
/* 08037462 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08037464 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08037466 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08037468 */ PUSH {R5-R7} \n\
/* 0803746a */ SUB SP, 0x14 \n\
/* 0803746c */ LDR R2, =gCurrentEngineData \n\
/* 0803746e */ LDR R1, [R2] \n\
/* 08037470 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08037472 */ STRB R0, [R1] \n\
/* 08037474 */ BL quiz_show_init_gfx1 \n\
/* 08037478 */ BL scene_show_obj_layer \n\
/* 0803747c */ STR R4, [SP] \n\
/* 0803747e */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 08037480 */ STR R0, [SP, 0x4] \n\
/* 08037482 */ STR R4, [SP, 0x8] \n\
/* 08037484 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037486 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08037488 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803748a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803748c */ BL scene_set_bg_layer_display \n\
/* 08037490 */ STR R4, [SP] \n\
/* 08037492 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08037494 */ STR R0, [SP, 0x4] \n\
/* 08037496 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08037498 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0803749a */ STR R0, [SP, 0x8] \n\
/* 0803749c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803749e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080374a0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080374a2 */ BL scene_set_bg_layer_display \n\
/* 080374a6 */ STR R4, [SP] \n\
/* 080374a8 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 080374aa */ STR R0, [SP, 0x4] \n\
/* 080374ac */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080374ae */ STR R0, [SP, 0x8] \n\
/* 080374b0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080374b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080374b4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080374b6 */ BL scene_set_bg_layer_display \n\
/* 080374ba */ STR R4, [SP] \n\
/* 080374bc */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 080374be */ STR R0, [SP, 0x4] \n\
/* 080374c0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080374c2 */ STR R0, [SP, 0x8] \n\
/* 080374c4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080374c6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080374c8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080374ca */ BL scene_set_bg_layer_display \n\
/* 080374ce */ BL get_current_mem_id \n\
/* 080374d2 */ LSLS R0, R0, 0x10 \n\
/* 080374d4 */ LSRS R0, R0, 0x10 \n\
/* 080374d6 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 080374d8 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 080374da */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 080374dc */ BL text_printer_create_new \n\
/* 080374e0 */ LDR R2, =gCurrentEngineData \n\
/* 080374e2 */ LDR R1, [R2] \n\
/* 080374e4 */ STR R0, [R1, 0x4] \n\
/* 080374e6 */ MOVS R1, 0x54 @ Set R1 to 0x54 \n\
/* 080374e8 */ MOVS R2, 0x24 @ Set R2 to 0x24 \n\
/* 080374ea */ BL text_printer_set_x_y \n\
/* 080374ee */ LDR R1, =gCurrentEngineData \n\
/* 080374f0 */ LDR R0, [R1] \n\
/* 080374f2 */ LDR R0, [R0, 0x4] \n\
/* 080374f4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080374f6 */ LSLS R1, R1, 0x4 \n\
/* 080374f8 */ BL text_printer_set_layer \n\
/* 080374fc */ LDR R2, =gCurrentEngineData \n\
/* 080374fe */ LDR R0, [R2] \n\
/* 08037500 */ LDR R0, [R0, 0x4] \n\
/* 08037502 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08037504 */ BL text_printer_center_by_content \n\
/* 08037508 */ LDR R1, =gCurrentEngineData \n\
/* 0803750a */ LDR R0, [R1] \n\
/* 0803750c */ LDR R0, [R0, 0x4] \n\
/* 0803750e */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08037510 */ BL text_printer_set_palette \n\
/* 08037514 */ LDR R2, =gCurrentEngineData \n\
/* 08037516 */ LDR R0, [R2] \n\
/* 08037518 */ LDR R0, [R0, 0x4] \n\
/* 0803751a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803751c */ BL text_printer_set_colors \n\
/* 08037520 */ LDR R1, =gCurrentEngineData \n\
/* 08037522 */ LDR R0, [R1] \n\
/* 08037524 */ LDR R0, [R0, 0x4] \n\
/* 08037526 */ LDR R1, =scene_show_bg_layer \n\
/* 08037528 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803752a */ BL text_printer_run_func_on_finish \n\
/* 0803752e */ LDR R2, =gCurrentEngineData \n\
/* 08037530 */ LDR R0, [R2] \n\
/* 08037532 */ LDR R0, [R0, 0x4] \n\
/* 08037534 */ LDR R1, =scene_hide_bg_layer \n\
/* 08037536 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08037538 */ BL text_printer_run_func_on_clear \n\
/* 0803753c */ LDR R1, =gCurrentEngineData \n\
/* 0803753e */ LDR R0, [R1] \n\
/* 08037540 */ LDR R0, [R0, 0x4] \n\
/* 08037542 */ BL gameplay_set_text_printer \n\
/* 08037546 */ LDR R2, =gCurrentEngineData \n\
/* 08037548 */ LDR R2, [R2] \n\
/* 0803754a */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803754c */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0803754e */ ADDS R7, 0x8 @ Add 0x8 to R7 \n\
/* 08037550 */ LDR R5, =gSpriteHandler \n\
/* 08037552 */ LDR R0, [R5] \n\
/* 08037554 */ LDR R1, =anim_quiz_show_host_body \n\
/* 08037556 */ MOVS R6, 0x50 @ Set R6 to 0x50 \n\
/* 08037558 */ STR R6, [SP] \n\
/* 0803755a */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 0803755c */ LSLS R2, R2, 0x8 \n\
/* 0803755e */ STR R2, [SP, 0x4] \n\
/* 08037560 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08037562 */ STR R2, [SP, 0x8] \n\
/* 08037564 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08037566 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08037568 */ STR R2, [SP, 0xC] \n\
/* 0803756a */ STR R4, [SP, 0x10] \n\
/* 0803756c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803756e */ MOVS R3, 0x32 @ Set R3 to 0x32 \n\
/* 08037570 */ BL sprite_create \n\
/* 08037574 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08037576 */ STRH R0, [R1, 0x8] \n\
/* 08037578 */ LDR R0, [R5] \n\
/* 0803757a */ LDR R1, =anim_quiz_show_host_head \n\
/* 0803757c */ STR R6, [SP] \n\
/* 0803757e */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08037580 */ LSLS R2, R2, 0x8 \n\
/* 08037582 */ STR R2, [SP, 0x4] \n\
/* 08037584 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08037586 */ STR R2, [SP, 0x8] \n\
/* 08037588 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803758a */ STR R2, [SP, 0xC] \n\
/* 0803758c */ STR R4, [SP, 0x10] \n\
/* 0803758e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037590 */ MOVS R3, 0x32 @ Set R3 to 0x32 \n\
/* 08037592 */ BL sprite_create \n\
/* 08037596 */ STRH R0, [R7, 0x2] \n\
/* 08037598 */ LDR R0, [R5] \n\
/* 0803759a */ LDR R1, =anim_quiz_show_host_press_button_r \n\
/* 0803759c */ MOVS R2, 0x65 @ Set R2 to 0x65 \n\
/* 0803759e */ STR R2, [SP] \n\
/* 080375a0 */ LDR R2, =0x8805 \n\
/* 080375a2 */ STR R2, [SP, 0x4] \n\
/* 080375a4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080375a6 */ STR R2, [SP, 0x8] \n\
/* 080375a8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080375aa */ STR R2, [SP, 0xC] \n\
/* 080375ac */ STR R4, [SP, 0x10] \n\
/* 080375ae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080375b0 */ MOVS R3, 0x4C @ Set R3 to 0x4C \n\
/* 080375b2 */ BL sprite_create \n\
/* 080375b6 */ STRH R0, [R7, 0x4] \n\
/* 080375b8 */ LDR R0, [R5] \n\
/* 080375ba */ LDR R1, =anim_quiz_show_host_press_button_l \n\
/* 080375bc */ MOVS R2, 0x69 @ Set R2 to 0x69 \n\
/* 080375be */ STR R2, [SP] \n\
/* 080375c0 */ LDR R2, =0x87fb \n\
/* 080375c2 */ STR R2, [SP, 0x4] \n\
/* 080375c4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080375c6 */ STR R2, [SP, 0x8] \n\
/* 080375c8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080375ca */ STR R2, [SP, 0xC] \n\
/* 080375cc */ STR R4, [SP, 0x10] \n\
/* 080375ce */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080375d0 */ MOVS R3, 0x32 @ Set R3 to 0x32 \n\
/* 080375d2 */ BL sprite_create \n\
/* 080375d6 */ STRH R0, [R7, 0x6] \n\
/* 080375d8 */ LDR R0, [R5] \n\
/* 080375da */ LDR R1, =anim_quiz_show_button_host_l \n\
/* 080375dc */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 080375de */ STR R2, [SP] \n\
/* 080375e0 */ LDR R2, =0x880a \n\
/* 080375e2 */ STR R2, [SP, 0x4] \n\
/* 080375e4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080375e6 */ STR R2, [SP, 0x8] \n\
/* 080375e8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080375ea */ STR R2, [SP, 0xC] \n\
/* 080375ec */ STR R4, [SP, 0x10] \n\
/* 080375ee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080375f0 */ MOVS R3, 0x3B @ Set R3 to 0x3B \n\
/* 080375f2 */ BL sprite_create \n\
/* 080375f6 */ STRH R0, [R7, 0x8] \n\
/* 080375f8 */ LDR R0, [R5] \n\
/* 080375fa */ LDR R1, =anim_quiz_show_button_host_r \n\
/* 080375fc */ MOVS R2, 0x9F @ Set R2 to 0x9F \n\
/* 080375fe */ STR R2, [SP] \n\
/* 08037600 */ LDR R2, =0x880a \n\
/* 08037602 */ STR R2, [SP, 0x4] \n\
/* 08037604 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08037606 */ STR R2, [SP, 0x8] \n\
/* 08037608 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803760a */ STR R2, [SP, 0xC] \n\
/* 0803760c */ STR R4, [SP, 0x10] \n\
/* 0803760e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037610 */ MOVS R3, 0x3A @ Set R3 to 0x3A \n\
/* 08037612 */ BL sprite_create \n\
/* 08037616 */ STRH R0, [R7, 0xA] \n\
/* 08037618 */ LDR R0, [R5] \n\
/* 0803761a */ MOVS R1, 0x86 @ Set R1 to 0x86 \n\
/* 0803761c */ STR R1, [SP] \n\
/* 0803761e */ LDR R2, =0x8814 \n\
/* 08037620 */ STR R2, [SP, 0x4] \n\
/* 08037622 */ STR R4, [SP, 0x8] \n\
/* 08037624 */ STR R4, [SP, 0xC] \n\
/* 08037626 */ STR R4, [SP, 0x10] \n\
/* 08037628 */ LDR R1, =anim_quiz_show_podium_num \n\
/* 0803762a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803762c */ MOVS R3, 0x4D @ Set R3 to 0x4D \n\
/* 0803762e */ BL sprite_create \n\
/* 08037632 */ STRH R0, [R7, 0xC] \n\
/* 08037634 */ LDR R0, [R5] \n\
/* 08037636 */ MOVS R1, 0x89 @ Set R1 to 0x89 \n\
/* 08037638 */ STR R1, [SP] \n\
/* 0803763a */ LDR R2, =0x8814 \n\
/* 0803763c */ STR R2, [SP, 0x4] \n\
/* 0803763e */ STR R4, [SP, 0x8] \n\
/* 08037640 */ STR R4, [SP, 0xC] \n\
/* 08037642 */ STR R4, [SP, 0x10] \n\
/* 08037644 */ LDR R1, =anim_quiz_show_podium_num \n\
/* 08037646 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037648 */ MOVS R3, 0x3D @ Set R3 to 0x3D \n\
/* 0803764a */ BL sprite_create \n\
/* 0803764e */ STRH R0, [R7, 0xE] \n\
/* 08037650 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037652 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08037654 */ BL func_080378d8 \n\
/* 08037658 */ LDR R0, [R5] \n\
/* 0803765a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803765c */ LDRSH R1, [R7, R2] \n\
/* 0803765e */ LDR R2, =anim_quiz_show_host_arm_r \n\
/* 08037660 */ STR R4, [SP] \n\
/* 08037662 */ STR R4, [SP, 0x4] \n\
/* 08037664 */ STR R4, [SP, 0x8] \n\
/* 08037666 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08037668 */ BL sprite_set_anim \n\
/* 0803766c */ LDR R0, [R5] \n\
/* 0803766e */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08037670 */ LDRSH R1, [R7, R2] \n\
/* 08037672 */ LDR R2, =anim_quiz_show_host_arm_l \n\
/* 08037674 */ STR R4, [SP] \n\
/* 08037676 */ STR R4, [SP, 0x4] \n\
/* 08037678 */ STR R4, [SP, 0x8] \n\
/* 0803767a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803767c */ BL sprite_set_anim \n\
/* 08037680 */ LDR R0, =gCurrentEngineData \n\
/* 08037682 */ LDR R0, [R0] \n\
/* 08037684 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08037686 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08037688 */ ADDS R7, 0x1C @ Add 0x1C to R7 \n\
/* 0803768a */ LDR R0, [R5] \n\
/* 0803768c */ LDR R1, =anim_quiz_show_player_body \n\
/* 0803768e */ MOVS R6, 0x52 @ Set R6 to 0x52 \n\
/* 08037690 */ STR R6, [SP] \n\
/* 08037692 */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 08037694 */ LSLS R2, R2, 0x8 \n\
/* 08037696 */ STR R2, [SP, 0x4] \n\
/* 08037698 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803769a */ STR R2, [SP, 0x8] \n\
/* 0803769c */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803769e */ STR R2, [SP, 0xC] \n\
/* 080376a0 */ STR R4, [SP, 0x10] \n\
/* 080376a2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080376a4 */ MOVS R3, 0xB6 @ Set R3 to 0xB6 \n\
/* 080376a6 */ BL sprite_create \n\
/* 080376aa */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080376ac */ STRH R0, [R1, 0x1C] \n\
/* 080376ae */ LDR R0, [R5] \n\
/* 080376b0 */ LDR R1, =anim_quiz_show_player_head \n\
/* 080376b2 */ STR R6, [SP] \n\
/* 080376b4 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 080376b6 */ LSLS R2, R2, 0x8 \n\
/* 080376b8 */ STR R2, [SP, 0x4] \n\
/* 080376ba */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080376bc */ STR R2, [SP, 0x8] \n\
/* 080376be */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080376c0 */ STR R2, [SP, 0xC] \n\
/* 080376c2 */ STR R4, [SP, 0x10] \n\
/* 080376c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080376c6 */ MOVS R3, 0xB6 @ Set R3 to 0xB6 \n\
/* 080376c8 */ BL sprite_create \n\
/* 080376cc */ STRH R0, [R7, 0x2] \n\
/* 080376ce */ LDR R0, [R5] \n\
/* 080376d0 */ LDR R1, =anim_quiz_show_player_press_button_r \n\
/* 080376d2 */ MOVS R2, 0x69 @ Set R2 to 0x69 \n\
/* 080376d4 */ STR R2, [SP] \n\
/* 080376d6 */ LDR R2, =0x87fb \n\
/* 080376d8 */ STR R2, [SP, 0x4] \n\
/* 080376da */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080376dc */ STR R2, [SP, 0x8] \n\
/* 080376de */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080376e0 */ STR R2, [SP, 0xC] \n\
/* 080376e2 */ STR R4, [SP, 0x10] \n\
/* 080376e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080376e6 */ MOVS R3, 0xB9 @ Set R3 to 0xB9 \n\
/* 080376e8 */ BL sprite_create \n\
/* 080376ec */ STRH R0, [R7, 0x4] \n\
/* 080376ee */ LDR R0, [R5] \n\
/* 080376f0 */ LDR R1, =anim_quiz_show_player_press_button_l \n\
/* 080376f2 */ MOVS R2, 0x65 @ Set R2 to 0x65 \n\
/* 080376f4 */ STR R2, [SP] \n\
/* 080376f6 */ LDR R2, =0x8805 \n\
/* 080376f8 */ STR R2, [SP, 0x4] \n\
/* 080376fa */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080376fc */ STR R2, [SP, 0x8] \n\
/* 080376fe */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08037700 */ STR R2, [SP, 0xC] \n\
/* 08037702 */ STR R4, [SP, 0x10] \n\
/* 08037704 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037706 */ MOVS R3, 0xA5 @ Set R3 to 0xA5 \n\
/* 08037708 */ BL sprite_create \n\
/* 0803770c */ STRH R0, [R7, 0x6] \n\
/* 0803770e */ LDR R0, [R5] \n\
/* 08037710 */ LDR R1, =anim_quiz_show_button_player_l \n\
/* 08037712 */ MOVS R2, 0x9F @ Set R2 to 0x9F \n\
/* 08037714 */ STR R2, [SP] \n\
/* 08037716 */ LDR R2, =0x880a \n\
/* 08037718 */ STR R2, [SP, 0x4] \n\
/* 0803771a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803771c */ STR R2, [SP, 0x8] \n\
/* 0803771e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08037720 */ STR R2, [SP, 0xC] \n\
/* 08037722 */ STR R4, [SP, 0x10] \n\
/* 08037724 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037726 */ MOVS R3, 0xA8 @ Set R3 to 0xA8 \n\
/* 08037728 */ BL sprite_create \n\
/* 0803772c */ STRH R0, [R7, 0x8] \n\
/* 0803772e */ LDR R0, [R5] \n\
/* 08037730 */ LDR R1, =anim_quiz_show_button_player_r \n\
/* 08037732 */ MOVS R2, 0x9F @ Set R2 to 0x9F \n\
/* 08037734 */ STR R2, [SP] \n\
/* 08037736 */ LDR R2, =0x880a \n\
/* 08037738 */ STR R2, [SP, 0x4] \n\
/* 0803773a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803773c */ STR R2, [SP, 0x8] \n\
/* 0803773e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08037740 */ STR R2, [SP, 0xC] \n\
/* 08037742 */ STR R4, [SP, 0x10] \n\
/* 08037744 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037746 */ MOVS R3, 0xA8 @ Set R3 to 0xA8 \n\
/* 08037748 */ BL sprite_create \n\
/* 0803774c */ STRH R0, [R7, 0xA] \n\
/* 0803774e */ LDR R0, [R5] \n\
/* 08037750 */ MOVS R1, 0x89 @ Set R1 to 0x89 \n\
/* 08037752 */ STR R1, [SP] \n\
/* 08037754 */ LDR R2, =0x8814 \n\
/* 08037756 */ STR R2, [SP, 0x4] \n\
/* 08037758 */ STR R4, [SP, 0x8] \n\
/* 0803775a */ STR R4, [SP, 0xC] \n\
/* 0803775c */ STR R4, [SP, 0x10] \n\
/* 0803775e */ LDR R1, =anim_quiz_show_podium_num \n\
/* 08037760 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037762 */ MOVS R3, 0xA9 @ Set R3 to 0xA9 \n\
/* 08037764 */ BL sprite_create \n\
/* 08037768 */ STRH R0, [R7, 0xC] \n\
/* 0803776a */ LDR R0, [R5] \n\
/* 0803776c */ MOVS R1, 0x86 @ Set R1 to 0x86 \n\
/* 0803776e */ STR R1, [SP] \n\
/* 08037770 */ LDR R2, =0x8814 \n\
/* 08037772 */ STR R2, [SP, 0x4] \n\
/* 08037774 */ STR R4, [SP, 0x8] \n\
/* 08037776 */ STR R4, [SP, 0xC] \n\
/* 08037778 */ STR R4, [SP, 0x10] \n\
/* 0803777a */ LDR R1, =anim_quiz_show_podium_num \n\
/* 0803777c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803777e */ MOVS R3, 0x99 @ Set R3 to 0x99 \n\
/* 08037780 */ BL sprite_create \n\
/* 08037784 */ STRH R0, [R7, 0xE] \n\
/* 08037786 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08037788 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803778a */ BL func_080378d8 \n\
/* 0803778e */ LDR R0, [R5] \n\
/* 08037790 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08037792 */ LDRSH R1, [R7, R2] \n\
/* 08037794 */ LDR R2, =anim_quiz_show_player_arm_r \n\
/* 08037796 */ STR R4, [SP] \n\
/* 08037798 */ STR R4, [SP, 0x4] \n\
/* 0803779a */ STR R4, [SP, 0x8] \n\
/* 0803779c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803779e */ BL sprite_set_anim \n\
/* 080377a2 */ LDR R0, [R5] \n\
/* 080377a4 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080377a6 */ LDRSH R1, [R7, R2] \n\
/* 080377a8 */ LDR R2, =anim_quiz_show_player_arm_l \n\
/* 080377aa */ STR R4, [SP] \n\
/* 080377ac */ STR R4, [SP, 0x4] \n\
/* 080377ae */ STR R4, [SP, 0x8] \n\
/* 080377b0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080377b2 */ BL sprite_set_anim \n\
/* 080377b6 */ BL func_080372e8 \n\
/* 080377ba */ MOVS R0, 0xF1 @ Set R0 to 0xF1 \n\
/* 080377bc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080377be */ BL gameplay_set_input_buttons \n\
/* 080377c2 */ BL func_08037178 \n\
/* 080377c6 */ LDR R0, =gCurrentEngineData \n\
/* 080377c8 */ LDR R2, [R0] \n\
/* 080377ca */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080377cc */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 080377ce */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 080377d0 */ STRH R1, [R0] \n\
/* 080377d2 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 080377d4 */ STRH R1, [R0] \n\
/* 080377d6 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 080377d8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080377da */ STRB R1, [R0] \n\
/* 080377dc */ LDR R2, =gCurrentEngineData \n\
/* 080377de */ LDR R0, [R2] \n\
/* 080377e0 */ ADDS R0, 0x49 @ Add 0x49 to R0 \n\
/* 080377e2 */ STRB R1, [R0] \n\
/* 080377e4 */ ADD SP, 0x14 \n\
/* 080377e6 */ POP {R3-R5} \n\
/* 080377e8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080377ea */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080377ec */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080377ee */ POP {R4-R7} \n\
/* 080377f0 */ POP {R0} \n\
/* 080377f2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
