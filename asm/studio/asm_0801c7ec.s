asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c7ec \n\
/* 0801c7ec */ PUSH {R4, LR} \n\
/* 0801c7ee */ LDR R0, =gCurrentSceneData \n\
/* 0801c7f0 */ LDR R0, [R0] \n\
/* 0801c7f2 */ MOVS R1, 0xD7 @ Set R1 to 0xD7 \n\
/* 0801c7f4 */ LSLS R1, R1, 0x2 \n\
/* 0801c7f6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c7f8 */ LDRB R0, [R0] \n\
/* 0801c7fa */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0801c7fc */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0801c7fe */ BHI branch_0801c84e \n\
/* 0801c800 */ LSLS R0, R0, 0x2 \n\
/* 0801c802 */ LDR R1, =jtbl_0801c814 \n\
/* 0801c804 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c806 */ LDR R0, [R0] \n\
/* 0801c808 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0801c814: \n\
.word jump_0801c82c \n\
.word jump_0801c838 \n\
.word jump_0801c844 \n\
.word jump_0801c832 \n\
.word jump_0801c83e \n\
.word jump_0801c84a \n\
\n\
jump_0801c82c: \n\
/* 0801c82c */ BL func_0801b1d8 \n\
/* 0801c830 */ B branch_0801c84e \n\
\n\
jump_0801c832: \n\
/* 0801c832 */ BL func_0801b4f4 \n\
/* 0801c836 */ B branch_0801c84e \n\
\n\
jump_0801c838: \n\
/* 0801c838 */ BL func_0801bce0 \n\
/* 0801c83c */ B branch_0801c84e \n\
\n\
jump_0801c83e: \n\
/* 0801c83e */ BL func_0801c028 \n\
/* 0801c842 */ B branch_0801c84e \n\
\n\
jump_0801c844: \n\
/* 0801c844 */ BL func_0801b858 \n\
/* 0801c848 */ B branch_0801c84e \n\
\n\
jump_0801c84a: \n\
/* 0801c84a */ BL func_0801aaa0 \n\
 \n\
branch_0801c84e: \n\
/* 0801c84e */ BL func_0801c5a4 \n\
/* 0801c852 */ BL func_0801c7e8 \n\
/* 0801c856 */ LDR R4, =gCurrentSceneData \n\
/* 0801c858 */ LDR R0, [R4] \n\
/* 0801c85a */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801c85c */ LSLS R1, R1, 0x2 \n\
/* 0801c85e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c860 */ LDR R0, [R0] \n\
/* 0801c862 */ BL func_0800b074 \n\
/* 0801c866 */ LDR R0, [R4] \n\
/* 0801c868 */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801c86a */ LSLS R1, R1, 0x2 \n\
/* 0801c86c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c86e */ LDR R0, [R0] \n\
/* 0801c870 */ BL func_0800b074 \n\
/* 0801c874 */ LDR R0, [R4] \n\
/* 0801c876 */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 0801c878 */ LSLS R1, R1, 0x2 \n\
/* 0801c87a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c87c */ LDR R0, [R0] \n\
/* 0801c87e */ BL func_0800b074 \n\
/* 0801c882 */ LDR R0, [R4] \n\
/* 0801c884 */ MOVS R1, 0x93 @ Set R1 to 0x93 \n\
/* 0801c886 */ LSLS R1, R1, 0x3 \n\
/* 0801c888 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c88a */ LDRB R0, [R0] \n\
/* 0801c88c */ LDR R1, =D_030046b8 \n\
/* 0801c88e */ LDRH R1, [R1] \n\
/* 0801c890 */ LDR R2, =D_03005378 \n\
/* 0801c892 */ LDRH R2, [R2] \n\
/* 0801c894 */ LDR R3, =D_030046b4 \n\
/* 0801c896 */ LDRH R3, [R3] \n\
/* 0801c898 */ BL func_08029cac \n\
/* 0801c89c */ BL update_drumtech \n\
/* 0801c8a0 */ POP {R4} \n\
/* 0801c8a2 */ POP {R0} \n\
/* 0801c8a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
