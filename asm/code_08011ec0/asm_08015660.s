asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015660 \n\
/* 08015660 */ PUSH {R4-R7, LR} \n\
/* 08015662 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08015664 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08015666 */ PUSH {R6, R7} \n\
/* 08015668 */ SUB SP, 0x4 \n\
/* 0801566a */ LDR R0, =D_030046a4 \n\
/* 0801566c */ LDR R6, [R0] \n\
/* 0801566e */ MOVS R0, 0xCB @ Set R0 to 0xCB \n\
/* 08015670 */ LSLS R0, R0, 0x2 \n\
/* 08015672 */ ADDS R7, R6, R0 @ Set R7 to R6 + R0 \n\
/* 08015674 */ LDRB R0, [R7, 0xA] \n\
/* 08015676 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08015678 */ BEQ branch_080156c4 \n\
/* 0801567a */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0801567c */ BGT branch_08015688 \n\
/* 0801567e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08015680 */ BEQ branch_08015690 \n\
/* 08015682 */ B branch_080158b8 \n\
\n\
.ltorg \n\
\n\
branch_08015688: \n\
/* 08015688 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0801568a */ BNE branch_0801568e \n\
/* 0801568c */ B branch_08015820 \n\
 \n\
branch_0801568e: \n\
/* 0801568e */ B branch_080158b8 \n\
 \n\
branch_08015690: \n\
/* 08015690 */ LDRH R0, [R7, 0xC] \n\
/* 08015692 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08015694 */ STRH R0, [R7, 0xC] \n\
/* 08015696 */ LSLS R0, R0, 0x10 \n\
/* 08015698 */ LSRS R2, R0, 0x10 \n\
/* 0801569a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0801569c */ BEQ branch_080156a0 \n\
/* 0801569e */ B branch_080158b8 \n\
 \n\
branch_080156a0: \n\
/* 080156a0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080156a2 */ STRB R0, [R7, 0xA] \n\
/* 080156a4 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 080156a6 */ STRH R0, [R7, 0xC] \n\
/* 080156a8 */ STRH R2, [R7, 0xE] \n\
/* 080156aa */ LDR R0, =D_03005380 \n\
/* 080156ac */ LDR R0, [R0] \n\
/* 080156ae */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080156b0 */ LDRSH R1, [R7, R3] \n\
/* 080156b2 */ STR R2, [SP] \n\
/* 080156b4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080156b6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080156b8 */ BL func_0804dae0 \n\
/* 080156bc */ B branch_080158b8 \n\
\n\
.ltorg \n\
 \n\
branch_080156c4: \n\
/* 080156c4 */ LDRB R0, [R6] \n\
/* 080156c6 */ MOVS R1, 0x64 @ Set R1 to 0x64 \n\
/* 080156c8 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080156ca */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 080156cc */ BEQ branch_080156da \n\
/* 080156ce */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080156d0 */ LSLS R2, R2, 0x1 \n\
/* 080156d2 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080156d4 */ LDRH R0, [R7, 0xC] \n\
/* 080156d6 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080156d8 */ STRH R0, [R7, 0xC] \n\
 \n\
branch_080156da: \n\
/* 080156da */ LDRH R2, [R7, 0xC] \n\
/* 080156dc */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080156de */ BNE branch_0801579c \n\
/* 080156e0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080156e2 */ STRB R0, [R7, 0xA] \n\
/* 080156e4 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 080156e6 */ STRH R0, [R7, 0xC] \n\
/* 080156e8 */ LDR R4, =D_03005380 \n\
/* 080156ea */ LDR R0, [R4] \n\
/* 080156ec */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080156ee */ LDRSH R1, [R7, R3] \n\
/* 080156f0 */ STR R2, [SP] \n\
/* 080156f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080156f4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080156f6 */ BL func_0804dae0 \n\
/* 080156fa */ LDR R0, [R4] \n\
/* 080156fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080156fe */ LDRSH R1, [R7, R2] \n\
/* 08015700 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015702 */ BL func_0804cebc \n\
/* 08015706 */ LDRH R4, [R7, 0x10] \n\
/* 08015708 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801570a */ LDR R3, =0x32e \n\
/* 0801570c */ ADDS R3, R3, R6 @ Set R3 to R3 + R6 \n\
/* 0801570e */ MOV R9, R3 @ Set R9 to R3 \n\
 \n\
