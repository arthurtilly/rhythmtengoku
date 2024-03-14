asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c5c8 \n\
/* 0802c5c8 */ PUSH {R4-R7, LR} \n\
/* 0802c5ca */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802c5cc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802c5ce */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802c5d0 */ PUSH {R5-R7} \n\
/* 0802c5d2 */ SUB SP, 0x28 \n\
/* 0802c5d4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802c5d6 */ STR R0, [SP, 0x1C] \n\
branch_0802c5d8: \n\
/* 0802c5d8 */ LDR R5, =D_089e3b14 \n\
/* 0802c5da */ LDR R0, =gCurrentEngineData \n\
/* 0802c5dc */ LDR R2, [R0] \n\
/* 0802c5de */ LDR R1, [SP, 0x1C] \n\
/* 0802c5e0 */ LSLS R4, R1, 0x2 \n\
/* 0802c5e2 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 0802c5e4 */ LSLS R1, R1, 0x3 \n\
/* 0802c5e6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c5e8 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802c5ea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802c5ec */ LDR R3, [R0] \n\
/* 0802c5ee */ ADDS R2, 0x24 @ Add 0x24 to R2 \n\
/* 0802c5f0 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0802c5f2 */ LDR R1, [R2] \n\
/* 0802c5f4 */ LSLS R2, R1, 0x2 \n\
/* 0802c5f6 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802c5f8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802c5fa */ LSLS R0, R0, 0x2 \n\
/* 0802c5fc */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802c5fe */ LDR R0, [R0] \n\
/* 0802c600 */ LSLS R0, R0, 0x8 \n\
/* 0802c602 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802c604 */ STR R4, [SP, 0x20] \n\
/* 0802c606 */ LDR R3, [SP, 0x1C] \n\
/* 0802c608 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0802c60a */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802c60c */ CMP R1, 0xB @ Compare R1 and 0xB \n\
/* 0802c60e */ BLS branch_0802c614 \n\
/* 0802c610 */ BL branch_0802ce28 \n\
 \n\
branch_0802c614: \n\
/* 0802c614 */ LDR R0, =jtbl_0802c628 \n\
/* 0802c616 */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0802c618 */ LDR R0, [R0] \n\
/* 0802c61a */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0802c628: \n\
.word jump_0802c658 \n\
.word jump_0802c66a \n\
.word jump_0802c71a \n\
.word jump_0802c7a8 \n\
.word jump_0802c850 \n\
.word jump_0802c850 \n\
.word jump_0802c954 \n\
.word jump_0802cca4 \n\
.word jump_0802cd7c \n\
.word jump_0802cb58 \n\
.word jump_0802cb58 \n\
.word jump_0802cb58 \n\
\n\
jump_0802c658: \n\
/* 0802c658 */ MOVS R0, 0x88 @ Set R0 to 0x88 \n\
/* 0802c65a */ LSLS R0, R0, 0x1 \n\
/* 0802c65c */ STR R0, [SP, 0x14] \n\
/* 0802c65e */ MOVS R0, 0xBC @ Set R0 to 0xBC \n\
/* 0802c660 */ STR R0, [SP, 0x18] \n\
/* 0802c662 */ LDR R4, [SP, 0x1C] \n\
/* 0802c664 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802c666 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802c668 */ B branch_0802ce28 \n\
\n\
jump_0802c66a: \n\
/* 0802c66a */ BL func_0800c398 \n\
/* 0802c66e */ LDR R5, =gCurrentEngineData \n\
/* 0802c670 */ LDR R2, [R5] \n\
/* 0802c672 */ LDR R3, [SP, 0x20] \n\
/* 0802c674 */ LDR R4, [SP, 0x1C] \n\
/* 0802c676 */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 0802c678 */ LSLS R4, R1, 0x3 \n\
/* 0802c67a */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0802c67c */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802c67e */ LDR R1, [R2] \n\
/* 0802c680 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802c682 */ STR R1, [R2] \n\
/* 0802c684 */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 0802c686 */ LSLS R7, R7, 0x1 \n\
/* 0802c688 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0802c68a */ STR R0, [SP] \n\
/* 0802c68c */ LDR R0, [R2] \n\
/* 0802c68e */ STR R0, [SP, 0x4] \n\
/* 0802c690 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802c692 */ STR R0, [SP, 0x8] \n\
/* 0802c694 */ ADD R1, SP, 0x14 \n\
/* 0802c696 */ STR R1, [SP, 0xC] \n\
/* 0802c698 */ ADD R0, SP, 0x18 \n\
/* 0802c69a */ STR R0, [SP, 0x10] \n\
/* 0802c69c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0802c69e */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 0802c6a0 */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 0802c6a2 */ MOVS R3, 0x68 @ Set R3 to 0x68 \n\
/* 0802c6a4 */ BL func_0802c55c \n\
/* 0802c6a8 */ LDR R6, =gSpriteHandler \n\
/* 0802c6aa */ LDR R0, [R6] \n\
/* 0802c6ac */ LDR R1, [R5] \n\
/* 0802c6ae */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c6b0 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802c6b2 */ LDRSH R1, [R1, R2] \n\
/* 0802c6b4 */ LDR R2, [SP, 0x14] \n\
/* 0802c6b6 */ LSLS R2, R2, 0x10 \n\
/* 0802c6b8 */ ASRS R2, R2, 0x10 \n\
/* 0802c6ba */ LDR R3, [SP, 0x18] \n\
/* 0802c6bc */ LSLS R3, R3, 0x10 \n\
/* 0802c6be */ ASRS R3, R3, 0x10 \n\
/* 0802c6c0 */ BL sprite_set_x_y \n\
/* 0802c6c4 */ LDR R0, [R5] \n\
/* 0802c6c6 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802c6c8 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c6ca */ LDR R0, [R0] \n\
/* 0802c6cc */ LDR R3, [SP, 0x1C] \n\
/* 0802c6ce */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0802c6d0 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802c6d2 */ CMP R0, R10 @ Compare R0 and R10 \n\
/* 0802c6d4 */ BGE branch_0802c6d8 \n\
/* 0802c6d6 */ B branch_0802ce28 \n\
 \n\
