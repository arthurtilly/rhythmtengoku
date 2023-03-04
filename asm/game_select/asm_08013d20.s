asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013d20 \n\
/* 08013d20 */ PUSH {R4-R7, LR} \n\
/* 08013d22 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08013d24 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08013d26 */ PUSH {R6, R7} \n\
/* 08013d28 */ BL func_080141a4 \n\
/* 08013d2c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013d2e */ BNE branch_08013d32 \n\
/* 08013d30 */ B branch_08013f7e \n\
 \n\
branch_08013d32: \n\
/* 08013d32 */ BL func_08013d18 \n\
/* 08013d36 */ BL func_08013d1c \n\
/* 08013d3a */ BL func_08013c64 \n\
/* 08013d3e */ LDR R0, =D_03004afc \n\
/* 08013d40 */ LDRH R1, [R0] \n\
/* 08013d42 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08013d44 */ ANDS R5, R1 @ Set R5 to R5 & R1 \n\
/* 08013d46 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08013d48 */ BNE branch_08013d4c \n\
/* 08013d4a */ B branch_08013f30 \n\
 \n\
branch_08013d4c: \n\
/* 08013d4c */ LDR R4, =D_030046a4 \n\
/* 08013d4e */ LDR R1, [R4] \n\
/* 08013d50 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08013d52 */ LDRSB R0, [R1, R0] \n\
/* 08013d54 */ LDRB R1, [R1, 0x11] \n\
/* 08013d56 */ LSLS R1, R1, 0x18 \n\
/* 08013d58 */ ASRS R1, R1, 0x18 \n\
/* 08013d5a */ BL func_0801317c \n\
/* 08013d5e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08013d60 */ SUBS R0, 0x3 @ Subtract 0x3 from R0 \n\
/* 08013d62 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08013d64 */ BLS branch_08013d68 \n\
/* 08013d66 */ B branch_08013f24 \n\
 \n\
branch_08013d68: \n\
/* 08013d68 */ LDR R2, =D_030046a8 \n\
/* 08013d6a */ LDR R1, [R2] \n\
/* 08013d6c */ LDR R0, [R4] \n\
/* 08013d6e */ LDRB R0, [R0, 0x10] \n\
/* 08013d70 */ STRB R0, [R1, 0x10] \n\
/* 08013d72 */ LDR R1, [R2] \n\
/* 08013d74 */ LDR R0, [R4] \n\
/* 08013d76 */ LDRB R0, [R0, 0x11] \n\
/* 08013d78 */ STRB R0, [R1, 0x11] \n\
/* 08013d7a */ LDR R1, [R4] \n\
/* 08013d7c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08013d7e */ LDRSB R0, [R1, R0] \n\
/* 08013d80 */ LDRB R1, [R1, 0x11] \n\
/* 08013d82 */ LSLS R1, R1, 0x18 \n\
/* 08013d84 */ ASRS R1, R1, 0x18 \n\
/* 08013d86 */ BL func_08013100 \n\
/* 08013d8a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08013d8c */ BL func_08013130 \n\
/* 08013d90 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08013d92 */ LDR R0, [R6] \n\
/* 08013d94 */ BL func_08000584 \n\
/* 08013d98 */ LDRB R0, [R6, 0xE] \n\
/* 08013d9a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013d9c */ BLT branch_08013e4c \n\
/* 08013d9e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08013da0 */ BLE branch_08013db4 \n\
/* 08013da2 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08013da4 */ BEQ branch_08013e08 \n\
/* 08013da6 */ B branch_08013e4c \n\
\n\
.ltorg \n\
 \n\
branch_08013db4: \n\
/* 08013db4 */ LDR R0, =D_089d77e4 \n\
/* 08013db6 */ LDR R5, =D_089d7c18 \n\
/* 08013db8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08013dba */ BL func_080006b0 \n\
/* 08013dbe */ LDR R0, =D_089d7964 \n\
/* 08013dc0 */ LDR R4, =D_089cdf08 \n\
/* 08013dc2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08013dc4 */ BL func_080006b0 \n\
/* 08013dc8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08013dca */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08013dcc */ BL func_080006b0 \n\
/* 08013dd0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08013dd2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08013dd4 */ BL func_080006d0 \n\
/* 08013dd8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08013dda */ BL gameplay_pause_menu_set_quit_destination \n\
/* 08013dde */ CMP R7, 0x2E @ Compare R7 and 0x2E \n\
/* 08013de0 */ BNE branch_08013dee \n\
/* 08013de2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08013de4 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08013de6 */ BNE branch_08013dee \n\
/* 08013de8 */ LDR R1, =D_03001324 \n\
/* 08013dea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08013dec */ STRB R0, [R1] \n\
 \n\