branch_08015710: \n\
/* 08015710 */ LDR R0, =D_03005380 \n\
/* 08015712 */ LDR R6, [R0] \n\
/* 08015714 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08015716 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08015718 */ LDRSH R0, [R0, R1] \n\
/* 0801571a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801571c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801571e */ BEQ branch_08015738 \n\
/* 08015720 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08015722 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08015724 */ BL __umodsi3 \n\
/* 08015728 */ LSLS R0, R0, 0x18 \n\
/* 0801572a */ ASRS R2, R0, 0x18 \n\
/* 0801572c */ B branch_0801573a \n\
\n\
.ltorg \n\
 \n\
branch_08015738: \n\
/* 08015738 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
 \n\
branch_0801573a: \n\
/* 0801573a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801573c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801573e */ BL func_0804cebc \n\
/* 08015742 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08015744 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08015746 */ BL __udivsi3 \n\
/* 0801574a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801574c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0801574e */ ADD R9, R2 @ Add R2 to R9 \n\
/* 08015750 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08015752 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 08015754 */ BLS branch_08015710 \n\
/* 08015756 */ LDR R4, =D_03005380 \n\
/* 08015758 */ LDR R0, [R4] \n\
/* 0801575a */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0801575c */ LDRSH R1, [R7, R3] \n\
/* 0801575e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08015760 */ BL func_0804cebc \n\
/* 08015764 */ LDRH R0, [R7, 0x12] \n\
/* 08015766 */ LDRH R1, [R7, 0x10] \n\
/* 08015768 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0801576a */ BCS branch_08015778 \n\
/* 0801576c */ LDR R0, [R4] \n\
/* 0801576e */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08015770 */ LDRSH R1, [R7, R2] \n\
/* 08015772 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015774 */ BL func_0804cebc \n\
 \n\
branch_08015778: \n\
/* 08015778 */ LDRH R0, [R7, 0x12] \n\
/* 0801577a */ LDRH R3, [R7, 0x10] \n\
/* 0801577c */ CMP R0, R3 @ Check R0 - R3 \n\
/* 0801577e */ BLS branch_0801578c \n\
/* 08015780 */ LDR R0, [R4] \n\
/* 08015782 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08015784 */ LDRSH R1, [R7, R2] \n\
/* 08015786 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08015788 */ BL func_0804cebc \n\
 \n\
branch_0801578c: \n\
/* 0801578c */ LDR R0, =s_f_point_stop_seqData \n\
/* 0801578e */ BL func_08002634 \n\
/* 08015792 */ B branch_080158b8 \n\
\n\
.ltorg \n\
 \n\
branch_0801579c: \n\
/* 0801579c */ LDRH R1, [R7, 0xE] \n\
/* 0801579e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080157a0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080157a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080157a4 */ BEQ branch_080157a8 \n\
/* 080157a6 */ B branch_080158b8 \n\
 \n\
branch_080157a8: \n\
/* 080157a8 */ LDR R4, =D_03005380 \n\
/* 080157aa */ LDR R5, [R4] \n\
/* 080157ac */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080157ae */ LDRSH R6, [R7, R3] \n\
/* 080157b0 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 080157b2 */ BL func_08001980 \n\
/* 080157b6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080157b8 */ LSLS R2, R2, 0x18 \n\
/* 080157ba */ ASRS R2, R2, 0x18 \n\
/* 080157bc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080157be */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080157c0 */ BL func_0804cebc \n\
/* 080157c4 */ LDR R5, [R4] \n\
/* 080157c6 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080157c8 */ LDRSH R6, [R7, R0] \n\
/* 080157ca */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 080157cc */ BL func_08001980 \n\
/* 080157d0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080157d2 */ LSLS R2, R2, 0x18 \n\
/* 080157d4 */ ASRS R2, R2, 0x18 \n\
/* 080157d6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080157d8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080157da */ BL func_0804cebc \n\
/* 080157de */ LDR R4, [R4] \n\
/* 080157e0 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 080157e2 */ LDRSH R5, [R7, R1] \n\
/* 080157e4 */ LDRH R0, [R7, 0xC] \n\
/* 080157e6 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080157e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080157ea */ BEQ branch_080157ee \n\
/* 080157ec */ MOVS R1, 0xA @ Set R1 to 0xA \n\
 \n\