branch_0802c6d8: \n\
/* 0802c6d8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802c6da */ BL func_0802c36c \n\
/* 0802c6de */ LDR R2, [R5] \n\
/* 0802c6e0 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c6e2 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802c6e4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c6e6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802c6e8 */ STR R1, [R0] \n\
/* 0802c6ea */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c6ec */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802c6ee */ ADDS R3, R0, R4 @ Set R3 to R0 + R4 \n\
/* 0802c6f0 */ LDR R0, [R3] \n\
/* 0802c6f2 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802c6f4 */ BNE branch_0802c70c \n\
/* 0802c6f6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c6f8 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802c6fa */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c6fc */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802c6fe */ STR R1, [R0] \n\
/* 0802c700 */ LDR R0, [R3] \n\
/* 0802c702 */ B branch_0802c830 \n\
\n\
.ltorg \n\
 \n\
branch_0802c70c: \n\
/* 0802c70c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c70e */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802c710 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c712 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0802c714 */ STR R1, [R0] \n\
/* 0802c716 */ LDR R0, [R3] \n\
/* 0802c718 */ B branch_0802c78a \n\
\n\
jump_0802c71a: \n\
/* 0802c71a */ BL func_0800c398 \n\
/* 0802c71e */ LDR R5, =gCurrentEngineData \n\
/* 0802c720 */ LDR R2, [R5] \n\
/* 0802c722 */ LDR R3, [SP, 0x20] \n\
/* 0802c724 */ LDR R4, [SP, 0x1C] \n\
/* 0802c726 */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 0802c728 */ LSLS R4, R1, 0x3 \n\
/* 0802c72a */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0802c72c */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802c72e */ LDR R1, [R2] \n\
/* 0802c730 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802c732 */ STR R1, [R2] \n\
/* 0802c734 */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 0802c736 */ STR R0, [SP, 0x14] \n\
/* 0802c738 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802c73a */ BL func_0802c3d0 \n\
/* 0802c73e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0802c740 */ ADDS R3, 0x68 @ Add 0x68 to R3 \n\
/* 0802c742 */ STR R3, [SP, 0x18] \n\
/* 0802c744 */ LDR R6, =gSpriteHandler \n\
/* 0802c746 */ LDR R0, [R6] \n\
/* 0802c748 */ LDR R1, [R5] \n\
/* 0802c74a */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c74c */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802c74e */ LDRSH R1, [R1, R2] \n\
/* 0802c750 */ LDR R2, [SP, 0x14] \n\
/* 0802c752 */ LSLS R2, R2, 0x10 \n\
/* 0802c754 */ ASRS R2, R2, 0x10 \n\
/* 0802c756 */ LSLS R3, R3, 0x10 \n\
/* 0802c758 */ ASRS R3, R3, 0x10 \n\
/* 0802c75a */ BL sprite_set_x_y \n\
/* 0802c75e */ LDR R2, [R5] \n\
/* 0802c760 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c762 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802c764 */ ADDS R3, R0, R4 @ Set R3 to R0 + R4 \n\
/* 0802c766 */ LDR R0, [R3] \n\
/* 0802c768 */ LDR R1, [SP, 0x1C] \n\
/* 0802c76a */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0802c76c */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0802c76e */ CMP R0, R10 @ Compare R0 and R10 \n\
/* 0802c770 */ BGE branch_0802c774 \n\
/* 0802c772 */ B branch_0802ce28 \n\
 \n\
branch_0802c774: \n\
/* 0802c774 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c776 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802c778 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c77a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0802c77c */ STR R1, [R0] \n\
/* 0802c77e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802c780 */ STR R0, [R3] \n\
/* 0802c782 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c784 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802c786 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c788 */ LDR R0, [R0] \n\
 \n\
branch_0802c78a: \n\
/* 0802c78a */ BL func_0802c4c0 \n\
/* 0802c78e */ LDR R0, [R6] \n\
/* 0802c790 */ LDR R1, [R5] \n\
/* 0802c792 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c794 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802c796 */ LDRSH R1, [R1, R2] \n\
/* 0802c798 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c79a */ BL sprite_set_anim_speed \n\
/* 0802c79e */ B branch_0802ce28 \n\
\n\
.ltorg \n\
\n\
jump_0802c7a8: \n\
/* 0802c7a8 */ BL func_0800c398 \n\
/* 0802c7ac */ LDR R5, =gCurrentEngineData \n\
/* 0802c7ae */ LDR R2, [R5] \n\
/* 0802c7b0 */ LDR R3, [SP, 0x20] \n\
/* 0802c7b2 */ LDR R4, [SP, 0x1C] \n\
/* 0802c7b4 */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 0802c7b6 */ LSLS R4, R1, 0x3 \n\
/* 0802c7b8 */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0802c7ba */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802c7bc */ LDR R1, [R2] \n\
/* 0802c7be */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802c7c0 */ STR R1, [R2] \n\
/* 0802c7c2 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0802c7c4 */ STR R0, [SP] \n\
/* 0802c7c6 */ LDR R0, [R2] \n\
/* 0802c7c8 */ STR R0, [SP, 0x4] \n\
/* 0802c7ca */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0802c7cc */ STR R0, [SP, 0x8] \n\
/* 0802c7ce */ ADD R1, SP, 0x14 \n\
/* 0802c7d0 */ STR R1, [SP, 0xC] \n\
/* 0802c7d2 */ ADD R0, SP, 0x18 \n\
/* 0802c7d4 */ STR R0, [SP, 0x10] \n\
/* 0802c7d6 */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 0802c7d8 */ MOVS R1, 0x68 @ Set R1 to 0x68 \n\
/* 0802c7da */ MOVS R2, 0xB8 @ Set R2 to 0xB8 \n\
/* 0802c7dc */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802c7de */ BL func_0802c55c \n\
/* 0802c7e2 */ LDR R6, =gSpriteHandler \n\
/* 0802c7e4 */ LDR R0, [R6] \n\
/* 0802c7e6 */ LDR R1, [R5] \n\
/* 0802c7e8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c7ea */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802c7ec */ LDRSH R1, [R1, R2] \n\
/* 0802c7ee */ LDR R2, [SP, 0x14] \n\
/* 0802c7f0 */ LSLS R2, R2, 0x10 \n\
/* 0802c7f2 */ ASRS R2, R2, 0x10 \n\
/* 0802c7f4 */ LDR R3, [SP, 0x18] \n\
/* 0802c7f6 */ LSLS R3, R3, 0x10 \n\
/* 0802c7f8 */ ASRS R3, R3, 0x10 \n\
/* 0802c7fa */ BL sprite_set_x_y \n\
/* 0802c7fe */ LDR R1, [R5] \n\
/* 0802c800 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802c802 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802c804 */ ADDS R2, R0, R4 @ Set R2 to R0 + R4 \n\
/* 0802c806 */ LDR R0, [R2] \n\
/* 0802c808 */ LDR R3, [SP, 0x1C] \n\
/* 0802c80a */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0802c80c */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802c80e */ CMP R0, R10 @ Compare R0 and R10 \n\
/* 0802c810 */ BGE branch_0802c814 \n\
/* 0802c812 */ B branch_0802ce28 \n\
 \n\
