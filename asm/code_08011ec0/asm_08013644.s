asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013644 \n\
/* 08013644 */ PUSH {R4-R7, LR} \n\
/* 08013646 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08013648 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801364a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801364c */ PUSH {R5-R7} \n\
/* 0801364e */ SUB SP, 0x24 \n\
/* 08013650 */ LDR R1, =D_030046a8 \n\
/* 08013652 */ LDR R0, [R1] \n\
/* 08013654 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08013656 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08013658 */ LDR R7, =D_030046a4 \n\
/* 0801365a */ LDR R2, [R7] \n\
/* 0801365c */ LDRB R0, [R2, 0x8] \n\
/* 0801365e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08013660 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08013662 */ STRB R0, [R2, 0x8] \n\
/* 08013664 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013666 */ BL func_08007324 \n\
/* 0801366a */ BL func_080073f0 \n\
/* 0801366e */ BL func_080135cc \n\
/* 08013672 */ BL func_0801338c \n\
/* 08013676 */ BL func_080158f0 \n\
/* 0801367a */ LDR R1, [R7] \n\
/* 0801367c */ LDR R2, =D_030046a8 \n\
/* 0801367e */ LDR R0, [R2] \n\
/* 08013680 */ LDRB R0, [R0, 0x10] \n\
/* 08013682 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08013684 */ STRB R0, [R1, 0x10] \n\
/* 08013686 */ LDR R1, [R7] \n\
/* 08013688 */ LDR R0, [R2] \n\
/* 0801368a */ LDRB R0, [R0, 0x11] \n\
/* 0801368c */ STRB R0, [R1, 0x11] \n\
/* 0801368e */ LDR R1, [R7] \n\
/* 08013690 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08013692 */ LDRSB R0, [R1, R0] \n\
/* 08013694 */ LDRB R1, [R1, 0x11] \n\
/* 08013696 */ LSLS R1, R1, 0x18 \n\
/* 08013698 */ ASRS R1, R1, 0x18 \n\
/* 0801369a */ MOV R5, SP @ Set R5 to SP \n\
/* 0801369c */ ADDS R5, 0x1A @ Add 0x1A to R5 \n\
/* 0801369e */ ADD R2, SP, 0x18 \n\
/* 080136a0 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 080136a2 */ BL func_0801332c \n\
/* 080136a6 */ ADD R0, SP, 0x18 \n\
/* 080136a8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080136aa */ LDRSH R1, [R0, R3] \n\
/* 080136ac */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080136ae */ LDRSH R2, [R5, R0] \n\
/* 080136b0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080136b2 */ BL func_0800e058 \n\
/* 080136b6 */ ADD R0, SP, 0x18 \n\
/* 080136b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080136ba */ LDRSH R1, [R0, R2] \n\
/* 080136bc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080136be */ LDRSH R2, [R5, R3] \n\
/* 080136c0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080136c2 */ BL func_0800e058 \n\
/* 080136c6 */ LDR R6, =D_03005380 \n\
/* 080136c8 */ LDR R0, [R6] \n\
/* 080136ca */ LDR R1, =D_089029d0 \n\
/* 080136cc */ MOVS R2, 0x48 @ Set R2 to 0x48 \n\
/* 080136ce */ STR R2, [SP] \n\
/* 080136d0 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 080136d2 */ LSLS R2, R2, 0x7 \n\
/* 080136d4 */ STR R2, [SP, 0x4] \n\
/* 080136d6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080136d8 */ STR R2, [SP, 0x8] \n\
/* 080136da */ STR R4, [SP, 0xC] \n\
/* 080136dc */ STR R4, [SP, 0x10] \n\
/* 080136de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080136e0 */ MOVS R3, 0x30 @ Set R3 to 0x30 \n\
/* 080136e2 */ BL func_0804d160 \n\
/* 080136e6 */ LDR R1, [R7] \n\
/* 080136e8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080136ea */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080136ec */ STRH R0, [R1, 0xC] \n\
/* 080136ee */ LDR R0, [R6] \n\
/* 080136f0 */ LDR R1, =D_08902e88 \n\
/* 080136f2 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 080136f4 */ STR R2, [SP] \n\
/* 080136f6 */ LDR R2, =0x47ff \n\
/* 080136f8 */ STR R2, [SP, 0x4] \n\
/* 080136fa */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080136fc */ STR R2, [SP, 0x8] \n\
/* 080136fe */ STR R4, [SP, 0xC] \n\
/* 08013700 */ STR R4, [SP, 0x10] \n\
/* 08013702 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08013704 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08013706 */ BL func_0804d160 \n\
/* 0801370a */ LDR R1, [R7] \n\
/* 0801370c */ STRH R0, [R1, 0xE] \n\
/* 0801370e */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 08013710 */ LDRSH R0, [R1, R3] \n\
/* 08013712 */ BL func_080140f8 \n\
/* 08013716 */ LDR R0, [R7] \n\
/* 08013718 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0801371a */ LDRSH R0, [R0, R1] \n\
/* 0801371c */ BL func_080140f8 \n\
/* 08013720 */ LDR R1, [R7] \n\
/* 08013722 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08013724 */ LDRSB R0, [R1, R0] \n\
/* 08013726 */ LDRB R1, [R1, 0x11] \n\
/* 08013728 */ LSLS R1, R1, 0x18 \n\
/* 0801372a */ ASRS R1, R1, 0x18 \n\
/* 0801372c */ BL func_08013b98 \n\
/* 08013730 */ LDR R0, [R7] \n\
/* 08013732 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08013734 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08013736 */ STRB R2, [R0] \n\
/* 08013738 */ LDR R3, [R7] \n\
/* 0801373a */ ADD R2, SP, 0x18 \n\
/* 0801373c */ LDRH R1, [R2] \n\
/* 0801373e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08013740 */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 08013742 */ STRH R1, [R0] \n\
/* 08013744 */ LDRH R1, [R2] \n\
/* 08013746 */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 08013748 */ STRH R1, [R0] \n\
/* 0801374a */ LDRH R0, [R5] \n\
/* 0801374c */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0801374e */ ADDS R1, 0x56 @ Add 0x56 to R1 \n\
/* 08013750 */ STRH R0, [R1] \n\
/* 08013752 */ SUBS R1, 0x4 @ Subtract 0x4 from R1 \n\
/* 08013754 */ STRH R0, [R1] \n\
/* 08013756 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08013758 */ ADDS R0, 0x5C @ Add 0x5C to R0 \n\
/* 0801375a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0801375c */ STRB R3, [R0] \n\
/* 0801375e */ LDR R1, [R7] \n\
/* 08013760 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08013762 */ ADDS R0, 0x62 @ Add 0x62 to R0 \n\
/* 08013764 */ STRH R4, [R0] \n\
/* 08013766 */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 08013768 */ STRH R4, [R0] \n\
/* 0801376a */ ADDS R0, 0x6 @ Add 0x6 to R0 \n\
/* 0801376c */ STRH R4, [R0] \n\
/* 0801376e */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 08013770 */ STRH R4, [R0] \n\
/* 08013772 */ LDR R0, [R6] \n\
/* 08013774 */ LDR R1, =D_08902b40 \n\
/* 08013776 */ MOVS R5, 0x8C @ Set R5 to 0x8C \n\
/* 08013778 */ STR R5, [SP] \n\
/* 0801377a */ LDR R2, =0x479c \n\
/* 0801377c */ STR R2, [SP, 0x4] \n\
/* 0801377e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08013780 */ STR R2, [SP, 0x8] \n\
/* 08013782 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08013784 */ STR R2, [SP, 0xC] \n\
/* 08013786 */ STR R4, [SP, 0x10] \n\
/* 08013788 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 0801378a */ BL func_0804d160 \n\
/* 0801378e */ LDR R1, [R7] \n\
/* 08013790 */ STRH R0, [R1, 0x12] \n\
/* 08013792 */ LDR R0, [R6] \n\
/* 08013794 */ LDR R1, =D_08902b68 \n\
/* 08013796 */ STR R5, [SP] \n\
/* 08013798 */ LDR R2, =0x479d \n\
/* 0801379a */ STR R2, [SP, 0x4] \n\
/* 0801379c */ STR R4, [SP, 0x8] \n\
/* 0801379e */ STR R4, [SP, 0xC] \n\
/* 080137a0 */ STR R4, [SP, 0x10] \n\
/* 080137a2 */ STR R4, [SP, 0x14] \n\
/* 080137a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080137a6 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 080137a8 */ BL func_0804d294 \n\
/* 080137ac */ LDR R1, [R7] \n\
/* 080137ae */ STRH R0, [R1, 0x14] \n\
/* 080137b0 */ STRH R5, [R1, 0x16] \n\
/* 080137b2 */ STRH R4, [R1, 0x18] \n\
/* 080137b4 */ LDRB R2, [R1, 0x8] \n\
/* 080137b6 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080137b8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080137ba */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 080137bc */ STRB R0, [R1, 0x8] \n\
/* 080137be */ LDR R0, [R7] \n\
/* 080137c0 */ STRH R4, [R0, 0x1A] \n\
/* 080137c2 */ LDRB R0, [R0, 0x10] \n\
/* 080137c4 */ LSLS R0, R0, 0x18 \n\
/* 080137c6 */ ASRS R0, R0, 0x18 \n\
/* 080137c8 */ BL func_080140a4 \n\
/* 080137cc */ BL func_08012a58 \n\
/* 080137d0 */ BL func_08014c10 \n\
/* 080137d4 */ BL func_08015cf4 \n\
/* 080137d8 */ LDR R0, [R7] \n\
/* 080137da */ STR R4, [R0, 0x4] \n\
/* 080137dc */ BL func_08014df0 \n\
/* 080137e0 */ BL func_08013f9c \n\
/* 080137e4 */ BL func_080154f0 \n\
/* 080137e8 */ LDR R0, [R7] \n\
/* 080137ea */ LDR R3, =0x2da \n\
/* 080137ec */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080137ee */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080137f0 */ STRB R1, [R0] \n\
/* 080137f2 */ LDR R0, [R7] \n\
/* 080137f4 */ LDR R2, =0x2db \n\
/* 080137f6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080137f8 */ STRB R1, [R0] \n\
/* 080137fa */ LDR R0, [R7] \n\
/* 080137fc */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 080137fe */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08013800 */ STRB R1, [R0] \n\
/* 08013802 */ LDR R0, [R7] \n\
/* 08013804 */ MOVS R1, 0xC8 @ Set R1 to 0xC8 \n\
/* 08013806 */ LSLS R1, R1, 0x2 \n\
/* 08013808 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801380a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801380c */ STRB R2, [R0] \n\
/* 0801380e */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08013810 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08013812 */ LDRSB R0, [R3, R0] \n\
/* 08013814 */ STR R0, [SP, 0x1C] \n\
/* 08013816 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08013818 */ LDRSB R1, [R3, R1] \n\
/* 0801381a */ STR R1, [SP, 0x20] \n\
/* 0801381c */ MOVS R6, 0x4 @ Set R6 to 0x4 \n\
/* 0801381e */ LDRSB R6, [R3, R6] \n\
/* 08013820 */ BL func_0801317c \n\
/* 08013824 */ LDR R1, [R7] \n\
/* 08013826 */ LDR R2, =0x4f4 \n\
/* 08013828 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0801382a */ ADD R1, R9 @ Add R9 to R1 \n\
/* 0801382c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0801382e */ STRB R3, [R1] \n\
/* 08013830 */ LDR R2, [R7] \n\
/* 08013832 */ MOVS R3, 0x9F @ Set R3 to 0x9F \n\
/* 08013834 */ LSLS R3, R3, 0x3 \n\
/* 08013836 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08013838 */ STRH R4, [R1] \n\
/* 0801383a */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0801383c */ BLE branch_080138d4 \n\
/* 0801383e */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 08013840 */ BL func_08014938 \n\
/* 08013844 */ LDR R0, [SP, 0x1C] \n\
/* 08013846 */ LDR R1, [SP, 0x20] \n\
/* 08013848 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0801384a */ BL func_080141f8 \n\
/* 0801384e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08013850 */ LDRB R0, [R1, 0x5] \n\
/* 08013852 */ ADD R5, SP, 0x1C \n\
/* 08013854 */ ADD R4, SP, 0x20 \n\
/* 08013856 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013858 */ BEQ branch_08013882 \n\
/* 0801385a */ LDR R0, [R7] \n\
/* 0801385c */ ADD R0, R9 @ Add R9 to R0 \n\
/* 0801385e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08013860 */ STRB R2, [R0] \n\
/* 08013862 */ LDR R0, [R7] \n\
/* 08013864 */ LDR R3, =0x4f5 \n\
/* 08013866 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08013868 */ LDRB R1, [R5] \n\
/* 0801386a */ STRB R1, [R0] \n\
/* 0801386c */ LDR R0, [R7] \n\
/* 0801386e */ LDR R1, =0x4f6 \n\
/* 08013870 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08013872 */ LDRB R1, [R4] \n\
/* 08013874 */ STRB R1, [R0] \n\
/* 08013876 */ LDR R0, [R7] \n\
/* 08013878 */ MOVS R2, 0x9F @ Set R2 to 0x9F \n\
/* 0801387a */ LSLS R2, R2, 0x3 \n\
/* 0801387c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801387e */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 08013880 */ STRH R1, [R0] \n\
 \n\
