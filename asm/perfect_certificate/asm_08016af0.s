asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016af0 \n\
/* 08016af0 */ PUSH {R4-R7, LR} \n\
/* 08016af2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08016af4 */ PUSH {R7} \n\
/* 08016af6 */ SUB SP, 0x10 \n\
/* 08016af8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016afa */ BL func_08007324 \n\
/* 08016afe */ BL func_080073f0 \n\
/* 08016b02 */ BL func_08016ab4 \n\
/* 08016b06 */ BL get_current_campaign \n\
/* 08016b0a */ LDR R4, =D_030046a4 \n\
/* 08016b0c */ LDR R1, [R4] \n\
/* 08016b0e */ STR R0, [R1, 0x8] \n\
/* 08016b10 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016b12 */ BLT branch_08016bf0 \n\
/* 08016b14 */ BL func_080191b8 \n\
/* 08016b18 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016b1a */ BEQ branch_08016bf0 \n\
/* 08016b1c */ LDR R2, =campaign_gifts_table \n\
/* 08016b1e */ LDR R0, [R4] \n\
/* 08016b20 */ LDR R3, [R0, 0x8] \n\
/* 08016b22 */ LSLS R0, R3, 0x3 \n\
/* 08016b24 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08016b26 */ LDRB R6, [R1, 0x2] \n\
/* 08016b28 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 08016b2a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08016b2c */ LDR R7, [R0] \n\
/* 08016b2e */ LDR R0, =D_030046a8 \n\
/* 08016b30 */ LDR R1, [R0] \n\
/* 08016b32 */ LDR R2, =0x246 \n\
/* 08016b34 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08016b36 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08016b38 */ LDRB R0, [R0] \n\
/* 08016b3a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016b3c */ BNE branch_08016bfe \n\
/* 08016b3e */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 08016b40 */ BEQ branch_08016b6c \n\
/* 08016b42 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 08016b44 */ BCC branch_08016b5c \n\
/* 08016b46 */ CMP R6, 0x2 @ Compare R6 and 0x2 \n\
/* 08016b48 */ BEQ branch_08016b7c \n\
/* 08016b4a */ B branch_08016b86 \n\
\n\
.ltorg \n\
 \n\
branch_08016b5c: \n\
/* 08016b5c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08016b5e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08016b60 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08016b62 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08016b64 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08016b66 */ BL func_0801adf0 \n\
/* 08016b6a */ B branch_08016b86 \n\
 \n\
branch_08016b6c: \n\
/* 08016b6c */ LDR R3, =0x28f \n\
/* 08016b6e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08016b70 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08016b72 */ STRB R6, [R0] \n\
/* 08016b74 */ B branch_08016b86 \n\
\n\
.ltorg \n\
 \n\
branch_08016b7c: \n\
/* 08016b7c */ LDR R2, =0x27b \n\
/* 08016b7e */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08016b80 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08016b82 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08016b84 */ STRB R1, [R0] \n\
 \n\
branch_08016b86: \n\
/* 08016b86 */ LDR R4, =D_030046a8 \n\
/* 08016b88 */ LDR R1, [R4] \n\
/* 08016b8a */ LDR R2, =0x245 \n\
/* 08016b8c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08016b8e */ LDRB R0, [R1] \n\
/* 08016b90 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08016b92 */ STRB R0, [R1] \n\
/* 08016b94 */ LDR R1, [R4] \n\
/* 08016b96 */ LDR R0, =D_030046a4 \n\
/* 08016b98 */ LDR R0, [R0] \n\
/* 08016b9a */ LDR R3, =0x246 \n\
/* 08016b9c */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08016b9e */ LDR R0, [R0, 0x8] \n\
/* 08016ba0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08016ba2 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08016ba4 */ STRB R5, [R1] \n\
/* 08016ba6 */ LDR R0, [R4] \n\
/* 08016ba8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08016baa */ LDRB R0, [R0] \n\
/* 08016bac */ CMP R0, 0x30 @ Compare R0 and 0x30 \n\
/* 08016bae */ BNE branch_08016bbe \n\
/* 08016bb0 */ BL func_08016d5c \n\
/* 08016bb4 */ LDR R0, [R4] \n\
/* 08016bb6 */ MOVS R1, 0xB2 @ Set R1 to 0xB2 \n\
/* 08016bb8 */ LSLS R1, R1, 0x2 \n\
/* 08016bba */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016bbc */ STR R5, [R0] \n\
 \n\