branch_08013dee: \n\
/* 08013dee */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08013df0 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08013df2 */ B branch_08013e4c \n\
\n\
.ltorg \n\
 \n\
branch_08013e08: \n\
/* 08013e08 */ CMP R7, 0x36 @ Compare R7 and 0x36 \n\
/* 08013e0a */ BNE branch_08013e38 \n\
/* 08013e0c */ LDR R0, [R6] \n\
/* 08013e0e */ LDR R4, =D_089d7c18 \n\
/* 08013e10 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08013e12 */ BL func_080006b0 \n\
/* 08013e16 */ LDR R5, =D_089cdf08 \n\
/* 08013e18 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08013e1a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08013e1c */ BL func_080006b0 \n\
/* 08013e20 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08013e22 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08013e24 */ BL func_080006d0 \n\
/* 08013e28 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08013e2a */ BL gameplay_pause_menu_set_quit_destination \n\
/* 08013e2e */ B branch_08013e48 \n\
\n\
.ltorg \n\
 \n\
branch_08013e38: \n\
/* 08013e38 */ LDR R0, [R6] \n\
/* 08013e3a */ LDR R4, =D_089cdf08 \n\
/* 08013e3c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08013e3e */ BL func_080006b0 \n\
/* 08013e42 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08013e44 */ BL gameplay_pause_menu_set_quit_destination \n\
 \n\
branch_08013e48: \n\
/* 08013e48 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08013e4a */ MOV R9, R2 @ Set R9 to R2 \n\
 \n\
branch_08013e4c: \n\
/* 08013e4c */ LDR R3, =D_030046a8 \n\
/* 08013e4e */ LDR R2, [R3] \n\
/* 08013e50 */ LDR R4, =D_030046a4 \n\
/* 08013e52 */ LDR R1, [R4] \n\
/* 08013e54 */ LDRB R0, [R1, 0x10] \n\
/* 08013e56 */ STRB R0, [R2, 0x12] \n\
/* 08013e58 */ LDRB R0, [R1, 0x10] \n\
/* 08013e5a */ STRB R0, [R2, 0x10] \n\
/* 08013e5c */ LDR R2, [R3] \n\
/* 08013e5e */ LDR R1, [R4] \n\
/* 08013e60 */ LDRB R0, [R1, 0x11] \n\
/* 08013e62 */ STRB R0, [R2, 0x13] \n\
/* 08013e64 */ LDRB R0, [R1, 0x11] \n\
/* 08013e66 */ STRB R0, [R2, 0x11] \n\
/* 08013e68 */ LDR R1, [R3] \n\
/* 08013e6a */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08013e6c */ STRB R0, [R1, 0x14] \n\
/* 08013e6e */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 08013e70 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08013e72 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013e74 */ BEQ branch_08013efc \n\
/* 08013e76 */ LDR R0, [R5] \n\
/* 08013e78 */ LDR R1, =0x276 \n\
/* 08013e7a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08013e7c */ LDRB R0, [R0] \n\
/* 08013e7e */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08013e80 */ BNE branch_08013efc \n\
/* 08013e82 */ LDR R2, [R4] \n\
/* 08013e84 */ LDR R4, =0x341 \n\
/* 08013e86 */ ADDS R3, R2, R4 @ Set R3 to R2 + R4 \n\
/* 08013e88 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013e8a */ LDRSB R0, [R3, R0] \n\
/* 08013e8c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013e8e */ BLT branch_08013efc \n\
/* 08013e90 */ ADDS R1, 0xCC @ Add 0xCC to R1 \n\
/* 08013e92 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08013e94 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08013e96 */ LDRSB R1, [R2, R1] \n\
/* 08013e98 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08013e9a */ LDRSH R0, [R0, R4] \n\
/* 08013e9c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08013e9e */ BNE branch_08013ef0 \n\
/* 08013ea0 */ MOVS R1, 0xD1 @ Set R1 to 0xD1 \n\
/* 08013ea2 */ LSLS R1, R1, 0x2 \n\
/* 08013ea4 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08013ea6 */ MOVS R1, 0x11 @ Set R1 to 0x11 \n\
/* 08013ea8 */ LDRSB R1, [R2, R1] \n\
/* 08013eaa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08013eac */ LDRSH R0, [R0, R2] \n\
/* 08013eae */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08013eb0 */ BNE branch_08013ef0 \n\
/* 08013eb2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013eb4 */ LDRSB R0, [R3, R0] \n\
/* 08013eb6 */ BL func_08012860 \n\
/* 08013eba */ LDR R1, [R5] \n\
/* 08013ebc */ LDR R4, =0x277 \n\
/* 08013ebe */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08013ec0 */ LDRB R0, [R1] \n\
/* 08013ec2 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08013ec4 */ STRB R0, [R1] \n\
/* 08013ec6 */ LDR R0, [R5] \n\
/* 08013ec8 */ LDR R1, =0x27a \n\
/* 08013eca */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08013ecc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013ece */ STRB R1, [R0] \n\
/* 08013ed0 */ B branch_08013efc \n\
\n\
.ltorg \n\
 \n\