branch_0802c814: \n\
/* 0802c814 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802c816 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802c818 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c81a */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802c81c */ STR R1, [R0] \n\
/* 0802c81e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802c820 */ STR R0, [R2] \n\
/* 0802c822 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802c824 */ BL func_0802c36c \n\
/* 0802c828 */ LDR R0, [R5] \n\
/* 0802c82a */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802c82c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c82e */ LDR R0, [R0] \n\
 \n\
branch_0802c830: \n\
/* 0802c830 */ BL func_0802c4f4 \n\
/* 0802c834 */ LDR R0, [R6] \n\
/* 0802c836 */ LDR R1, [R5] \n\
/* 0802c838 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c83a */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802c83c */ LDRSH R1, [R1, R4] \n\
/* 0802c83e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802c840 */ LSLS R2, R2, 0x1 \n\
/* 0802c842 */ BL sprite_set_anim_speed \n\
/* 0802c846 */ B branch_0802ce28 \n\
\n\
.ltorg \n\
\n\
jump_0802c850: \n\
/* 0802c850 */ BL func_0800c398 \n\
/* 0802c854 */ LDR R7, =gCurrentEngineData \n\
/* 0802c856 */ LDR R2, [R7] \n\
/* 0802c858 */ LDR R3, [SP, 0x20] \n\
/* 0802c85a */ LDR R4, [SP, 0x1C] \n\
/* 0802c85c */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 0802c85e */ LSLS R5, R1, 0x3 \n\
/* 0802c860 */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0802c862 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0802c864 */ LDR R1, [R2] \n\
/* 0802c866 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802c868 */ STR R1, [R2] \n\
/* 0802c86a */ MOVS R0, 0xB8 @ Set R0 to 0xB8 \n\
/* 0802c86c */ STR R0, [SP, 0x14] \n\
/* 0802c86e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802c870 */ BL func_0802c3d0 \n\
/* 0802c874 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0802c876 */ ADDS R3, 0x78 @ Add 0x78 to R3 \n\
/* 0802c878 */ STR R3, [SP, 0x18] \n\
/* 0802c87a */ LDR R6, =gSpriteHandler \n\
/* 0802c87c */ LDR R0, [R6] \n\
/* 0802c87e */ LDR R1, [R7] \n\
/* 0802c880 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802c882 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802c884 */ LDRSH R1, [R1, R2] \n\
/* 0802c886 */ LSLS R3, R3, 0x10 \n\
/* 0802c888 */ ASRS R3, R3, 0x10 \n\
/* 0802c88a */ MOVS R2, 0xB8 @ Set R2 to 0xB8 \n\
/* 0802c88c */ BL sprite_set_x_y \n\
/* 0802c890 */ LDR R2, [R7] \n\
/* 0802c892 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c894 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802c896 */ ADDS R3, R0, R5 @ Set R3 to R0 + R5 \n\
/* 0802c898 */ LDR R0, [R3] \n\
/* 0802c89a */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802c89c */ BNE branch_0802c900 \n\
/* 0802c89e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c8a0 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802c8a2 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802c8a4 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 0802c8a6 */ ASRS R1, R4, 0x1 \n\
/* 0802c8a8 */ LDR R0, [R0] \n\
/* 0802c8aa */ LDR R4, [SP, 0x1C] \n\
/* 0802c8ac */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802c8ae */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802c8b0 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0802c8b2 */ BGE branch_0802c8b6 \n\
/* 0802c8b4 */ B branch_0802ce28 \n\
 \n\
branch_0802c8b6: \n\
/* 0802c8b6 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802c8b8 */ STR R0, [R3] \n\
/* 0802c8ba */ LDR R0, [R6] \n\
/* 0802c8bc */ ADDS R1, R2, R5 @ Set R1 to R2 + R5 \n\
/* 0802c8be */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802c8c0 */ LDRSH R1, [R1, R3] \n\
/* 0802c8c2 */ LDR R3, =showtime_penguin_jump_prepare_anim \n\
/* 0802c8c4 */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 0802c8c6 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0802c8c8 */ LDR R2, [R2] \n\
/* 0802c8ca */ LSLS R2, R2, 0x2 \n\
/* 0802c8cc */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802c8ce */ LDR R2, [R2] \n\
/* 0802c8d0 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802c8d2 */ STR R3, [SP] \n\
/* 0802c8d4 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802c8d6 */ STR R3, [SP, 0x4] \n\
/* 0802c8d8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802c8da */ STR R3, [SP, 0x8] \n\
/* 0802c8dc */ BL sprite_set_anim \n\
/* 0802c8e0 */ LDR R0, [R6] \n\
/* 0802c8e2 */ LDR R1, [R7] \n\
/* 0802c8e4 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802c8e6 */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802c8e8 */ LDRSH R1, [R1, R4] \n\
/* 0802c8ea */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802c8ec */ BL sprite_set_anim_cel \n\
/* 0802c8f0 */ B branch_0802ce28 \n\
\n\
.ltorg \n\
 \n\
branch_0802c900: \n\
/* 0802c900 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c902 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802c904 */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0802c906 */ LDR R0, [R1] \n\
/* 0802c908 */ LDR R4, [SP, 0x1C] \n\
/* 0802c90a */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802c90c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802c90e */ CMP R0, R10 @ Compare R0 and R10 \n\
/* 0802c910 */ BGE branch_0802c914 \n\
/* 0802c912 */ B branch_0802ce28 \n\
 \n\