branch_080157ee: \n\
/* 080157ee */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080157f0 */ BL func_08001980 \n\
/* 080157f4 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080157f6 */ LSLS R2, R2, 0x18 \n\
/* 080157f8 */ ASRS R2, R2, 0x18 \n\
/* 080157fa */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080157fc */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080157fe */ BL func_0804cebc \n\
/* 08015802 */ LDRH R1, [R7, 0xE] \n\
/* 08015804 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08015806 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08015808 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801580a */ BNE branch_080158b8 \n\
/* 0801580c */ LDR R0, =s_f_point_roll_seqData \n\
/* 0801580e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08015810 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015812 */ BL func_08002698 \n\
/* 08015816 */ B branch_080158b8 \n\
\n\
.ltorg \n\
 \n\
branch_08015820: \n\
/* 08015820 */ LDRH R0, [R7, 0xC] \n\
/* 08015822 */ SUBS R1, R0, 0x1 @ Set R1 to R0 - 0x1 \n\
/* 08015824 */ STRH R1, [R7, 0xC] \n\
/* 08015826 */ LSLS R0, R1, 0x10 \n\
/* 08015828 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801582a */ BNE branch_08015870 \n\
/* 0801582c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801582e */ STRB R0, [R7, 0xA] \n\
/* 08015830 */ LDRH R0, [R7, 0x12] \n\
/* 08015832 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015834 */ BEQ branch_08015844 \n\
/* 08015836 */ LDR R0, =D_03005380 \n\
/* 08015838 */ LDR R0, [R0] \n\
/* 0801583a */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0801583c */ LDRSH R1, [R7, R2] \n\
/* 0801583e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08015840 */ BL func_0804d770 \n\
 \n\
branch_08015844: \n\
/* 08015844 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08015846 */ LDR R3, =D_03005380 \n\
/* 08015848 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801584a */ LDR R0, =0x32e \n\
/* 0801584c */ ADDS R4, R6, R0 @ Set R4 to R6 + R0 \n\
 \n\
branch_0801584e: \n\
/* 0801584e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08015850 */ LDR R0, [R1] \n\
/* 08015852 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015854 */ LDRSH R1, [R4, R2] \n\
/* 08015856 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08015858 */ BL func_0804d770 \n\
/* 0801585c */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0801585e */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08015860 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 08015862 */ BLS branch_0801584e \n\
/* 08015864 */ B branch_080158b8 \n\
\n\
.ltorg \n\
 \n\
branch_08015870: \n\
/* 08015870 */ LSLS R0, R1, 0x10 \n\
/* 08015872 */ LSRS R0, R0, 0x14 \n\
/* 08015874 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08015876 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08015878 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801587a */ EORS R0, R1 @ Set R0 to R0 ^ R1 \n\
/* 0801587c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801587e */ LSLS R0, R0, 0x10 \n\
/* 08015880 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08015882 */ LDR R3, =0x32e \n\
/* 08015884 */ ADDS R4, R6, R3 @ Set R4 to R6 + R3 \n\
/* 08015886 */ LDR R0, =D_03005380 \n\
/* 08015888 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0801588a */ MOV R6, R8 @ Set R6 to R8 \n\
 \n\
branch_0801588c: \n\
/* 0801588c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801588e */ LDR R0, [R1] \n\
/* 08015890 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015892 */ LDRSH R1, [R4, R2] \n\
/* 08015894 */ LSRS R2, R6, 0x10 \n\
/* 08015896 */ BL func_0804d770 \n\
/* 0801589a */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0801589c */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0801589e */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 080158a0 */ BLS branch_0801588c \n\
/* 080158a2 */ LDRH R0, [R7, 0x12] \n\
/* 080158a4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080158a6 */ BEQ branch_080158b8 \n\
/* 080158a8 */ LDR R0, =D_03005380 \n\
/* 080158aa */ LDR R0, [R0] \n\
/* 080158ac */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 080158ae */ LDRSH R1, [R7, R3] \n\
/* 080158b0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080158b2 */ LSRS R2, R3, 0x10 \n\
/* 080158b4 */ BL func_0804d770 \n\
 \n\
branch_080158b8: \n\
/* 080158b8 */ LDRH R0, [R7, 0xE] \n\
/* 080158ba */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080158bc */ STRH R0, [R7, 0xE] \n\
/* 080158be */ ADD SP, 0x4 \n\
/* 080158c0 */ POP {R3, R4} \n\
/* 080158c2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080158c4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080158c6 */ POP {R4-R7} \n\
/* 080158c8 */ POP {R0} \n\
/* 080158ca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
