asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d700 \n\
/* 0801d700 */ PUSH {R4-R6, LR} \n\
/* 0801d702 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801d704 */ BL func_0801d818 \n\
/* 0801d708 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d70a */ BEQ branch_0801d742 \n\
/* 0801d70c */ LDR R0, =D_030053b8 \n\
/* 0801d70e */ LDRH R1, [R0] \n\
/* 0801d710 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801d712 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801d714 */ LSLS R0, R0, 0x10 \n\
/* 0801d716 */ LSRS R0, R0, 0x10 \n\
/* 0801d718 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801d71a */ ASRS R4, R0, 0x1F \n\
/* 0801d71c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0801d71e */ ANDS R4, R2 @ Set R4 to R4 & R2 \n\
/* 0801d720 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801d722 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801d724 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d726 */ BEQ branch_0801d72a \n\
/* 0801d728 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_0801d72a: \n\
/* 0801d72a */ LDR R0, =D_03004afc \n\
/* 0801d72c */ LDRH R1, [R0] \n\
/* 0801d72e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801d730 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801d732 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d734 */ BEQ branch_0801d738 \n\
/* 0801d736 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
 \n\
branch_0801d738: \n\
/* 0801d738 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801d73a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801d73c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d73e */ BEQ branch_0801d742 \n\
/* 0801d740 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_0801d742: \n\
/* 0801d742 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801d744 */ BEQ branch_0801d7cc \n\
/* 0801d746 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801d748 */ BHI branch_0801d758 \n\
/* 0801d74a */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801d74c */ BEQ branch_0801d762 \n\
/* 0801d74e */ B branch_0801d800 \n\
\n\
.ltorg \n\
 \n\
branch_0801d758: \n\
/* 0801d758 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 0801d75a */ BEQ branch_0801d7dc \n\
/* 0801d75c */ CMP R4, 0x4 @ Compare R4 and 0x4 \n\
/* 0801d75e */ BEQ branch_0801d7ec \n\
/* 0801d760 */ B branch_0801d800 \n\
 \n\
branch_0801d762: \n\
/* 0801d762 */ LDR R6, =D_030046a4 \n\
/* 0801d764 */ LDR R0, [R6] \n\
/* 0801d766 */ LDR R0, [R0, 0x4] \n\
/* 0801d768 */ BL func_0800b118 \n\
/* 0801d76c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801d76e */ BL func_0801d204 \n\
/* 0801d772 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d774 */ BEQ branch_0801d7c0 \n\
/* 0801d776 */ BL func_08000608 \n\
/* 0801d77a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801d77c */ BL func_0800061c \n\
/* 0801d780 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801d782 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d784 */ BL func_080006f0 \n\
/* 0801d788 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801d78a */ BL func_0801d1f0 \n\
/* 0801d78e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801d790 */ BL func_08000584 \n\
/* 0801d794 */ BL func_0800070c \n\
/* 0801d798 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801d79a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d79c */ BL func_080006b0 \n\
/* 0801d7a0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801d7a2 */ BL func_0801d6c4 \n\
/* 0801d7a6 */ LDR R0, =s_menu_kettei2_seqData \n\
/* 0801d7a8 */ BL play_sound \n\
/* 0801d7ac */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d7ae */ BL pause_beatscript_scene \n\
/* 0801d7b2 */ LDR R1, [R6] \n\
/* 0801d7b4 */ B branch_0801d7fc \n\
\n\
.ltorg \n\
 \n\
branch_0801d7c0: \n\
/* 0801d7c0 */ LDR R0, =s_menu_error_seqData \n\
/* 0801d7c2 */ BL play_sound \n\
/* 0801d7c6 */ B branch_0801d800 \n\
\n\
.ltorg \n\
 \n\
branch_0801d7cc: \n\
/* 0801d7cc */ LDR R0, =D_030046a4 \n\
/* 0801d7ce */ LDR R0, [R0] \n\
/* 0801d7d0 */ LDR R0, [R0, 0x4] \n\
/* 0801d7d2 */ BL func_0800b140 \n\
/* 0801d7d6 */ B branch_0801d800 \n\
\n\
.ltorg \n\
 \n\
branch_0801d7dc: \n\
/* 0801d7dc */ LDR R0, =D_030046a4 \n\
/* 0801d7de */ LDR R0, [R0] \n\
/* 0801d7e0 */ LDR R0, [R0, 0x4] \n\
/* 0801d7e2 */ BL func_0800b21c \n\
/* 0801d7e6 */ B branch_0801d800 \n\
\n\
.ltorg \n\
 \n\
branch_0801d7ec: \n\
/* 0801d7ec */ LDR R0, =s_menu_cancel3_seqData \n\
/* 0801d7ee */ BL play_sound \n\
/* 0801d7f2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d7f4 */ BL pause_beatscript_scene \n\
/* 0801d7f8 */ LDR R0, =D_030046a4 \n\
/* 0801d7fa */ LDR R1, [R0] \n\
 \n\
branch_0801d7fc: \n\
/* 0801d7fc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d7fe */ STR R0, [R1] \n\
 \n\
branch_0801d800: \n\
/* 0801d800 */ LDR R0, =D_030046a4 \n\
/* 0801d802 */ LDR R0, [R0] \n\
/* 0801d804 */ LDR R0, [R0, 0x4] \n\
/* 0801d806 */ BL func_0800b074 \n\
/* 0801d80a */ POP {R4-R6} \n\
/* 0801d80c */ POP {R0} \n\
/* 0801d80e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