branch_0802c914: \n\
/* 0802c914 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0802c916 */ STR R0, [R3] \n\
/* 0802c918 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802c91a */ STR R4, [R1] \n\
/* 0802c91c */ LDR R0, [R6] \n\
/* 0802c91e */ ADDS R1, R2, R5 @ Set R1 to R2 + R5 \n\
/* 0802c920 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802c922 */ LDRSH R1, [R1, R3] \n\
/* 0802c924 */ LDR R3, =showtime_penguin_jump_anim \n\
/* 0802c926 */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 0802c928 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0802c92a */ LDR R2, [R2] \n\
/* 0802c92c */ LSLS R2, R2, 0x2 \n\
/* 0802c92e */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802c930 */ LDR R2, [R2] \n\
/* 0802c932 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802c934 */ STR R3, [SP] \n\
/* 0802c936 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802c938 */ STR R3, [SP, 0x4] \n\
/* 0802c93a */ STR R4, [SP, 0x8] \n\
/* 0802c93c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802c93e */ BL sprite_set_anim \n\
/* 0802c942 */ LDR R0, [R7] \n\
/* 0802c944 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802c946 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802c948 */ LDR R0, [R0] \n\
/* 0802c94a */ BL func_0802c528 \n\
/* 0802c94e */ B branch_0802ce28 \n\
\n\
.ltorg \n\
\n\
jump_0802c954: \n\
/* 0802c954 */ BL func_0800c398 \n\
/* 0802c958 */ LDR R1, =gCurrentEngineData \n\
/* 0802c95a */ LDR R2, [R1] \n\
/* 0802c95c */ LDR R4, [SP, 0x20] \n\
/* 0802c95e */ LDR R1, [SP, 0x1C] \n\
/* 0802c960 */ ADDS R3, R4, R1 @ Set R3 to R4 + R1 \n\
/* 0802c962 */ LSLS R3, R3, 0x3 \n\
/* 0802c964 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0802c966 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0802c968 */ ADDS R4, R1, R3 @ Set R4 to R1 + R3 \n\
/* 0802c96a */ LDR R1, [R4] \n\
/* 0802c96c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802c96e */ STR R1, [R4] \n\
/* 0802c970 */ ADDS R2, 0x3C @ Add 0x3C to R2 \n\
/* 0802c972 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802c974 */ LDR R0, [R2] \n\
/* 0802c976 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802c978 */ BNE branch_0802c9a0 \n\
/* 0802c97a */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0802c97c */ STR R0, [SP] \n\
/* 0802c97e */ LDR R0, [R4] \n\
/* 0802c980 */ STR R0, [SP, 0x4] \n\
/* 0802c982 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802c984 */ STR R2, [SP, 0x8] \n\
/* 0802c986 */ ADD R3, SP, 0x14 \n\
/* 0802c988 */ STR R3, [SP, 0xC] \n\
/* 0802c98a */ ADD R0, SP, 0x18 \n\
/* 0802c98c */ STR R0, [SP, 0x10] \n\
/* 0802c98e */ MOVS R0, 0xB8 @ Set R0 to 0xB8 \n\
/* 0802c990 */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 0802c992 */ MOVS R2, 0x60 @ Set R2 to 0x60 \n\
/* 0802c994 */ MOVS R3, 0x30 @ Set R3 to 0x30 \n\
/* 0802c996 */ BL func_0802c55c \n\
/* 0802c99a */ B branch_0802c9c0 \n\
\n\
.ltorg \n\
 \n\
branch_0802c9a0: \n\
/* 0802c9a0 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0802c9a2 */ STR R0, [SP] \n\
/* 0802c9a4 */ LDR R0, [R4] \n\
/* 0802c9a6 */ STR R0, [SP, 0x4] \n\
/* 0802c9a8 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 0802c9aa */ STR R4, [SP, 0x8] \n\
/* 0802c9ac */ ADD R0, SP, 0x14 \n\
/* 0802c9ae */ STR R0, [SP, 0xC] \n\
/* 0802c9b0 */ ADD R0, SP, 0x18 \n\
/* 0802c9b2 */ STR R0, [SP, 0x10] \n\
/* 0802c9b4 */ MOVS R0, 0xB8 @ Set R0 to 0xB8 \n\
/* 0802c9b6 */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 0802c9b8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802c9ba */ MOVS R3, 0x30 @ Set R3 to 0x30 \n\
/* 0802c9bc */ BL func_0802c55c \n\
 \n\
