asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_engine_start \n\
/* 0803dda4 */ PUSH {R4-R7, LR} \n\
/* 0803dda6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803dda8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803ddaa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803ddac */ PUSH {R5-R7} \n\
/* 0803ddae */ SUB SP, 0x14 \n\
/* 0803ddb0 */ LDR R1, =D_030055d0 \n\
/* 0803ddb2 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0803ddb4 */ LDR R1, [R1] \n\
/* 0803ddb6 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803ddb8 */ STRB R0, [R1] \n\
/* 0803ddba */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 0803ddbc */ BNE branch_0803ddca \n\
/* 0803ddbe */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0803ddc0 */ BL agb_random \n\
/* 0803ddc4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803ddc6 */ LDR R1, [R2] \n\
/* 0803ddc8 */ STRB R0, [R1] \n\
 \n\
branch_0803ddca: \n\
/* 0803ddca */ BL tap_trial_init_gfx1 \n\
/* 0803ddce */ BL scene_show_obj_layer \n\
/* 0803ddd2 */ STR R7, [SP] \n\
/* 0803ddd4 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0803ddd6 */ STR R0, [SP, 0x4] \n\
/* 0803ddd8 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
/* 0803ddda */ STR R4, [SP, 0x8] \n\
/* 0803dddc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ddde */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803dde0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803dde2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803dde4 */ BL scene_set_bg_layer_display \n\
/* 0803dde8 */ STR R7, [SP] \n\
/* 0803ddea */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0803ddec */ STR R0, [SP, 0x4] \n\
/* 0803ddee */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803ddf0 */ STR R0, [SP, 0x8] \n\
/* 0803ddf2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803ddf4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803ddf6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ddf8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ddfa */ BL scene_set_bg_layer_display \n\
/* 0803ddfe */ STR R7, [SP] \n\
/* 0803de00 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0803de02 */ STR R0, [SP, 0x4] \n\
/* 0803de04 */ STR R7, [SP, 0x8] \n\
/* 0803de06 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803de08 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803de0a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803de0c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803de0e */ BL scene_set_bg_layer_display \n\
/* 0803de12 */ STR R7, [SP] \n\
/* 0803de14 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0803de16 */ STR R0, [SP, 0x4] \n\
/* 0803de18 */ STR R4, [SP, 0x8] \n\
/* 0803de1a */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803de1c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803de1e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803de20 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803de22 */ BL scene_set_bg_layer_display \n\
/* 0803de26 */ LDR R1, =D_03004b10 \n\
/* 0803de28 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803de2a */ ADDS R2, 0x4C @ Add 0x4C to R2 \n\
/* 0803de2c */ LDR R0, =0x841 \n\
/* 0803de2e */ STRH R0, [R2] \n\
/* 0803de30 */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 0803de32 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803de34 */ LSLS R0, R0, 0x5 \n\
/* 0803de36 */ STRH R0, [R1] \n\
/* 0803de38 */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 0803de3a */ LSLS R0, R0, 0x2 \n\
/* 0803de3c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803de3e */ BL func_0800c660 \n\
/* 0803de42 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0803de44 */ LDR R1, [R3] \n\
/* 0803de46 */ STR R0, [R1, 0x4] \n\
/* 0803de48 */ LDR R1, =D_0805a8bc \n\
/* 0803de4a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803de4c */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0803de4e */ BL bmp_font_obj_print_c \n\
/* 0803de52 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803de54 */ LDR R4, =D_03005380 \n\
/* 0803de56 */ LDR R0, [R4] \n\
/* 0803de58 */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 0803de5a */ STR R1, [SP] \n\
/* 0803de5c */ STR R7, [SP, 0x4] \n\
/* 0803de5e */ STR R7, [SP, 0x8] \n\
/* 0803de60 */ STR R7, [SP, 0xC] \n\
/* 0803de62 */ STR R7, [SP, 0x10] \n\
/* 0803de64 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0803de66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803de68 */ MOVS R3, 0x5A @ Set R3 to 0x5A \n\
/* 0803de6a */ BL func_0804d160 \n\
/* 0803de6e */ MOV R5, R10 @ Set R5 to R10 \n\
/* 0803de70 */ LDR R1, [R5] \n\
/* 0803de72 */ STRH R0, [R1, 0x22] \n\
/* 0803de74 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0803de76 */ STRH R0, [R1, 0xE] \n\
/* 0803de78 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803de7a */ BL tap_trial_get_anim \n\
/* 0803de7e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803de80 */ LDR R0, [R4] \n\
/* 0803de82 */ LDR R2, [R5] \n\
/* 0803de84 */ MOVS R5, 0xE @ Set R5 to 0xE \n\
/* 0803de86 */ LDRSH R3, [R2, R5] \n\
/* 0803de88 */ MOVS R2, 0x73 @ Set R2 to 0x73 \n\
/* 0803de8a */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803de8c */ STR R2, [SP] \n\
/* 0803de8e */ MOVS R5, 0x90 @ Set R5 to 0x90 \n\
/* 0803de90 */ LSLS R5, R5, 0x7 \n\
/* 0803de92 */ STR R5, [SP, 0x4] \n\
/* 0803de94 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803de96 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0803de98 */ STR R2, [SP, 0x8] \n\
/* 0803de9a */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 0803de9c */ STR R6, [SP, 0xC] \n\
/* 0803de9e */ STR R7, [SP, 0x10] \n\
/* 0803dea0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803dea2 */ BL func_0804d160 \n\
/* 0803dea6 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0803dea8 */ LDR R1, [R3] \n\
/* 0803deaa */ STRH R0, [R1, 0x8] \n\
/* 0803deac */ STRH R7, [R1, 0xA] \n\
/* 0803deae */ STRH R7, [R1, 0xC] \n\
/* 0803deb0 */ MOVS R5, 0x8 @ Set R5 to 0x8 \n\
/* 0803deb2 */ LDRSH R0, [R1, R5] \n\
/* 0803deb4 */ BL func_0803dd84 \n\
/* 0803deb8 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0803deba */ BL tap_trial_get_anim \n\
/* 0803debe */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803dec0 */ LDR R0, [R4] \n\
/* 0803dec2 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0803dec4 */ LDR R2, [R3] \n\
/* 0803dec6 */ MOVS R5, 0xE @ Set R5 to 0xE \n\
/* 0803dec8 */ LDRSH R3, [R2, R5] \n\
/* 0803deca */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803decc */ STR R2, [SP] \n\
/* 0803dece */ LDR R2, =0x480a \n\
/* 0803ded0 */ STR R2, [SP, 0x4] \n\
/* 0803ded2 */ STR R7, [SP, 0x8] \n\
/* 0803ded4 */ STR R7, [SP, 0xC] \n\
/* 0803ded6 */ STR R7, [SP, 0x10] \n\
/* 0803ded8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803deda */ BL func_0804d160 \n\
/* 0803dede */ LSLS R0, R0, 0x10 \n\
/* 0803dee0 */ ASRS R0, R0, 0x10 \n\
/* 0803dee2 */ BL func_0803dd84 \n\
/* 0803dee6 */ MOVS R0, 0x1B @ Set R0 to 0x1B \n\
/* 0803dee8 */ BL tap_trial_get_anim \n\
/* 0803deec */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803deee */ LDR R0, [R4] \n\
/* 0803def0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803def2 */ STR R3, [SP] \n\
/* 0803def4 */ LDR R5, =0x47f6 \n\
/* 0803def6 */ STR R5, [SP, 0x4] \n\
/* 0803def8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803defa */ STR R2, [SP, 0x8] \n\
/* 0803defc */ STR R6, [SP, 0xC] \n\
/* 0803defe */ STR R7, [SP, 0x10] \n\
/* 0803df00 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803df02 */ MOVS R3, 0x6E @ Set R3 to 0x6E \n\
/* 0803df04 */ BL func_0804d160 \n\
/* 0803df08 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0803df0a */ LDR R1, [R3] \n\
/* 0803df0c */ STRH R0, [R1, 0x12] \n\
/* 0803df0e */ MOVS R0, 0x1B @ Set R0 to 0x1B \n\
/* 0803df10 */ BL tap_trial_get_anim \n\
/* 0803df14 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803df16 */ LDR R0, [R4] \n\
/* 0803df18 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803df1a */ STR R2, [SP] \n\
/* 0803df1c */ STR R5, [SP, 0x4] \n\
/* 0803df1e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803df20 */ STR R3, [SP, 0x8] \n\
/* 0803df22 */ STR R6, [SP, 0xC] \n\
/* 0803df24 */ STR R7, [SP, 0x10] \n\
/* 0803df26 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803df28 */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 0803df2a */ BL func_0804d160 \n\
/* 0803df2e */ MOV R5, R10 @ Set R5 to R10 \n\
/* 0803df30 */ LDR R1, [R5] \n\
/* 0803df32 */ STRH R0, [R1, 0x14] \n\
/* 0803df34 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0803df36 */ LDRSH R0, [R1, R2] \n\
/* 0803df38 */ BL func_0803dd84 \n\
/* 0803df3c */ LDR R0, [R5] \n\
/* 0803df3e */ MOVS R3, 0x14 @ Set R3 to 0x14 \n\
/* 0803df40 */ LDRSH R0, [R0, R3] \n\
/* 0803df42 */ BL func_0803dd84 \n\
/* 0803df46 */ LDR R0, [R5] \n\
/* 0803df48 */ STRH R7, [R0, 0x16] \n\
/* 0803df4a */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0803df4c */ BL tap_trial_get_anim \n\
/* 0803df50 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803df52 */ LDR R0, [R4] \n\
/* 0803df54 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803df56 */ STR R5, [SP] \n\
/* 0803df58 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0803df5a */ LSLS R2, R2, 0x7 \n\
/* 0803df5c */ STR R2, [SP, 0x4] \n\
/* 0803df5e */ STR R7, [SP, 0x8] \n\
/* 0803df60 */ STR R7, [SP, 0xC] \n\
/* 0803df62 */ STR R7, [SP, 0x10] \n\
/* 0803df64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803df66 */ MOVS R3, 0x6E @ Set R3 to 0x6E \n\
/* 0803df68 */ BL func_0804d160 \n\
/* 0803df6c */ LSLS R0, R0, 0x10 \n\
/* 0803df6e */ ASRS R0, R0, 0x10 \n\
/* 0803df70 */ BL func_0803dd84 \n\
/* 0803df74 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0803df76 */ BL tap_trial_get_anim \n\
/* 0803df7a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803df7c */ LDR R0, [R4] \n\
/* 0803df7e */ STR R5, [SP] \n\
/* 0803df80 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0803df82 */ LSLS R3, R3, 0x7 \n\
/* 0803df84 */ STR R3, [SP, 0x4] \n\
/* 0803df86 */ STR R7, [SP, 0x8] \n\
/* 0803df88 */ STR R7, [SP, 0xC] \n\
/* 0803df8a */ STR R7, [SP, 0x10] \n\
/* 0803df8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803df8e */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 0803df90 */ BL func_0804d160 \n\
/* 0803df94 */ LSLS R0, R0, 0x10 \n\
/* 0803df96 */ ASRS R0, R0, 0x10 \n\
/* 0803df98 */ BL func_0803dd84 \n\
/* 0803df9c */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0803df9e */ BL tap_trial_get_anim \n\
/* 0803dfa2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803dfa4 */ LDR R0, [R4] \n\
/* 0803dfa6 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0803dfa8 */ STR R2, [SP] \n\
/* 0803dfaa */ LDR R2, =0x4864 \n\
/* 0803dfac */ STR R2, [SP, 0x4] \n\
/* 0803dfae */ STR R7, [SP, 0x8] \n\
/* 0803dfb0 */ STR R7, [SP, 0xC] \n\
/* 0803dfb2 */ STR R7, [SP, 0x10] \n\
/* 0803dfb4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803dfb6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803dfb8 */ BL func_0804d160 \n\
/* 0803dfbc */ MOV R5, R10 @ Set R5 to R10 \n\
/* 0803dfbe */ LDR R1, [R5] \n\
/* 0803dfc0 */ STRH R0, [R1, 0x18] \n\
/* 0803dfc2 */ LDR R0, [R4] \n\
/* 0803dfc4 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 0803dfc6 */ LDRSH R1, [R1, R2] \n\
/* 0803dfc8 */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 0803dfca */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0803dfcc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803dfce */ BL func_0804d5d4 \n\
/* 0803dfd2 */ LDR R0, [R5] \n\
/* 0803dfd4 */ LDR R0, [R0, 0x4] \n\
/* 0803dfd6 */ LDR R1, =D_0805a8bc \n\
/* 0803dfd8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803dfda */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0803dfdc */ BL bmp_font_obj_print_c \n\
/* 0803dfe0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803dfe2 */ LDR R0, [R4] \n\
/* 0803dfe4 */ MOVS R1, 0x86 @ Set R1 to 0x86 \n\
/* 0803dfe6 */ STR R1, [SP] \n\
/* 0803dfe8 */ STR R7, [SP, 0x4] \n\
/* 0803dfea */ STR R7, [SP, 0x8] \n\
/* 0803dfec */ STR R7, [SP, 0xC] \n\
/* 0803dfee */ STR R7, [SP, 0x10] \n\
/* 0803dff0 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0803dff2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803dff4 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803dff6 */ BL func_0804d160 \n\
/* 0803dffa */ LDR R1, [R5] \n\
/* 0803dffc */ STRH R0, [R1, 0x1A] \n\
/* 0803dffe */ STRH R7, [R1, 0x1C] \n\
/* 0803e000 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e002 */ STRB R3, [R1, 0x1E] \n\
/* 0803e004 */ LDR R0, [R5] \n\
/* 0803e006 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0803e008 */ BL init_drumtech \n\
/* 0803e00c */ LDR R4, [R5] \n\
/* 0803e00e */ MOVS R5, 0xDD @ Set R5 to 0xDD \n\
/* 0803e010 */ LSLS R5, R5, 0x2 \n\
/* 0803e012 */ ADDS R3, R4, R5 @ Set R3 to R4 + R5 \n\
/* 0803e014 */ MOVS R0, 0xDE @ Set R0 to 0xDE \n\
/* 0803e016 */ LSLS R0, R0, 0x2 \n\
/* 0803e018 */ ADDS R2, R4, R0 @ Set R2 to R4 + R0 \n\
/* 0803e01a */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 0803e01c */ ADDS R1, R4, R5 @ Set R1 to R4 + R5 \n\
/* 0803e01e */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 0803e020 */ ADDS R0, R4, R5 @ Set R0 to R4 + R5 \n\
/* 0803e022 */ STR R7, [R0] \n\
/* 0803e024 */ STR R7, [R1] \n\
/* 0803e026 */ STR R7, [R2] \n\
/* 0803e028 */ STR R7, [R3] \n\
/* 0803e02a */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 0803e02c */ LSLS R0, R0, 0x2 \n\
/* 0803e02e */ ADDS R3, R4, R0 @ Set R3 to R4 + R0 \n\
/* 0803e030 */ MOVS R1, 0xE1 @ Set R1 to 0xE1 \n\
/* 0803e032 */ LSLS R1, R1, 0x2 \n\
/* 0803e034 */ ADDS R2, R4, R1 @ Set R2 to R4 + R1 \n\
/* 0803e036 */ SUBS R5, 0x4 @ Subtract 0x4 from R5 \n\
/* 0803e038 */ ADDS R1, R4, R5 @ Set R1 to R4 + R5 \n\
/* 0803e03a */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 0803e03c */ ADDS R0, R4, R5 @ Set R0 to R4 + R5 \n\
/* 0803e03e */ STR R7, [R0] \n\
/* 0803e040 */ STR R7, [R1] \n\
/* 0803e042 */ STR R7, [R2] \n\
/* 0803e044 */ STR R7, [R3] \n\
/* 0803e046 */ MOVS R1, 0xE5 @ Set R1 to 0xE5 \n\
/* 0803e048 */ LSLS R1, R1, 0x2 \n\
/* 0803e04a */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 0803e04c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e04e */ STRB R2, [R0] \n\
/* 0803e050 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803e052 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803e054 */ BL gameplay_set_input_buttons \n\
/* 0803e058 */ ADD SP, 0x14 \n\
/* 0803e05a */ POP {R3-R5} \n\
/* 0803e05c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803e05e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803e060 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803e062 */ POP {R4-R7} \n\
/* 0803e064 */ POP {R0} \n\
/* 0803e066 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
