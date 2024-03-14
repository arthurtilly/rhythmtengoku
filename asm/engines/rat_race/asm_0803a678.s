asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a678 \n\
/* 0803a678 */ PUSH {R4-R6, LR} \n\
/* 0803a67a */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0803a67c */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0803a67e */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0803a680 */ PUSH {R4-R6} \n\
/* 0803a682 */ SUB SP, 0x18 \n\
/* 0803a684 */ LDR R6, =gCurrentEngineData \n\
/* 0803a686 */ LDR R0, [R6] \n\
/* 0803a688 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803a68a */ ADDS R1, 0x80 @ Add 0x80 to R1 \n\
/* 0803a68c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803a68e */ STR R4, [R1] \n\
/* 0803a690 */ ADDS R0, 0x7C @ Add 0x7C to R0 \n\
/* 0803a692 */ STRB R4, [R0] \n\
/* 0803a694 */ LDR R0, [R6] \n\
/* 0803a696 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0803a698 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0803a69a */ LSLS R1, R1, 0x7 \n\
/* 0803a69c */ STR R1, [R0] \n\
/* 0803a69e */ LDR R5, =gSpriteHandler \n\
/* 0803a6a0 */ LDR R0, [R5] \n\
/* 0803a6a2 */ LDR R1, =anim_cat_pupils \n\
/* 0803a6a4 */ MOVS R2, 0x94 @ Set R2 to 0x94 \n\
/* 0803a6a6 */ STR R2, [SP] \n\
/* 0803a6a8 */ LDR R2, =0xc00a \n\
/* 0803a6aa */ STR R2, [SP, 0x4] \n\
/* 0803a6ac */ STR R4, [SP, 0x8] \n\
/* 0803a6ae */ STR R4, [SP, 0xC] \n\
/* 0803a6b0 */ STR R4, [SP, 0x10] \n\
/* 0803a6b2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803a6b4 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803a6b6 */ BL sprite_create \n\
/* 0803a6ba */ LDR R2, [R6] \n\
/* 0803a6bc */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0803a6be */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 0803a6c0 */ STRH R0, [R1] \n\
/* 0803a6c2 */ LDR R0, [R5] \n\
/* 0803a6c4 */ LDR R1, =anim_cat_eyelids \n\
/* 0803a6c6 */ ADDS R2, 0x84 @ Add 0x84 to R2 \n\
/* 0803a6c8 */ LDR R2, [R2] \n\
/* 0803a6ca */ ASRS R2, R2, 0x8 \n\
/* 0803a6cc */ ADDS R2, 0x44 @ Add 0x44 to R2 \n\
/* 0803a6ce */ LSLS R2, R2, 0x10 \n\
/* 0803a6d0 */ ASRS R2, R2, 0x10 \n\
/* 0803a6d2 */ STR R2, [SP] \n\
/* 0803a6d4 */ LDR R2, =0xc005 \n\
/* 0803a6d6 */ STR R2, [SP, 0x4] \n\
/* 0803a6d8 */ STR R4, [SP, 0x8] \n\
/* 0803a6da */ STR R4, [SP, 0xC] \n\
/* 0803a6dc */ STR R4, [SP, 0x10] \n\
/* 0803a6de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a6e0 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803a6e2 */ BL sprite_create \n\
/* 0803a6e6 */ LDR R1, [R6] \n\
/* 0803a6e8 */ ADDS R1, 0x76 @ Add 0x76 to R1 \n\
/* 0803a6ea */ STRH R0, [R1] \n\
/* 0803a6ec */ LDR R0, [R5] \n\
/* 0803a6ee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a6f0 */ LDRSH R1, [R1, R2] \n\
/* 0803a6f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a6f4 */ BL sprite_set_visible \n\
/* 0803a6f8 */ LDR R0, [R5] \n\
/* 0803a6fa */ LDR R1, =anim_cat_paw \n\
/* 0803a6fc */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0803a6fe */ MOVS R2, 0x58 @ Set R2 to 0x58 \n\
/* 0803a700 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0803a702 */ STR R2, [SP] \n\
/* 0803a704 */ LDR R1, =0x8005 \n\
/* 0803a706 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0803a708 */ STR R1, [SP, 0x4] \n\
/* 0803a70a */ STR R4, [SP, 0x8] \n\
/* 0803a70c */ STR R4, [SP, 0xC] \n\
/* 0803a70e */ STR R4, [SP, 0x10] \n\
/* 0803a710 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0803a712 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a714 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803a716 */ BL sprite_create \n\
/* 0803a71a */ LDR R1, [R6] \n\
/* 0803a71c */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0803a71e */ STRH R0, [R1] \n\
/* 0803a720 */ LDR R0, [R5] \n\
/* 0803a722 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803a724 */ STR R2, [SP] \n\
/* 0803a726 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803a728 */ STR R1, [SP, 0x4] \n\
/* 0803a72a */ STR R4, [SP, 0x8] \n\
/* 0803a72c */ STR R4, [SP, 0xC] \n\
/* 0803a72e */ STR R4, [SP, 0x10] \n\
/* 0803a730 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803a732 */ LSLS R1, R1, 0x5 \n\
/* 0803a734 */ STR R1, [SP, 0x14] \n\
/* 0803a736 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0803a738 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a73a */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803a73c */ BL sprite_create_w_attr \n\
/* 0803a740 */ LDR R1, [R6] \n\
/* 0803a742 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803a744 */ ADDS R2, 0x7A @ Add 0x7A to R2 \n\
/* 0803a746 */ STRH R0, [R2] \n\
/* 0803a748 */ LDR R0, [R5] \n\
/* 0803a74a */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0803a74c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a74e */ LDRSH R1, [R1, R2] \n\
/* 0803a750 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a752 */ BL sprite_set_visible \n\
/* 0803a756 */ LDR R0, [R5] \n\
/* 0803a758 */ LDR R1, [R6] \n\
/* 0803a75a */ ADDS R1, 0x7A @ Add 0x7A to R1 \n\
/* 0803a75c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a75e */ LDRSH R1, [R1, R2] \n\
/* 0803a760 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a762 */ BL sprite_set_visible \n\
/* 0803a766 */ ADD SP, 0x18 \n\
/* 0803a768 */ POP {R3-R5} \n\
/* 0803a76a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803a76c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803a76e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803a770 */ POP {R4-R6} \n\
/* 0803a772 */ POP {R0} \n\
/* 0803a774 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