branch_0802c9c0: \n\
/* 0802c9c0 */ LDR R7, =gSpriteHandler \n\
/* 0802c9c2 */ LDR R0, [R7] \n\
/* 0802c9c4 */ LDR R6, =gCurrentEngineData \n\
/* 0802c9c6 */ LDR R2, [R6] \n\
/* 0802c9c8 */ LDR R3, [SP, 0x20] \n\
/* 0802c9ca */ LDR R4, [SP, 0x1C] \n\
/* 0802c9cc */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 0802c9ce */ LSLS R5, R1, 0x3 \n\
/* 0802c9d0 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0802c9d2 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802c9d4 */ LDRSH R1, [R2, R3] \n\
/* 0802c9d6 */ LDR R2, [SP, 0x14] \n\
/* 0802c9d8 */ LSLS R2, R2, 0x10 \n\
/* 0802c9da */ ASRS R2, R2, 0x10 \n\
/* 0802c9dc */ LDR R3, [SP, 0x18] \n\
/* 0802c9de */ LSLS R3, R3, 0x10 \n\
/* 0802c9e0 */ ASRS R3, R3, 0x10 \n\
/* 0802c9e2 */ BL sprite_set_x_y \n\
/* 0802c9e6 */ LDR R0, [SP, 0x18] \n\
/* 0802c9e8 */ CMP R0, 0x78 @ Compare R0 and 0x78 \n\
/* 0802c9ea */ BLE branch_0802caa2 \n\
/* 0802c9ec */ LDR R2, [R6] \n\
/* 0802c9ee */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c9f0 */ ADDS R0, 0x3C @ Add 0x3C to R0 \n\
/* 0802c9f2 */ ADDS R3, R0, R5 @ Set R3 to R0 + R5 \n\
/* 0802c9f4 */ LDR R4, [R3] \n\
/* 0802c9f6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802c9f8 */ BNE branch_0802caa2 \n\
/* 0802c9fa */ SUBS R0, 0x18 @ Subtract 0x18 from R0 \n\
/* 0802c9fc */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802c9fe */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0802ca00 */ STR R1, [R0] \n\
/* 0802ca02 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802ca04 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802ca06 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802ca08 */ STR R4, [R0] \n\
/* 0802ca0a */ LDR R0, [SP, 0x14] \n\
/* 0802ca0c */ STR R0, [R3] \n\
/* 0802ca0e */ LDR R0, [R7] \n\
/* 0802ca10 */ ADDS R1, R2, R5 @ Set R1 to R2 + R5 \n\
/* 0802ca12 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802ca14 */ LDRSH R1, [R1, R3] \n\
/* 0802ca16 */ LDR R3, =showtime_penguin_slide_anim \n\
/* 0802ca18 */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 0802ca1a */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0802ca1c */ LDR R2, [R2] \n\
/* 0802ca1e */ LSLS R2, R2, 0x2 \n\
/* 0802ca20 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802ca22 */ LDR R2, [R2] \n\
/* 0802ca24 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802ca26 */ STR R3, [SP] \n\
/* 0802ca28 */ STR R4, [SP, 0x4] \n\
/* 0802ca2a */ STR R4, [SP, 0x8] \n\
/* 0802ca2c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ca2e */ BL sprite_set_anim \n\
/* 0802ca32 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0802ca34 */ STR R0, [SP, 0x18] \n\
/* 0802ca36 */ LDR R0, [R7] \n\
/* 0802ca38 */ LDR R1, [R6] \n\
/* 0802ca3a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0802ca3c */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802ca3e */ LDRSH R1, [R1, R4] \n\
/* 0802ca40 */ LDR R2, [SP, 0x14] \n\
/* 0802ca42 */ LSLS R2, R2, 0x10 \n\
/* 0802ca44 */ ASRS R2, R2, 0x10 \n\
/* 0802ca46 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802ca48 */ BL sprite_set_x_y \n\
/* 0802ca4c */ LDR R1, [R6] \n\
/* 0802ca4e */ MOVS R2, 0xF4 @ Set R2 to 0xF4 \n\
/* 0802ca50 */ LSLS R2, R2, 0x2 \n\
/* 0802ca52 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802ca54 */ LDRB R0, [R0] \n\
/* 0802ca56 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ca58 */ BEQ branch_0802caa2 \n\
/* 0802ca5a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802ca5c */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 0802ca5e */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802ca60 */ LDR R0, [R0] \n\
/* 0802ca62 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ca64 */ BEQ branch_0802ca80 \n\
/* 0802ca66 */ LDR R0, =s_warai_solo_seqData \n\
/* 0802ca68 */ BL play_sound \n\
/* 0802ca6c */ B branch_0802caa2 \n\
\n\
.ltorg \n\
 \n\
branch_0802ca80: \n\
/* 0802ca80 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802ca82 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802ca84 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802ca86 */ LDR R0, [R0] \n\
/* 0802ca88 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802ca8a */ BGT branch_0802ca9c \n\
/* 0802ca8c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ca8e */ BLT branch_0802ca9c \n\
/* 0802ca90 */ LDR R0, =s_hakushu_solo_seqData \n\
/* 0802ca92 */ BL play_sound \n\
/* 0802ca96 */ B branch_0802caa2 \n\
\n\
.ltorg \n\
 \n\
branch_0802ca9c: \n\
/* 0802ca9c */ LDR R0, =s_kansei_solo_seqData \n\
/* 0802ca9e */ BL play_sound \n\
 \n\
branch_0802caa2: \n\
/* 0802caa2 */ LDR R0, [SP, 0x18] \n\
/* 0802caa4 */ LDR R3, [SP, 0x1C] \n\
/* 0802caa6 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0802caa8 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802caaa */ CMP R0, 0xAC @ Compare R0 and 0xAC \n\
/* 0802caac */ BGT branch_0802cab0 \n\
/* 0802caae */ B branch_0802ce28 \n\
 \n\
branch_0802cab0: \n\
/* 0802cab0 */ LDR R4, =gCurrentEngineData \n\
/* 0802cab2 */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0802cab4 */ LDR R1, [R4] \n\
/* 0802cab6 */ LDR R2, [SP, 0x20] \n\
/* 0802cab8 */ LDR R3, [SP, 0x1C] \n\
/* 0802caba */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802cabc */ LSLS R6, R0, 0x3 \n\
/* 0802cabe */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cac0 */ ADDS R0, 0x3C @ Add 0x3C to R0 \n\
/* 0802cac2 */ ADDS R2, R0, R6 @ Set R2 to R0 + R6 \n\
/* 0802cac4 */ LDR R7, [R2] \n\
/* 0802cac6 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0802cac8 */ BEQ branch_0802cacc \n\
/* 0802caca */ B branch_0802ce28 \n\
 \n\
branch_0802cacc: \n\
/* 0802cacc */ SUBS R0, 0x18 @ Subtract 0x18 from R0 \n\
/* 0802cace */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cad0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802cad2 */ STR R5, [R0] \n\
/* 0802cad4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cad6 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802cad8 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cada */ STR R5, [R0] \n\
/* 0802cadc */ STR R7, [R2] \n\
/* 0802cade */ LDR R4, =gSpriteHandler \n\
/* 0802cae0 */ LDR R0, [R4] \n\
/* 0802cae2 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802cae4 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802cae6 */ LDRSH R1, [R1, R2] \n\
/* 0802cae8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802caea */ BL sprite_set_visible \n\
/* 0802caee */ LDR R0, [R4] \n\
/* 0802caf0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802caf2 */ LDR R1, [R3] \n\
/* 0802caf4 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802caf6 */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802caf8 */ LDRSH R1, [R1, R4] \n\
/* 0802cafa */ LDR R2, =anim_showtime_penguin_beat \n\
/* 0802cafc */ STR R7, [SP] \n\
/* 0802cafe */ STR R5, [SP, 0x4] \n\
/* 0802cb00 */ STR R5, [SP, 0x8] \n\
/* 0802cb02 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802cb04 */ BL sprite_set_anim \n\
/* 0802cb08 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802cb0a */ LDR R2, [R0] \n\
/* 0802cb0c */ MOVS R3, 0xF3 @ Set R3 to 0xF3 \n\
/* 0802cb0e */ LSLS R3, R3, 0x2 \n\
/* 0802cb10 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802cb12 */ LDR R0, [SP, 0x14] \n\
/* 0802cb14 */ STR R0, [R1] \n\
/* 0802cb16 */ MOVS R4, 0xF4 @ Set R4 to 0xF4 \n\
/* 0802cb18 */ LSLS R4, R4, 0x2 \n\
/* 0802cb1a */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 0802cb1c */ LDRB R0, [R0] \n\
/* 0802cb1e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802cb20 */ BEQ branch_0802cb28 \n\
/* 0802cb22 */ LDR R0, =s_warai_solo_seqData \n\
/* 0802cb24 */ BL play_sound \n\
 \n\
