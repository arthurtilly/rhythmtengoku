asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e810 \n\
/* 0801e810 */ PUSH {R4, R5, LR} \n\
/* 0801e812 */ LDR R4, =0xfffffdf0 \n\
/* 0801e814 */ ADD SP, R4 @ Add R4 to SP \n\
/* 0801e816 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801e818 */ LDR R1, =0x0000020f \n\
 \n\
branch_0801e81a: \n\
/* 0801e81a */ MOV R2, SP @ Set R2 to SP \n\
/* 0801e81c */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 0801e81e */ STRB R4, [R0] \n\
/* 0801e820 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801e822 */ CMP R4, R1 @ Check R4 - R1 \n\
/* 0801e824 */ BLS branch_0801e81a \n\
/* 0801e826 */ BL func_0801e90c \n\
/* 0801e82a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e82c */ BEQ branch_0801e8e6 \n\
/* 0801e82e */ LDR R0, =D_030053b8 \n\
/* 0801e830 */ LDRH R1, [R0] \n\
/* 0801e832 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0801e834 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e836 */ LSLS R0, R0, 0x10 \n\
/* 0801e838 */ LSRS R0, R0, 0x10 \n\
/* 0801e83a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801e83c */ LSRS R2, R0, 0x1F \n\
/* 0801e83e */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0801e840 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e842 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e844 */ BEQ branch_0801e84a \n\
/* 0801e846 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801e848 */ NEGS R2, R2 @ Set R2 to -R2 \n\
 \n\
branch_0801e84a: \n\
/* 0801e84a */ LDR R0, =D_03004ac0 \n\
/* 0801e84c */ LDRH R1, [R0] \n\
/* 0801e84e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801e850 */ LSLS R0, R0, 0x1 \n\
/* 0801e852 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e854 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e856 */ BEQ branch_0801e85a \n\
/* 0801e858 */ LSLS R2, R2, 0x5 \n\
 \n\
branch_0801e85a: \n\
/* 0801e85a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801e85c */ LSLS R0, R0, 0x2 \n\
/* 0801e85e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e860 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e862 */ BEQ branch_0801e86a \n\
/* 0801e864 */ LSLS R0, R2, 0x2 \n\
/* 0801e866 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801e868 */ LSLS R2, R0, 0x1 \n\
 \n\
branch_0801e86a: \n\
/* 0801e86a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0801e86c */ BEQ branch_0801e87a \n\
/* 0801e86e */ LDR R0, =gCurrentSceneData \n\
/* 0801e870 */ LDR R0, [R0] \n\
/* 0801e872 */ LDR R0, [R0, 0xC] \n\
/* 0801e874 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801e876 */ BL func_0801e928 \n\
 \n\
branch_0801e87a: \n\
/* 0801e87a */ LDR R2, =D_03004afc \n\
/* 0801e87c */ LDRH R1, [R2] \n\
/* 0801e87e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801e880 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e882 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0801e884 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e886 */ BEQ branch_0801e8aa \n\
/* 0801e888 */ LDR R0, =gCurrentSceneData \n\
/* 0801e88a */ LDR R0, [R0] \n\
/* 0801e88c */ LDR R0, [R0, 0xC] \n\
/* 0801e88e */ MOVS R2, 0x84 @ Set R2 to 0x84 \n\
/* 0801e890 */ LSLS R2, R2, 0x2 \n\
/* 0801e892 */ MOV R1, SP @ Set R1 to SP \n\
/* 0801e894 */ BL func_080090ec \n\
/* 0801e898 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0801e89a: \n\
/* 0801e89a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e89c */ ADDS R1, R4, 0x1 @ Set R1 to R4 + 0x1 \n\
 \n\
branch_0801e89e: \n\
/* 0801e89e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801e8a0 */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 0801e8a2 */ BLS branch_0801e89e \n\
/* 0801e8a4 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0801e8a6 */ CMP R4, 0x20 @ Compare R4 and 0x20 \n\
/* 0801e8a8 */ BLS branch_0801e89a \n\
 \n\
branch_0801e8aa: \n\
/* 0801e8aa */ LDRH R1, [R5] \n\
/* 0801e8ac */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801e8ae */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e8b0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e8b2 */ BEQ branch_0801e8cc \n\
/* 0801e8b4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801e8b6 */ LDR R5, =0x0000020f \n\
 \n\
branch_0801e8b8: \n\
/* 0801e8b8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801e8ba */ LSLS R0, R0, 0x1 \n\
/* 0801e8bc */ BL agb_random \n\
/* 0801e8c0 */ MOV R2, SP @ Set R2 to SP \n\
/* 0801e8c2 */ ADDS R1, R2, R4 @ Set R1 to R2 + R4 \n\
/* 0801e8c4 */ STRB R0, [R1] \n\
/* 0801e8c6 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801e8c8 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0801e8ca */ BLS branch_0801e8b8 \n\
 \n\
branch_0801e8cc: \n\
/* 0801e8cc */ LDR R0, =D_03004afc \n\
/* 0801e8ce */ LDRH R1, [R0] \n\
/* 0801e8d0 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0801e8d2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801e8d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e8d6 */ BEQ branch_0801e8e6 \n\
/* 0801e8d8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e8da */ BL set_pause_beatscript_scene \n\
/* 0801e8de */ LDR R0, =gCurrentSceneData \n\
/* 0801e8e0 */ LDR R1, [R0] \n\
/* 0801e8e2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e8e4 */ STR R0, [R1, 0x8] \n\
 \n\
branch_0801e8e6: \n\
/* 0801e8e6 */ MOVS R3, 0x84 @ Set R3 to 0x84 \n\
/* 0801e8e8 */ LSLS R3, R3, 0x2 \n\
/* 0801e8ea */ ADD SP, R3 @ Add R3 to SP \n\
/* 0801e8ec */ POP {R4, R5} \n\
/* 0801e8ee */ POP {R0} \n\
/* 0801e8f0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