branch_08016bbe: \n\
/* 08016bbe */ LDR R1, [R4] \n\
/* 08016bc0 */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 08016bc2 */ LDRSB R0, [R1, R0] \n\
/* 08016bc4 */ LDRB R1, [R1, 0x13] \n\
/* 08016bc6 */ LSLS R1, R1, 0x18 \n\
/* 08016bc8 */ ASRS R1, R1, 0x18 \n\
/* 08016bca */ BL get_level_id_from_grid_xy \n\
/* 08016bce */ BL func_080108e8 \n\
/* 08016bd2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08016bd4 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08016bd6 */ BL results_save_to_cart \n\
/* 08016bda */ B branch_08016bfe \n\
\n\
.ltorg \n\
 \n\
branch_08016bf0: \n\
/* 08016bf0 */ LDR R0, =D_030046a4 \n\
/* 08016bf2 */ LDR R1, [R0] \n\
/* 08016bf4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016bf6 */ STR R0, [R1, 0x8] \n\
/* 08016bf8 */ LDR R0, =campaign_gifts_table \n\
/* 08016bfa */ LDRB R6, [R0, 0x2] \n\
/* 08016bfc */ LDR R7, [R0, 0x4] \n\
 \n\
branch_08016bfe: \n\
/* 08016bfe */ BL get_current_mem_id \n\
/* 08016c02 */ LSLS R0, R0, 0x10 \n\
/* 08016c04 */ LSRS R0, R0, 0x10 \n\
/* 08016c06 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08016c08 */ MOVS R2, 0xEE @ Set R2 to 0xEE \n\
/* 08016c0a */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08016c0c */ BL text_printer_create_new \n\
/* 08016c10 */ LDR R5, =D_030046a4 \n\
/* 08016c12 */ LDR R1, [R5] \n\
/* 08016c14 */ STR R0, [R1] \n\
/* 08016c16 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08016c18 */ MOVS R2, 0x58 @ Set R2 to 0x58 \n\
/* 08016c1a */ BL text_printer_set_x_y \n\
/* 08016c1e */ LDR R0, [R5] \n\
/* 08016c20 */ LDR R0, [R0] \n\
/* 08016c22 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08016c24 */ LSLS R1, R1, 0x4 \n\
/* 08016c26 */ BL text_printer_set_layer \n\
/* 08016c2a */ LDR R0, [R5] \n\
/* 08016c2c */ LDR R0, [R0] \n\
/* 08016c2e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08016c30 */ BL text_printer_set_colors \n\
/* 08016c34 */ LDR R0, [R5] \n\
/* 08016c36 */ LDR R0, [R0] \n\
/* 08016c38 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08016c3a */ BL text_printer_set_palette \n\
/* 08016c3e */ LDR R0, [R5] \n\
/* 08016c40 */ LDR R0, [R0] \n\
/* 08016c42 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08016c44 */ BL text_printer_set_line_spacing \n\
/* 08016c48 */ LDR R0, [R5] \n\
/* 08016c4a */ LDR R0, [R0] \n\
/* 08016c4c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08016c4e */ BL text_printer_center_by_content \n\
/* 08016c52 */ LDR R0, =D_030046a8 \n\
/* 08016c54 */ LDR R0, [R0] \n\
/* 08016c56 */ LDR R2, =0x245 \n\
/* 08016c58 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08016c5a */ LDRB R1, [R0] \n\
/* 08016c5c */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08016c5e */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08016c60 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08016c62 */ MOV R0, SP @ Set R0 to SP \n\
/* 08016c64 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08016c66 */ BL strint \n\
/* 08016c6a */ LDR R0, [R5] \n\
/* 08016c6c */ LDR R1, =D_08054acc \n\
/* 08016c6e */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016c70 */ MOVS R2, 0x11 @ Set R2 to 0x11 \n\
/* 08016c72 */ BL memcpy \n\
/* 08016c76 */ LDR R0, [R5] \n\
/* 08016c78 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08016c7a */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 08016c7c */ LDR R0, [R0, 0x8] \n\
/* 08016c7e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08016c80 */ BL get_campaign_gift_title \n\
/* 08016c84 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08016c86 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08016c88 */ BL strcat \n\
/* 08016c8c */ LDR R0, [R5] \n\
/* 08016c8e */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016c90 */ LDR R1, =D_08054ae0 \n\
/* 08016c92 */ BL strcat \n\
/* 08016c96 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08016c98 */ BNE branch_08016cac \n\
/* 08016c9a */ CMP R7, 0x6 @ Compare R7 and 0x6 \n\
/* 08016c9c */ BHI branch_08016ca2 \n\
/* 08016c9e */ CMP R7, 0x5 @ Compare R7 and 0x5 \n\
/* 08016ca0 */ BCS branch_08016cac \n\
 \n\
