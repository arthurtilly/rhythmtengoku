asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b0b0 \n\
/* 0801b0b0 */ PUSH {R4, R5, LR} \n\
/* 0801b0b2 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0801b0b4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801b0b6 */ LDR R1, =s_menu_cursor1_seqData \n\
/* 0801b0b8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b0ba */ BL play_sound_in_player \n\
/* 0801b0be */ LDR R0, =D_030046a4 \n\
/* 0801b0c0 */ LDR R1, [R0] \n\
/* 0801b0c2 */ MOVS R2, 0xD7 @ Set R2 to 0xD7 \n\
/* 0801b0c4 */ LSLS R2, R2, 0x2 \n\
/* 0801b0c6 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801b0c8 */ LDRB R0, [R0] \n\
/* 0801b0ca */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0801b0cc */ BNE branch_0801b0d0 \n\
/* 0801b0ce */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_0801b0d0: \n\
/* 0801b0d0 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0801b0d2 */ BNE branch_0801b0d6 \n\
/* 0801b0d4 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_0801b0d6: \n\
/* 0801b0d6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801b0d8 */ BEQ branch_0801b12e \n\
/* 0801b0da */ LDR R2, =0x48e \n\
/* 0801b0dc */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801b0de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b0e0 */ LDRSH R0, [R0, R2] \n\
/* 0801b0e2 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0801b0e4 */ BNE branch_0801b108 \n\
/* 0801b0e6 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801b0e8 */ LSLS R2, R2, 0x2 \n\
/* 0801b0ea */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801b0ec */ LDR R0, [R0] \n\
/* 0801b0ee */ LDR R1, =anim_studio_selection_item \n\
/* 0801b0f0 */ BL func_0800b4d8 \n\
/* 0801b0f4 */ B branch_0801b12e \n\
\n\
.ltorg \n\
 \n\
branch_0801b108: \n\
/* 0801b108 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0801b10a */ BCS branch_0801b120 \n\
/* 0801b10c */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801b10e */ LSLS R2, R2, 0x2 \n\
/* 0801b110 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801b112 */ LDR R0, [R0] \n\
/* 0801b114 */ LDR R1, =anim_studio_item_move_above \n\
/* 0801b116 */ BL func_0800b4d8 \n\
/* 0801b11a */ B branch_0801b12e \n\
\n\
.ltorg \n\
 \n\
branch_0801b120: \n\
/* 0801b120 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801b122 */ LSLS R2, R2, 0x2 \n\
/* 0801b124 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801b126 */ LDR R0, [R0] \n\
/* 0801b128 */ LDR R1, =anim_studio_item_move_below \n\
/* 0801b12a */ BL func_0800b4d8 \n\
 \n\
branch_0801b12e: \n\
/* 0801b12e */ POP {R4, R5} \n\
/* 0801b130 */ POP {R0} \n\
/* 0801b132 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