branch_08013882: \n\
/* 08013882 */ LDR R0, [SP, 0x1C] \n\
/* 08013884 */ LDR R1, [SP, 0x20] \n\
/* 08013886 */ BL func_08013100 \n\
/* 0801388a */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 0801388c */ BNE branch_08013928 \n\
/* 0801388e */ CMP R6, 0x3 @ Compare R6 and 0x3 \n\
/* 08013890 */ BLE branch_08013928 \n\
/* 08013892 */ BL func_08012808 \n\
/* 08013896 */ B branch_08013928 \n\
\n\
.ltorg \n\
 \n\
branch_080138d4: \n\
/* 080138d4 */ MOVS R3, 0xB6 @ Set R3 to 0xB6 \n\
/* 080138d6 */ LSLS R3, R3, 0x2 \n\
/* 080138d8 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 080138da */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080138dc */ STRB R1, [R0] \n\
/* 080138de */ LDR R0, [R7] \n\
/* 080138e0 */ LDR R2, =0x2d9 \n\
/* 080138e2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080138e4 */ STRB R1, [R0] \n\
/* 080138e6 */ BL func_08010478 \n\
/* 080138ea */ LDR R1, [R7] \n\
/* 080138ec */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 080138ee */ LSLS R3, R3, 0x2 \n\
/* 080138f0 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080138f2 */ LDRB R0, [R0] \n\
/* 080138f4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080138f6 */ BEQ branch_08013920 \n\
/* 080138f8 */ LDR R1, =D_030046a8 \n\
/* 080138fa */ LDR R0, [R1] \n\
/* 080138fc */ LDR R2, =0x279 \n\
/* 080138fe */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08013900 */ LDRB R0, [R0] \n\
/* 08013902 */ BL func_08012cb4 \n\
/* 08013906 */ LDR R0, [R7] \n\
/* 08013908 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0801390a */ LSLS R3, R3, 0x2 \n\
/* 0801390c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0801390e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08013910 */ STRB R1, [R0] \n\
/* 08013912 */ B branch_08013924 \n\
\n\
.ltorg \n\
 \n\
