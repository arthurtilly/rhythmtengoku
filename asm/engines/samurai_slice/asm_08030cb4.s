asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_engine_start \n\
/* 08030cb4 */ PUSH {R4-R7, LR} \n\
/* 08030cb6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08030cb8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08030cba */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08030cbc */ PUSH {R5-R7} \n\
/* 08030cbe */ SUB SP, 0x14 \n\
/* 08030cc0 */ LDR R1, =D_030055d0 \n\
/* 08030cc2 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08030cc4 */ LDR R1, [R1] \n\
/* 08030cc6 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 08030cc8 */ ADDS R7, 0x10 @ Add 0x10 to R7 \n\
/* 08030cca */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08030ccc */ ADDS R6, 0x90 @ Add 0x90 to R6 \n\
/* 08030cce */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08030cd0 */ STRB R0, [R1, 0x4] \n\
/* 08030cd2 */ BL samurai_slice_init_gfx1 \n\
/* 08030cd6 */ BL scene_show_obj_layer \n\
/* 08030cda */ STR R4, [SP] \n\
/* 08030cdc */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 08030cde */ STR R0, [SP, 0x4] \n\
/* 08030ce0 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08030ce2 */ LSLS R2, R2, 0x8 \n\
/* 08030ce4 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08030ce6 */ STR R2, [SP, 0x8] \n\
/* 08030ce8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08030cea */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08030cec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030cee */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030cf0 */ BL scene_set_bg_layer_display \n\
/* 08030cf4 */ STR R4, [SP] \n\
/* 08030cf6 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08030cf8 */ STR R0, [SP, 0x4] \n\
/* 08030cfa */ LDR R0, =0x8001 \n\
/* 08030cfc */ STR R0, [SP, 0x8] \n\
/* 08030cfe */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08030d00 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08030d02 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030d04 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030d06 */ BL scene_set_bg_layer_display \n\
/* 08030d0a */ STR R4, [SP] \n\
/* 08030d0c */ MOVS R0, 0x1B @ Set R0 to 0x1B \n\
/* 08030d0e */ STR R0, [SP, 0x4] \n\
/* 08030d10 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08030d12 */ STR R0, [SP, 0x8] \n\
/* 08030d14 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08030d16 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08030d18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030d1a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030d1c */ BL scene_set_bg_layer_display \n\
/* 08030d20 */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 08030d22 */ LSLS R0, R0, 0x2 \n\
/* 08030d24 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08030d26 */ BL func_0800c660 \n\
/* 08030d2a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08030d2c */ LDR R1, [R2] \n\
/* 08030d2e */ STR R0, [R1] \n\
/* 08030d30 */ LDR R1, =D_0805a5d0 \n\
/* 08030d32 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030d34 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030d36 */ BL bmp_font_obj_print_c \n\
/* 08030d3a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08030d3c */ LDR R5, =D_03005380 \n\
/* 08030d3e */ LDR R0, [R5] \n\
/* 08030d40 */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 08030d42 */ STR R2, [SP] \n\
/* 08030d44 */ STR R4, [SP, 0x4] \n\
/* 08030d46 */ STR R4, [SP, 0x8] \n\
/* 08030d48 */ STR R4, [SP, 0xC] \n\
/* 08030d4a */ STR R4, [SP, 0x10] \n\
/* 08030d4c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030d4e */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08030d50 */ BL func_0804d160 \n\
/* 08030d54 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08030d56 */ LDR R1, [R2] \n\
/* 08030d58 */ ADDS R1, 0x8A @ Add 0x8A to R1 \n\
/* 08030d5a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030d5c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08030d5e */ STRH R0, [R1] \n\
/* 08030d60 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08030d62 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08030d64 */ BL gameplay_set_input_buttons \n\
/* 08030d68 */ LDR R0, [R5] \n\
/* 08030d6a */ LDR R1, =anim_samurai_beat_1 \n\
/* 08030d6c */ MOVS R2, 0x7B @ Set R2 to 0x7B \n\
/* 08030d6e */ STR R2, [SP] \n\
/* 08030d70 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08030d72 */ STR R2, [SP, 0x4] \n\
/* 08030d74 */ STR R4, [SP, 0x8] \n\
/* 08030d76 */ STR R4, [SP, 0xC] \n\
/* 08030d78 */ STR R4, [SP, 0x10] \n\
/* 08030d7a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08030d7c */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 08030d7e */ BL func_0804d160 \n\
/* 08030d82 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08030d84 */ LDR R1, [R2] \n\
/* 08030d86 */ STRH R0, [R1, 0xC] \n\
/* 08030d88 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08030d8a */ STRB R0, [R1, 0xE] \n\
/* 08030d8c */ LDR R0, [R5] \n\
/* 08030d8e */ LDR R1, =anim_samurai_flames \n\
/* 08030d90 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08030d92 */ STR R2, [SP] \n\
/* 08030d94 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08030d96 */ STR R2, [SP, 0x4] \n\
/* 08030d98 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08030d9a */ STR R2, [SP, 0x8] \n\
/* 08030d9c */ STR R4, [SP, 0xC] \n\
/* 08030d9e */ STR R4, [SP, 0x10] \n\
/* 08030da0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030da2 */ MOVS R3, 0x14 @ Set R3 to 0x14 \n\
/* 08030da4 */ BL func_0804d160 \n\
/* 08030da8 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08030daa */ LDR R1, [R2] \n\
/* 08030dac */ MOVS R4, 0xED @ Set R4 to 0xED \n\
/* 08030dae */ LSLS R4, R4, 0x1 \n\
/* 08030db0 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08030db2 */ STRH R0, [R1] \n\
/* 08030db4 */ LDR R0, [R5] \n\
/* 08030db6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030db8 */ LDRSH R1, [R1, R2] \n\
/* 08030dba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030dbc */ BL func_0804d770 \n\
/* 08030dc0 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 08030dc2 */ LDR R0, [R4] \n\
/* 08030dc4 */ MOVS R1, 0xEE @ Set R1 to 0xEE \n\
/* 08030dc6 */ LSLS R1, R1, 0x1 \n\
/* 08030dc8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08030dca */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08030dcc */ STR R2, [R0] \n\
/* 08030dce */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08030dd0: \n\
/* 08030dd0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08030dd2 */ BL func_080319b4 \n\
/* 08030dd6 */ ADDS R7, 0x34 @ Add 0x34 to R7 \n\
/* 08030dd8 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 08030dda */ LSLS R0, R0, 0x18 \n\
/* 08030ddc */ LSRS R4, R0, 0x18 \n\
/* 08030dde */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08030de0 */ BLS branch_08030dd0 \n\
/* 08030de2 */ BL func_08032228 \n\
/* 08030de6 */ LDR R4, =D_03005380 \n\
/* 08030de8 */ LDR R0, [R4] \n\
/* 08030dea */ LDR R1, =anim_samurai_slice_effect \n\
/* 08030dec */ MOVS R2, 0x60 @ Set R2 to 0x60 \n\
/* 08030dee */ STR R2, [SP] \n\
/* 08030df0 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08030df2 */ STR R3, [SP, 0x4] \n\
/* 08030df4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08030df6 */ STR R2, [SP, 0x8] \n\
/* 08030df8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030dfa */ STR R2, [SP, 0xC] \n\
/* 08030dfc */ STR R3, [SP, 0x10] \n\
/* 08030dfe */ MOVS R3, 0x4A @ Set R3 to 0x4A \n\
/* 08030e00 */ BL func_0804d160 \n\
/* 08030e04 */ LDR R1, =D_030055d0 \n\
/* 08030e06 */ LDR R1, [R1] \n\
/* 08030e08 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 08030e0a */ STRH R0, [R1] \n\
/* 08030e0c */ LDR R0, [R4] \n\
/* 08030e0e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08030e10 */ LDRSH R1, [R1, R4] \n\
/* 08030e12 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030e14 */ BL func_0804d770 \n\
/* 08030e18 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08030e1a: \n\
/* 08030e1a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08030e1c */ BL func_080324b8 \n\
/* 08030e20 */ ADDS R6, 0x20 @ Add 0x20 to R6 \n\
/* 08030e22 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 08030e24 */ LSLS R0, R0, 0x18 \n\
/* 08030e26 */ LSRS R4, R0, 0x18 \n\
/* 08030e28 */ CMP R4, 0x9 @ Compare R4 and 0x9 \n\
/* 08030e2a */ BLS branch_08030e1a \n\
/* 08030e2c */ LDR R2, =D_030055d0 \n\
/* 08030e2e */ LDR R0, [R2] \n\
/* 08030e30 */ MOVS R1, 0xE8 @ Set R1 to 0xE8 \n\
/* 08030e32 */ LSLS R1, R1, 0x1 \n\
/* 08030e34 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08030e36 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08030e38 */ STRB R1, [R0] \n\
/* 08030e3a */ LDR R3, [R2] \n\
/* 08030e3c */ MOVS R2, 0xE9 @ Set R2 to 0xE9 \n\
/* 08030e3e */ LSLS R2, R2, 0x1 \n\
/* 08030e40 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 08030e42 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030e44 */ STRH R1, [R0] \n\
/* 08030e46 */ MOVS R4, 0xEC @ Set R4 to 0xEC \n\
/* 08030e48 */ LSLS R4, R4, 0x1 \n\
/* 08030e4a */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 08030e4c */ STRH R1, [R0] \n\
/* 08030e4e */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 08030e50 */ LSLS R1, R1, 0x1 \n\
/* 08030e52 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08030e54 */ STRB R2, [R0] \n\
/* 08030e56 */ ADD SP, 0x14 \n\
/* 08030e58 */ POP {R3-R5} \n\
/* 08030e5a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08030e5c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08030e5e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08030e60 */ POP {R4-R7} \n\
/* 08030e62 */ POP {R0} \n\
/* 08030e64 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
