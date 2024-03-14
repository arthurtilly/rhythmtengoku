asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080357c4 \n\
/* 080357c4 */ PUSH {R4-R7, LR} \n\
/* 080357c6 */ SUB SP, 0x4 \n\
/* 080357c8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080357ca */ LDR R0, =gSpriteHandler \n\
/* 080357cc */ LDR R0, [R0] \n\
/* 080357ce */ LDR R5, =gCurrentEngineData \n\
/* 080357d0 */ LDR R1, [R5] \n\
/* 080357d2 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 080357d4 */ LDRSH R1, [R1, R2] \n\
/* 080357d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080357d8 */ BL sprite_set_anim_cel \n\
/* 080357dc */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080357de */ BEQ branch_080357e6 \n\
/* 080357e0 */ LDR R0, =s_metro_count1_seqData \n\
/* 080357e2 */ BL play_sound \n\
 \n\
branch_080357e6: \n\
/* 080357e6 */ LDR R1, [R5] \n\
/* 080357e8 */ LDRH R2, [R1, 0x2C] \n\
/* 080357ea */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080357ec */ BEQ branch_0803582a \n\
/* 080357ee */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080357f0 */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 080357f2 */ LDRB R0, [R0] \n\
/* 080357f4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080357f6 */ BEQ branch_0803582a \n\
/* 080357f8 */ SUBS R0, R2, 0x1 @ Set R0 to R2 - 0x1 \n\
/* 080357fa */ STRH R0, [R1, 0x2C] \n\
/* 080357fc */ BL func_080359e8 \n\
/* 08035800 */ LDR R0, [R5] \n\
/* 08035802 */ LDRH R0, [R0, 0x2C] \n\
/* 08035804 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08035806 */ BEQ branch_08035824 \n\
/* 08035808 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803580a */ BHI branch_0803582a \n\
/* 0803580c */ LDR R0, =s_metro_count2_seqData \n\
/* 0803580e */ BL play_sound \n\
/* 08035812 */ B branch_0803582a \n\
\n\
.ltorg \n\
 \n\
branch_08035824: \n\
/* 08035824 */ LDR R0, =s_metro_tin_seqData \n\
/* 08035826 */ BL play_sound \n\
 \n\
branch_0803582a: \n\
/* 0803582a */ LDR R6, =gCurrentEngineData \n\
/* 0803582c */ LDR R1, [R6] \n\
/* 0803582e */ LDRB R0, [R1, 0xC] \n\
/* 08035830 */ ADDS R5, R0, 0x1 @ Set R5 to R0 + 0x1 \n\
/* 08035832 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08035834 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 08035836 */ LSLS R2, R5, 0x1 \n\
/* 08035838 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803583a */ ADDS R0, 0x1C @ Add 0x1C to R0 \n\
/* 0803583c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803583e */ LDRH R4, [R0] \n\
/* 08035840 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 08035842 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08035844 */ LDRB R0, [R1] \n\
/* 08035846 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08035848 */ BEQ branch_0803585c \n\
/* 0803584a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803584c */ BLE branch_080358a4 \n\
/* 0803584e */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08035850 */ BEQ branch_08035874 \n\
/* 08035852 */ B branch_080358a4 \n\
\n\
.ltorg \n\
 \n\
branch_0803585c: \n\
/* 0803585c */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803585e */ BL ticks_to_frames \n\
/* 08035862 */ LSLS R0, R0, 0x10 \n\
/* 08035864 */ LSRS R0, R0, 0x10 \n\
/* 08035866 */ LSLS R4, R4, 0x10 \n\
/* 08035868 */ ASRS R4, R4, 0x10 \n\
/* 0803586a */ LDR R2, =D_089e5890 \n\
/* 0803586c */ B branch_08035884 \n\
\n\
.ltorg \n\
 \n\
branch_08035874: \n\
/* 08035874 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08035876 */ BL ticks_to_frames \n\
/* 0803587a */ LSLS R0, R0, 0x10 \n\
/* 0803587c */ LSRS R0, R0, 0x10 \n\
/* 0803587e */ LSLS R4, R4, 0x10 \n\
/* 08035880 */ ASRS R4, R4, 0x10 \n\
/* 08035882 */ LDR R2, =D_089e58a0 \n\
 \n\
branch_08035884: \n\
/* 08035884 */ LSLS R1, R5, 0x3 \n\
/* 08035886 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08035888 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803588a */ LDRSH R2, [R1, R3] \n\
/* 0803588c */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 0803588e */ LDRSH R3, [R1, R7] \n\
/* 08035890 */ STR R0, [SP] \n\
/* 08035892 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08035894 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08035896 */ BL scene_move_sprite_sine_vel \n\
/* 0803589a */ LDR R0, [R6] \n\
/* 0803589c */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0803589e */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080358a0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080358a2 */ STRB R1, [R0] \n\
 \n\
branch_080358a4: \n\
/* 080358a4 */ ADD SP, 0x4 \n\
/* 080358a6 */ POP {R4-R7} \n\
/* 080358a8 */ POP {R0} \n\
/* 080358aa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