branch_08013920: \n\
/* 08013920 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08013922 */ STRB R0, [R1] \n\
 \n\
branch_08013924: \n\
/* 08013924 */ ADD R5, SP, 0x1C \n\
/* 08013926 */ ADD R4, SP, 0x20 \n\
 \n\
branch_08013928: \n\
/* 08013928 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0801392a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0801392c */ STRB R0, [R2, 0x4] \n\
/* 0801392e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013930 */ STRB R0, [R2, 0x5] \n\
/* 08013932 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08013934 */ BL func_080191ac \n\
/* 08013938 */ BL func_08013994 \n\
/* 0801393c */ MOVS R0, 0x35 @ Set R0 to 0x35 \n\
/* 0801393e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08013940 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08013942 */ BL func_0801318c \n\
/* 08013946 */ LDR R0, [SP, 0x1C] \n\
/* 08013948 */ LDR R1, [SP, 0x20] \n\
/* 0801394a */ BL func_0801317c \n\
/* 0801394e */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08013950 */ BLE branch_08013956 \n\
/* 08013952 */ BL func_08012808 \n\
 \n\
branch_08013956: \n\
/* 08013956 */ LDR R0, =D_089d77e4 \n\
/* 08013958 */ LDR R5, =D_089d7c18 \n\
/* 0801395a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801395c */ BL func_080006b0 \n\
/* 08013960 */ LDR R0, =D_089d7964 \n\
/* 08013962 */ LDR R4, =D_089cdf08 \n\
/* 08013964 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08013966 */ BL func_080006b0 \n\
/* 0801396a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801396c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801396e */ BL func_080006b0 \n\
/* 08013972 */ ADD SP, 0x24 \n\
/* 08013974 */ POP {R3-R5} \n\
/* 08013976 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08013978 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801397a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801397c */ POP {R4-R7} \n\
/* 0801397e */ POP {R0} \n\
/* 08013980 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