branch_08013ef0: \n\
/* 08013ef0 */ LDR R1, [R5] \n\
/* 08013ef2 */ LDR R2, =0x277 \n\
/* 08013ef4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08013ef6 */ LDRB R0, [R1] \n\
/* 08013ef8 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08013efa */ STRB R0, [R1] \n\
 \n\
branch_08013efc: \n\
/* 08013efc */ BL write_game_save_data \n\
/* 08013f00 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013f02 */ BL pause_beatscript_scene \n\
/* 08013f06 */ LDR R0, =D_030046a4 \n\
/* 08013f08 */ LDR R1, [R0] \n\
/* 08013f0a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013f0c */ STR R0, [R1, 0x4] \n\
/* 08013f0e */ LDR R0, =s_menu_kettei1_seqData \n\
/* 08013f10 */ BL play_sound \n\
/* 08013f14 */ B branch_08013f7e \n\
\n\
.ltorg \n\
 \n\
branch_08013f24: \n\
/* 08013f24 */ LDR R0, =s_menu_error_seqData \n\
/* 08013f26 */ BL play_sound \n\
/* 08013f2a */ B branch_08013f7e \n\
\n\
.ltorg \n\
 \n\
branch_08013f30: \n\
/* 08013f30 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08013f32 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08013f34 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013f36 */ BEQ branch_08013f7e \n\
/* 08013f38 */ LDR R4, =D_089cde20 \n\
/* 08013f3a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08013f3c */ BL func_08000584 \n\
/* 08013f40 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08013f42 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013f44 */ BL func_080006d0 \n\
/* 08013f48 */ LDR R3, =D_030046a8 \n\
/* 08013f4a */ LDR R2, [R3] \n\
/* 08013f4c */ LDR R4, =D_030046a4 \n\
/* 08013f4e */ LDR R1, [R4] \n\
/* 08013f50 */ LDRB R0, [R1, 0x10] \n\
/* 08013f52 */ STRB R0, [R2, 0x12] \n\
/* 08013f54 */ LDRB R0, [R1, 0x10] \n\
/* 08013f56 */ STRB R0, [R2, 0x10] \n\
/* 08013f58 */ LDR R2, [R3] \n\
/* 08013f5a */ LDR R1, [R4] \n\
/* 08013f5c */ LDRB R0, [R1, 0x11] \n\
/* 08013f5e */ STRB R0, [R2, 0x13] \n\
/* 08013f60 */ LDRB R0, [R1, 0x11] \n\
/* 08013f62 */ STRB R0, [R2, 0x11] \n\
/* 08013f64 */ LDR R1, [R3] \n\
/* 08013f66 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08013f68 */ STRB R0, [R1, 0x14] \n\
/* 08013f6a */ BL write_game_save_data \n\
/* 08013f6e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013f70 */ BL pause_beatscript_scene \n\
/* 08013f74 */ LDR R0, [R4] \n\
/* 08013f76 */ STR R5, [R0, 0x4] \n\
/* 08013f78 */ LDR R0, =s_menu_cancel3_seqData \n\
/* 08013f7a */ BL play_sound \n\
 \n\
branch_08013f7e: \n\
/* 08013f7e */ POP {R3, R4} \n\
/* 08013f80 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08013f82 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08013f84 */ POP {R4-R7} \n\
/* 08013f86 */ POP {R0} \n\
/* 08013f88 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
