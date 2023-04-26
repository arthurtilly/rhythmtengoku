asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_engine_start \n\
/* 08022e58 */ PUSH {R4-R6, LR} \n\
/* 08022e5a */ SUB SP, 0xC \n\
/* 08022e5c */ LDR R4, =gCurrentEngineData \n\
/* 08022e5e */ LDR R1, [R4] \n\
/* 08022e60 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08022e62 */ STRB R0, [R1] \n\
/* 08022e64 */ BL mannequin_init_gfx1 \n\
/* 08022e68 */ BL scene_show_obj_layer \n\
/* 08022e6c */ LDR R0, [R4] \n\
/* 08022e6e */ LDRB R0, [R0] \n\
/* 08022e70 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08022e72 */ BNE branch_08022e90 \n\
/* 08022e74 */ STR R5, [SP] \n\
/* 08022e76 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08022e78 */ STR R0, [SP, 0x4] \n\
/* 08022e7a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08022e7c */ STR R0, [SP, 0x8] \n\
/* 08022e7e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08022e80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022e82 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08022e84 */ BL scene_set_bg_layer_display \n\
/* 08022e88 */ B branch_08022ea4 \n\
\n\
.ltorg \n\
 \n\
branch_08022e90: \n\
/* 08022e90 */ STR R5, [SP] \n\
/* 08022e92 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08022e94 */ STR R0, [SP, 0x4] \n\
/* 08022e96 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08022e98 */ STR R0, [SP, 0x8] \n\
/* 08022e9a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08022e9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022e9e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08022ea0 */ BL scene_set_bg_layer_display \n\
 \n\
branch_08022ea4: \n\
/* 08022ea4 */ BL func_08022bb4 \n\
/* 08022ea8 */ BL func_080224a8 \n\
/* 08022eac */ BL func_08022244 \n\
/* 08022eb0 */ LDR R4, =gCurrentEngineData \n\
/* 08022eb2 */ LDR R0, [R4] \n\
/* 08022eb4 */ ADDS R0, 0xBC @ Add 0xBC to R0 \n\
/* 08022eb6 */ BL init_drumtech \n\
/* 08022eba */ BL func_0802327c \n\
/* 08022ebe */ LDR R1, [R4] \n\
/* 08022ec0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08022ec2 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08022ec4 */ MOVS R0, 0x21 @ Set R0 to 0x21 \n\
/* 08022ec6 */ STRH R0, [R1, 0x2] \n\
/* 08022ec8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08022eca */ BL gameplay_set_input_buttons \n\
/* 08022ece */ LDR R0, [R4] \n\
/* 08022ed0 */ LDR R1, =0x0000040c \n\
/* 08022ed2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08022ed4 */ STRB R5, [R0] \n\
/* 08022ed6 */ LDR R0, [R4] \n\
/* 08022ed8 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 08022eda */ LSLS R2, R2, 0x3 \n\
/* 08022edc */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08022ede */ STR R6, [R1] \n\
/* 08022ee0 */ LDR R1, =0x00000414 \n\
/* 08022ee2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08022ee4 */ STRB R5, [R0] \n\
/* 08022ee6 */ ADD SP, 0xC \n\
/* 08022ee8 */ POP {R4-R6} \n\
/* 08022eea */ POP {R0} \n\
/* 08022eec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