branch_0802cb28: \n\
/* 0802cb28 */ LDR R0, =s_f_esa_splash_penguin_seqData \n\
/* 0802cb2a */ BL play_sound \n\
/* 0802cb2e */ MOVS R4, 0x7 @ Set R4 to 0x7 \n\
 \n\
branch_0802cb30: \n\
/* 0802cb30 */ LDR R1, [SP, 0x18] \n\
/* 0802cb32 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 0802cb34 */ BL func_0802dc54 \n\
/* 0802cb38 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 0802cb3a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802cb3c */ BGE branch_0802cb30 \n\
/* 0802cb3e */ B branch_0802ce28 \n\
\n\
.ltorg \n\
\n\
jump_0802cb58: \n\
/* 0802cb58 */ BL func_0800c398 \n\
/* 0802cb5c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802cb5e */ LDR R0, =gCurrentEngineData \n\
/* 0802cb60 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802cb62 */ LDR R2, [R0] \n\
/* 0802cb64 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0802cb66 */ LDR R3, [SP, 0x20] \n\
/* 0802cb68 */ LDR R4, [SP, 0x1C] \n\
/* 0802cb6a */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 0802cb6c */ LSLS R7, R0, 0x3 \n\
/* 0802cb6e */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802cb70 */ ADDS R6, 0x28 @ Add 0x28 to R6 \n\
/* 0802cb72 */ ADDS R6, R6, R7 @ Set R6 to R6 + R7 \n\
/* 0802cb74 */ LDR R0, [R6] \n\
/* 0802cb76 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802cb78 */ STR R0, [R6] \n\
/* 0802cb7a */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0802cb7c */ ADDS R4, 0x34 @ Add 0x34 to R4 \n\
/* 0802cb7e */ ADDS R4, R4, R7 @ Set R4 to R4 + R7 \n\
/* 0802cb80 */ LSLS R0, R0, 0x4 \n\
/* 0802cb82 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0802cb84 */ BL __divsi3 \n\
/* 0802cb88 */ LDR R4, [R4] \n\
/* 0802cb8a */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 0802cb8c */ STR R4, [SP, 0x14] \n\
/* 0802cb8e */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0802cb90 */ ADDS R5, 0x38 @ Add 0x38 to R5 \n\
/* 0802cb92 */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 0802cb94 */ LDR R0, [R6] \n\
/* 0802cb96 */ LSLS R0, R0, 0x3 \n\
/* 0802cb98 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0802cb9a */ BL __divsi3 \n\
/* 0802cb9e */ LDR R3, [R5] \n\
/* 0802cba0 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0802cba2 */ STR R3, [SP, 0x18] \n\
/* 0802cba4 */ LDR R5, =gSpriteHandler \n\
/* 0802cba6 */ LDR R0, [R5] \n\
/* 0802cba8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802cbaa */ ADDS R1, R2, R7 @ Set R1 to R2 + R7 \n\
/* 0802cbac */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802cbae */ LDRSH R1, [R1, R2] \n\
/* 0802cbb0 */ LSLS R4, R4, 0x10 \n\
/* 0802cbb2 */ ASRS R4, R4, 0x10 \n\
/* 0802cbb4 */ LSLS R3, R3, 0x10 \n\
/* 0802cbb6 */ ASRS R3, R3, 0x10 \n\
/* 0802cbb8 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0802cbba */ BL sprite_set_x_y \n\
/* 0802cbbe */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802cbc0 */ LDR R1, [R3] \n\
/* 0802cbc2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cbc4 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802cbc6 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802cbc8 */ LDR R0, [R0] \n\
/* 0802cbca */ CMP R0, R10 @ Compare R0 and R10 \n\
/* 0802cbcc */ BLT branch_0802cc28 \n\
/* 0802cbce */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cbd0 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802cbd2 */ ADDS R2, R0, R7 @ Set R2 to R0 + R7 \n\
/* 0802cbd4 */ LDR R0, [R2] \n\
/* 0802cbd6 */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 0802cbd8 */ BEQ branch_0802cbe8 \n\
/* 0802cbda */ CMP R0, 0xA @ Compare R0 and 0xA \n\
/* 0802cbdc */ BEQ branch_0802cc0c \n\
/* 0802cbde */ B branch_0802cc28 \n\
\n\
.ltorg \n\
 \n\
branch_0802cbe8: \n\
/* 0802cbe8 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0802cbea */ STR R0, [R2] \n\
/* 0802cbec */ LDR R0, [R5] \n\
/* 0802cbee */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802cbf0 */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802cbf2 */ LDRSH R1, [R1, R4] \n\
/* 0802cbf4 */ LDR R2, =anim_showtime_penguin_catch_para \n\
/* 0802cbf6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802cbf8 */ STR R3, [SP] \n\
/* 0802cbfa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802cbfc */ STR R3, [SP, 0x4] \n\
/* 0802cbfe */ STR R3, [SP, 0x8] \n\
/* 0802cc00 */ BL sprite_set_anim \n\
/* 0802cc04 */ B branch_0802cc28 \n\
\n\
.ltorg \n\
 \n\
branch_0802cc0c: \n\
/* 0802cc0c */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 0802cc0e */ STR R0, [R2] \n\
/* 0802cc10 */ LDR R0, [R5] \n\
/* 0802cc12 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802cc14 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802cc16 */ LDRSH R1, [R1, R2] \n\
/* 0802cc18 */ LDR R2, =anim_showtime_penguin_float_para \n\
/* 0802cc1a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802cc1c */ STR R3, [SP] \n\
/* 0802cc1e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802cc20 */ STR R3, [SP, 0x4] \n\
/* 0802cc22 */ STR R3, [SP, 0x8] \n\
/* 0802cc24 */ BL sprite_set_anim \n\
 \n\
