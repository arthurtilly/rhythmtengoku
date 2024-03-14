asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803960c \n\
/* 0803960c */ PUSH {R4-R7, LR} \n\
/* 0803960e */ SUB SP, 0x14 \n\
/* 08039610 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08039612 */ LSLS R1, R1, 0x18 \n\
/* 08039614 */ LSRS R7, R1, 0x18 \n\
/* 08039616 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08039618 */ BL agb_random \n\
/* 0803961c */ LSLS R0, R0, 0x18 \n\
/* 0803961e */ ASRS R6, R0, 0x18 \n\
/* 08039620 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08039622 */ BL agb_random \n\
/* 08039626 */ LSLS R0, R0, 0x10 \n\
/* 08039628 */ LDR R3, =0x800a \n\
/* 0803962a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803962c */ BEQ branch_08039630 \n\
/* 0803962e */ LDR R3, =0x400a \n\
 \n\
branch_08039630: \n\
/* 08039630 */ LDR R4, =gSpriteHandler \n\
/* 08039632 */ LDR R0, [R4] \n\
/* 08039634 */ LDR R1, =anim_bunny_hop_cloud \n\
/* 08039636 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08039638 */ STR R2, [SP] \n\
/* 0803963a */ STR R3, [SP, 0x4] \n\
/* 0803963c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803963e */ STR R2, [SP, 0x8] \n\
/* 08039640 */ STR R2, [SP, 0xC] \n\
/* 08039642 */ STR R2, [SP, 0x10] \n\
/* 08039644 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08039646 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08039648 */ BL sprite_create \n\
/* 0803964c */ STRH R0, [R5] \n\
/* 0803964e */ LSLS R0, R7, 0x1 \n\
/* 08039650 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08039652 */ LSLS R0, R0, 0xB \n\
/* 08039654 */ STR R0, [R5, 0x4] \n\
/* 08039656 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08039658 */ LSLS R0, R0, 0x1 \n\
/* 0803965a */ BL agb_random \n\
/* 0803965e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08039660 */ LSLS R3, R3, 0x10 \n\
/* 08039662 */ LSRS R3, R3, 0x10 \n\
/* 08039664 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 08039666 */ SUBS R3, 0x20 @ Subtract 0x20 from R3 \n\
/* 08039668 */ LSLS R3, R3, 0x8 \n\
/* 0803966a */ STR R3, [R5, 0x8] \n\
/* 0803966c */ LDR R0, [R4] \n\
/* 0803966e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039670 */ LDRSH R1, [R5, R2] \n\
/* 08039672 */ LDR R2, [R5, 0x4] \n\
/* 08039674 */ LSLS R2, R2, 0x8 \n\
/* 08039676 */ ASRS R2, R2, 0x10 \n\
/* 08039678 */ LSLS R3, R3, 0x8 \n\
/* 0803967a */ ASRS R3, R3, 0x10 \n\
/* 0803967c */ BL sprite_set_x_y \n\
/* 08039680 */ ADD SP, 0x14 \n\
/* 08039682 */ POP {R4-R7} \n\
/* 08039684 */ POP {R0} \n\
/* 08039686 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
