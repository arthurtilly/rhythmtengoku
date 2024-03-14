asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c710 \n\
/* 0803c710 */ PUSH {R4-R7, LR} \n\
/* 0803c712 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0803c714 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0803c716 */ PUSH {R6, R7} \n\
/* 0803c718 */ SUB SP, 0xC \n\
/* 0803c71a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803c71c */ LDR R0, =gCurrentEngineData \n\
/* 0803c71e */ LDR R0, [R0] \n\
/* 0803c720 */ LDRH R1, [R0, 0x28] \n\
/* 0803c722 */ LSLS R1, R1, 0x1 \n\
/* 0803c724 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0803c726 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803c728 */ LDRH R4, [R0] \n\
/* 0803c72a */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0803c72c */ BEQ branch_0803c754 \n\
/* 0803c72e */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0803c730 */ BCC branch_0803c740 \n\
/* 0803c732 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 0803c734 */ BEQ branch_0803c768 \n\
/* 0803c736 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 0803c738 */ BEQ branch_0803c790 \n\
/* 0803c73a */ B branch_0803c7a2 \n\
\n\
.ltorg \n\
 \n\
branch_0803c740: \n\
/* 0803c740 */ MOVS R0, 0x85 @ Set R0 to 0x85 \n\
/* 0803c742 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803c744 */ MOVS R7, 0x4E @ Set R7 to 0x4E \n\
/* 0803c746 */ LDR R1, =0x47f6 \n\
/* 0803c748 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0803c74a */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 0803c74c */ B branch_0803c79c \n\
\n\
.ltorg \n\
 \n\
branch_0803c754: \n\
/* 0803c754 */ MOVS R2, 0x85 @ Set R2 to 0x85 \n\
/* 0803c756 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803c758 */ MOVS R7, 0x4E @ Set R7 to 0x4E \n\
/* 0803c75a */ LDR R0, =0x47f6 \n\
/* 0803c75c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803c75e */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0803c760 */ B branch_0803c79c \n\
\n\
.ltorg \n\
 \n\
branch_0803c768: \n\
/* 0803c768 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0803c76a */ BL agb_random \n\
/* 0803c76e */ LSLS R0, R0, 0x10 \n\
/* 0803c770 */ LDR R1, =D_089e69cc \n\
/* 0803c772 */ LSRS R0, R0, 0xD \n\
/* 0803c774 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803c776 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c778 */ LDRSH R1, [R0, R2] \n\
/* 0803c77a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0803c77c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803c77e */ LDRSH R7, [R0, R1] \n\
/* 0803c780 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0803c782 */ LDRSH R2, [R0, R1] \n\
/* 0803c784 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0803c786 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0803c788 */ B branch_0803c79c \n\
\n\
.ltorg \n\
 \n\
branch_0803c790: \n\
/* 0803c790 */ MOVS R2, 0x85 @ Set R2 to 0x85 \n\
/* 0803c792 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803c794 */ MOVS R7, 0x4E @ Set R7 to 0x4E \n\
/* 0803c796 */ LDR R0, =0x47f6 \n\
/* 0803c798 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803c79a */ MOVS R0, 0xE @ Set R0 to 0xE \n\
 \n\
branch_0803c79c: \n\
/* 0803c79c */ BL ninja_get_anim \n\
/* 0803c7a0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
 \n\
branch_0803c7a2: \n\
/* 0803c7a2 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0803c7a4 */ BL agb_random \n\
/* 0803c7a8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803c7aa */ SUBS R1, 0x4 @ Subtract 0x4 from R1 \n\
/* 0803c7ac */ LSLS R0, R0, 0x10 \n\
/* 0803c7ae */ LSRS R0, R0, 0x10 \n\
/* 0803c7b0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803c7b2 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0803c7b4 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0803c7b6 */ BL agb_random \n\
/* 0803c7ba */ SUBS R1, R7, 0x4 @ Set R1 to R7 - 0x4 \n\
/* 0803c7bc */ LSLS R0, R0, 0x10 \n\
/* 0803c7be */ LSRS R0, R0, 0x10 \n\
/* 0803c7c0 */ ADDS R7, R1, R0 @ Set R7 to R1 + R0 \n\
/* 0803c7c2 */ LDR R5, =gSpriteHandler \n\
/* 0803c7c4 */ LDR R0, [R5] \n\
/* 0803c7c6 */ LSLS R4, R4, 0x10 \n\
/* 0803c7c8 */ ASRS R4, R4, 0x10 \n\
/* 0803c7ca */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803c7cc */ LSLS R2, R1, 0x10 \n\
/* 0803c7ce */ ASRS R2, R2, 0x10 \n\
/* 0803c7d0 */ LSLS R3, R7, 0x10 \n\
/* 0803c7d2 */ ASRS R3, R3, 0x10 \n\
/* 0803c7d4 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0803c7d6 */ LSLS R1, R7, 0x10 \n\
/* 0803c7d8 */ LSRS R1, R1, 0x10 \n\
/* 0803c7da */ STR R1, [SP] \n\
/* 0803c7dc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803c7de */ BL sprite_set_x_y_z \n\
/* 0803c7e2 */ LDR R0, [R5] \n\
/* 0803c7e4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803c7e6 */ STR R1, [SP] \n\
/* 0803c7e8 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0803c7ea */ STR R1, [SP, 0x4] \n\
/* 0803c7ec */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803c7ee */ STR R7, [SP, 0x8] \n\
/* 0803c7f0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803c7f2 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0803c7f4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c7f6 */ BL sprite_set_anim \n\
/* 0803c7fa */ LDR R0, [R5] \n\
/* 0803c7fc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803c7fe */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c800 */ BL sprite_set_visible \n\
/* 0803c804 */ LDR R0, =gCurrentEngineData \n\
/* 0803c806 */ LDR R1, [R0] \n\
/* 0803c808 */ LDRH R0, [R1, 0x28] \n\
/* 0803c80a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803c80c */ STRH R0, [R1, 0x28] \n\
/* 0803c80e */ LSLS R0, R0, 0x10 \n\
/* 0803c810 */ LSRS R0, R0, 0x10 \n\
/* 0803c812 */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 0803c814 */ BLS branch_0803c818 \n\
/* 0803c816 */ STRH R7, [R1, 0x28] \n\
 \n\
branch_0803c818: \n\
/* 0803c818 */ ADD SP, 0xC \n\
/* 0803c81a */ POP {R3, R4} \n\
/* 0803c81c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803c81e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803c820 */ POP {R4-R7} \n\
/* 0803c822 */ POP {R0} \n\
/* 0803c824 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