branch_0802cc28: \n\
/* 0802cc28 */ LDR R1, [SP, 0x14] \n\
/* 0802cc2a */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802cc2c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802cc2e */ LDR R3, [SP, 0x1C] \n\
/* 0802cc30 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0802cc32 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802cc34 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0802cc36 */ BLE branch_0802cc3a \n\
/* 0802cc38 */ B branch_0802ce28 \n\
 \n\
branch_0802cc3a: \n\
/* 0802cc3a */ LDR R4, =gCurrentEngineData \n\
/* 0802cc3c */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0802cc3e */ LDR R1, [R4] \n\
/* 0802cc40 */ LDR R0, [SP, 0x20] \n\
/* 0802cc42 */ LDR R2, [SP, 0x1C] \n\
/* 0802cc44 */ ADDS R4, R0, R2 @ Set R4 to R0 + R2 \n\
/* 0802cc46 */ LSLS R4, R4, 0x3 \n\
/* 0802cc48 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cc4a */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802cc4c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802cc4e */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802cc50 */ STR R6, [R0] \n\
/* 0802cc52 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cc54 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802cc56 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802cc58 */ STR R6, [R0] \n\
/* 0802cc5a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cc5c */ ADDS R0, 0x3C @ Add 0x3C to R0 \n\
/* 0802cc5e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802cc60 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802cc62 */ STR R3, [R0] \n\
/* 0802cc64 */ LDR R5, =gSpriteHandler \n\
/* 0802cc66 */ LDR R0, [R5] \n\
/* 0802cc68 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802cc6a */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802cc6c */ LDRSH R1, [R1, R2] \n\
/* 0802cc6e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802cc70 */ STR R3, [SP, 0x24] \n\
/* 0802cc72 */ BL sprite_set_visible \n\
/* 0802cc76 */ LDR R0, [R5] \n\
/* 0802cc78 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802cc7a */ LDR R1, [R2] \n\
/* 0802cc7c */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802cc7e */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802cc80 */ LDRSH R1, [R1, R4] \n\
/* 0802cc82 */ LDR R2, =anim_showtime_penguin_beat \n\
/* 0802cc84 */ LDR R3, [SP, 0x24] \n\
/* 0802cc86 */ STR R3, [SP] \n\
/* 0802cc88 */ STR R6, [SP, 0x4] \n\
/* 0802cc8a */ STR R6, [SP, 0x8] \n\
/* 0802cc8c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802cc8e */ BL sprite_set_anim \n\
/* 0802cc92 */ B branch_0802ce28 \n\
\n\
.ltorg \n\
\n\
jump_0802cca4: \n\
/* 0802cca4 */ BL func_0800c398 \n\
/* 0802cca8 */ LDR R1, =gCurrentEngineData \n\
/* 0802ccaa */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802ccac */ LDR R4, [R1] \n\
/* 0802ccae */ LDR R2, [SP, 0x20] \n\
/* 0802ccb0 */ LDR R3, [SP, 0x1C] \n\
/* 0802ccb2 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802ccb4 */ LSLS R6, R1, 0x3 \n\
/* 0802ccb6 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0802ccb8 */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0802ccba */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 0802ccbc */ LDR R1, [R2] \n\
/* 0802ccbe */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802ccc0 */ STR R1, [R2] \n\
/* 0802ccc2 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 0802ccc4 */ STR R0, [SP, 0x14] \n\
/* 0802ccc6 */ LDR R1, [R2] \n\
/* 0802ccc8 */ ASRS R1, R1, 0x8 \n\
/* 0802ccca */ LSLS R0, R1, 0x5 \n\
/* 0802cccc */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0802ccce */ LSLS R0, R0, 0x2 \n\
/* 0802ccd0 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802ccd2 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0802ccd4 */ BL __divsi3 \n\
/* 0802ccd8 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0802ccda */ BL __divsi3 \n\
/* 0802ccde */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0802cce0 */ ADDS R3, 0x30 @ Add 0x30 to R3 \n\
/* 0802cce2 */ STR R3, [SP, 0x18] \n\
/* 0802cce4 */ LDR R7, =gSpriteHandler \n\
/* 0802cce6 */ LDR R0, [R7] \n\
/* 0802cce8 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0802ccea */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802ccec */ LDRSH R1, [R4, R2] \n\
/* 0802ccee */ LSLS R3, R3, 0x10 \n\
/* 0802ccf0 */ ASRS R3, R3, 0x10 \n\
/* 0802ccf2 */ MOVS R2, 0x60 @ Set R2 to 0x60 \n\
/* 0802ccf4 */ BL sprite_set_x_y \n\
/* 0802ccf8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802ccfa */ LDR R1, [R3] \n\
/* 0802ccfc */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802ccfe */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802cd00 */ ADDS R2, R0, R6 @ Set R2 to R0 + R6 \n\
/* 0802cd02 */ LDR R0, [R2] \n\
/* 0802cd04 */ LDR R4, [SP, 0x1C] \n\
/* 0802cd06 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802cd08 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802cd0a */ CMP R0, R10 @ Compare R0 and R10 \n\
/* 0802cd0c */ BGE branch_0802cd10 \n\
/* 0802cd0e */ B branch_0802ce28 \n\
 \n\