branch_08016ca2: \n\
/* 08016ca2 */ LDR R0, [R5] \n\
/* 08016ca4 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016ca6 */ LDR R1, =D_08054ae4 \n\
/* 08016ca8 */ BL strcat \n\
 \n\
branch_08016cac: \n\
/* 08016cac */ LDR R4, =D_030046a4 \n\
/* 08016cae */ LDR R0, [R4] \n\
/* 08016cb0 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016cb2 */ LDR R1, =D_08054aec \n\
/* 08016cb4 */ BL strcat \n\
/* 08016cb8 */ LDR R0, [R4] \n\
/* 08016cba */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016cbc */ LDR R2, =perfect_gift_directive_text \n\
/* 08016cbe */ LSLS R1, R6, 0x2 \n\
/* 08016cc0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08016cc2 */ LDR R1, [R1] \n\
/* 08016cc4 */ BL strcat \n\
/* 08016cc8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08016cca */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08016ccc */ BEQ branch_08016d1c \n\
/* 08016cce */ LDR R0, [R4] \n\
/* 08016cd0 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016cd2 */ LDR R1, =D_08054b00 \n\
/* 08016cd4 */ BL strcat \n\
/* 08016cd8 */ LDR R0, [R4] \n\
/* 08016cda */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016cdc */ MOV R1, SP @ Set R1 to SP \n\
/* 08016cde */ BL strcat \n\
/* 08016ce2 */ LDR R0, [R4] \n\
/* 08016ce4 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016ce6 */ LDR R1, =D_08054b1c \n\
/* 08016ce8 */ BL strcat \n\
/* 08016cec */ B branch_08016d30 \n\
\n\
.ltorg \n\
 \n\
branch_08016d1c: \n\
/* 08016d1c */ LDR R0, [R4] \n\
/* 08016d1e */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016d20 */ LDR R1, =D_08054b5c \n\
/* 08016d22 */ BL strcat \n\
/* 08016d26 */ LDR R0, [R4] \n\
/* 08016d28 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08016d2a */ LDR R1, =D_08054b88 \n\
/* 08016d2c */ BL strcat \n\
 \n\
branch_08016d30: \n\
/* 08016d30 */ LDR R4, =D_030046a4 \n\
/* 08016d32 */ LDR R1, [R4] \n\
/* 08016d34 */ LDR R0, [R1] \n\
/* 08016d36 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 08016d38 */ BL text_printer_set_string \n\
/* 08016d3c */ LDR R1, [R4] \n\
/* 08016d3e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016d40 */ STR R0, [R1, 0x4] \n\
/* 08016d42 */ ADD SP, 0x10 \n\
/* 08016d44 */ POP {R3} \n\
/* 08016d46 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08016d48 */ POP {R4-R7} \n\
/* 08016d4a */ POP {R0} \n\
/* 08016d4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