branch_0802cd10: \n\
/* 0802cd10 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cd12 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802cd14 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cd16 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802cd18 */ STR R4, [R0] \n\
/* 0802cd1a */ STR R4, [R2] \n\
/* 0802cd1c */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cd1e */ ADDS R0, 0x3C @ Add 0x3C to R0 \n\
/* 0802cd20 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cd22 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0802cd24 */ STR R5, [R0] \n\
/* 0802cd26 */ LDR R0, [R7] \n\
/* 0802cd28 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802cd2a */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802cd2c */ LDRSH R1, [R1, R2] \n\
/* 0802cd2e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802cd30 */ BL sprite_set_visible \n\
/* 0802cd34 */ LDR R0, [R7] \n\
/* 0802cd36 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802cd38 */ LDR R1, [R3] \n\
/* 0802cd3a */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802cd3c */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802cd3e */ LDRSH R1, [R1, R2] \n\
/* 0802cd40 */ LDR R2, =anim_showtime_penguin_beat \n\
/* 0802cd42 */ STR R5, [SP] \n\
/* 0802cd44 */ STR R4, [SP, 0x4] \n\
/* 0802cd46 */ STR R4, [SP, 0x8] \n\
/* 0802cd48 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802cd4a */ BL sprite_set_anim \n\
/* 0802cd4e */ LDR R0, [R7] \n\
/* 0802cd50 */ LDR R1, =anim_showtime_splash_penguin \n\
/* 0802cd52 */ MOVS R2, 0x94 @ Set R2 to 0x94 \n\
/* 0802cd54 */ STR R2, [SP] \n\
/* 0802cd56 */ STR R4, [SP, 0x4] \n\
/* 0802cd58 */ STR R5, [SP, 0x8] \n\
/* 0802cd5a */ STR R4, [SP, 0xC] \n\
/* 0802cd5c */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0802cd5e */ STR R2, [SP, 0x10] \n\
/* 0802cd60 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802cd62 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 0802cd64 */ BL sprite_create \n\
/* 0802cd68 */ B branch_0802ce28 \n\
\n\
.ltorg \n\
\n\
jump_0802cd7c: \n\
/* 0802cd7c */ BL func_0800c398 \n\
/* 0802cd80 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802cd82 */ LDR R3, =gCurrentEngineData \n\
/* 0802cd84 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802cd86 */ LDR R5, [R3] \n\
/* 0802cd88 */ LDR R4, [SP, 0x20] \n\
/* 0802cd8a */ LDR R1, [SP, 0x1C] \n\
/* 0802cd8c */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 0802cd8e */ LSLS R6, R0, 0x3 \n\
/* 0802cd90 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802cd92 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0802cd94 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802cd96 */ LDR R0, [R1] \n\
/* 0802cd98 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802cd9a */ STR R0, [R1] \n\
/* 0802cd9c */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 0802cd9e */ ADDS R4, 0x3C @ Add 0x3C to R4 \n\
/* 0802cda0 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0802cda2 */ LSLS R0, R0, 0x6 \n\
/* 0802cda4 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0802cda6 */ BL __divsi3 \n\
/* 0802cdaa */ LDR R2, [R4] \n\
/* 0802cdac */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0802cdae */ STR R2, [SP, 0x14] \n\
/* 0802cdb0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802cdb2 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0802cdb4 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cdb6 */ LDR R3, [R0] \n\
/* 0802cdb8 */ STR R3, [SP, 0x18] \n\
/* 0802cdba */ LDR R7, =gSpriteHandler \n\
/* 0802cdbc */ LDR R0, [R7] \n\
/* 0802cdbe */ ADDS R1, R5, R6 @ Set R1 to R5 + R6 \n\
/* 0802cdc0 */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
/* 0802cdc2 */ LDRSH R1, [R1, R4] \n\
/* 0802cdc4 */ LSLS R2, R2, 0x10 \n\
/* 0802cdc6 */ ASRS R2, R2, 0x10 \n\
/* 0802cdc8 */ LSLS R3, R3, 0x10 \n\
/* 0802cdca */ ASRS R3, R3, 0x10 \n\
/* 0802cdcc */ BL sprite_set_x_y \n\
/* 0802cdd0 */ LDR R1, [SP, 0x14] \n\
/* 0802cdd2 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802cdd4 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802cdd6 */ LDR R2, [SP, 0x1C] \n\
/* 0802cdd8 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0802cdda */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0802cddc */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0802cdde */ BGT branch_0802ce28 \n\
/* 0802cde0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802cde2 */ LDR R1, [R3] \n\
/* 0802cde4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cde6 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802cde8 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cdea */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802cdec */ STR R4, [R0] \n\
/* 0802cdee */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cdf0 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802cdf2 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cdf4 */ STR R4, [R0] \n\
/* 0802cdf6 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802cdf8 */ ADDS R0, 0x3C @ Add 0x3C to R0 \n\
/* 0802cdfa */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802cdfc */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0802cdfe */ STR R5, [R0] \n\
/* 0802ce00 */ LDR R0, [R7] \n\
/* 0802ce02 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802ce04 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802ce06 */ LDRSH R1, [R1, R2] \n\
/* 0802ce08 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ce0a */ BL sprite_set_visible \n\
/* 0802ce0e */ LDR R0, [R7] \n\
/* 0802ce10 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802ce12 */ LDR R1, [R3] \n\
/* 0802ce14 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802ce16 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802ce18 */ LDRSH R1, [R1, R2] \n\
/* 0802ce1a */ LDR R2, =anim_showtime_penguin_beat \n\
/* 0802ce1c */ STR R5, [SP] \n\
/* 0802ce1e */ STR R4, [SP, 0x4] \n\
/* 0802ce20 */ STR R4, [SP, 0x8] \n\
/* 0802ce22 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ce24 */ BL sprite_set_anim \n\
 \n\
branch_0802ce28: \n\
/* 0802ce28 */ LDR R0, =gCurrentEngineData \n\
/* 0802ce2a */ LDR R3, [R0] \n\
/* 0802ce2c */ LDR R4, [SP, 0x20] \n\
/* 0802ce2e */ LDR R0, [SP, 0x1C] \n\
/* 0802ce30 */ ADDS R2, R4, R0 @ Set R2 to R4 + R0 \n\
/* 0802ce32 */ LSLS R2, R2, 0x3 \n\
/* 0802ce34 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0802ce36 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 0802ce38 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802ce3a */ LDR R1, [SP, 0x14] \n\
/* 0802ce3c */ STR R1, [R0] \n\
/* 0802ce3e */ ADDS R3, 0x30 @ Add 0x30 to R3 \n\
/* 0802ce40 */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 0802ce42 */ LDR R0, [SP, 0x18] \n\
/* 0802ce44 */ STR R0, [R3] \n\
/* 0802ce46 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0802ce48 */ STR R1, [SP, 0x1C] \n\
/* 0802ce4a */ CMP R1, 0x7 @ Compare R1 and 0x7 \n\
/* 0802ce4c */ BGT branch_0802ce52 \n\
/* 0802ce4e */ BL branch_0802c5d8 \n\
 \n\
branch_0802ce52: \n\
/* 0802ce52 */ ADD SP, 0x28 \n\
/* 0802ce54 */ POP {R3-R5} \n\
/* 0802ce56 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802ce58 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802ce5a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802ce5c */ POP {R4-R7} \n\
/* 0802ce5e */ POP {R0} \n\
/* 0802ce60 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
