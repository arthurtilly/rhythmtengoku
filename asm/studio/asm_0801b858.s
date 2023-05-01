asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b858 \n\
/* 0801b858 */ PUSH {R4, R5, LR} \n\
/* 0801b85a */ SUB SP, 0x4 \n\
/* 0801b85c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801b85e */ LDR R0, =gCurrentSceneData \n\
/* 0801b860 */ LDR R0, [R0] \n\
/* 0801b862 */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 0801b864 */ LSLS R1, R1, 0x2 \n\
/* 0801b866 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b868 */ LDR R0, [R0] \n\
/* 0801b86a */ BL func_0800b368 \n\
/* 0801b86e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b870 */ BNE branch_0801b8a4 \n\
/* 0801b872 */ BL func_0801c8b8 \n\
/* 0801b876 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b878 */ BEQ branch_0801b8a4 \n\
/* 0801b87a */ LDR R0, =D_03004afc \n\
/* 0801b87c */ LDRH R1, [R0] \n\
/* 0801b87e */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0801b880 */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 0801b882 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b884 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b886 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b888 */ BEQ branch_0801b88c \n\
/* 0801b88a */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
 \n\
branch_0801b88c: \n\
/* 0801b88c */ LDR R0, =D_030053b8 \n\
/* 0801b88e */ LDRH R1, [R0] \n\
/* 0801b890 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801b892 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b894 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b896 */ BEQ branch_0801b89a \n\
/* 0801b898 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
 \n\
branch_0801b89a: \n\
/* 0801b89a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801b89c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b89e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b8a0 */ BEQ branch_0801b8a4 \n\
/* 0801b8a2 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_0801b8a4: \n\
/* 0801b8a4 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801b8a6 */ BNE branch_0801b8aa \n\
/* 0801b8a8 */ B branch_0801b9b8 \n\
 \n\
branch_0801b8aa: \n\
/* 0801b8aa */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801b8ac */ BHI branch_0801b8c0 \n\
/* 0801b8ae */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801b8b0 */ BEQ branch_0801b8cc \n\
/* 0801b8b2 */ B branch_0801b9e0 \n\
\n\
.ltorg \n\
 \n\
branch_0801b8c0: \n\
/* 0801b8c0 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 0801b8c2 */ BNE branch_0801b8c6 \n\
/* 0801b8c4 */ B branch_0801b9d0 \n\
 \n\
branch_0801b8c6: \n\
/* 0801b8c6 */ CMP R4, 0x4 @ Compare R4 and 0x4 \n\
/* 0801b8c8 */ BEQ branch_0801b974 \n\
/* 0801b8ca */ B branch_0801b9e0 \n\
 \n\
branch_0801b8cc: \n\
/* 0801b8cc */ LDR R5, =D_030046a8 \n\
/* 0801b8ce */ LDR R4, [R5] \n\
/* 0801b8d0 */ LDR R0, =gCurrentSceneData \n\
/* 0801b8d2 */ LDR R0, [R0] \n\
/* 0801b8d4 */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 0801b8d6 */ LSLS R1, R1, 0x2 \n\
/* 0801b8d8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b8da */ LDR R0, [R0] \n\
/* 0801b8dc */ BL func_0800b118 \n\
/* 0801b8e0 */ LDR R1, =0x28f \n\
/* 0801b8e2 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 0801b8e4 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0801b8e6 */ LDRB R0, [R4] \n\
/* 0801b8e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b8ea */ BNE branch_0801b900 \n\
/* 0801b8ec */ LDR R1, =s_menu_error_seqData \n\
/* 0801b8ee */ B branch_0801b966 \n\
\n\
.ltorg \n\
 \n\
branch_0801b900: \n\
/* 0801b900 */ LDR R0, [R5] \n\
/* 0801b902 */ MOVS R1, 0xB9 @ Set R1 to 0xB9 \n\
/* 0801b904 */ LSLS R1, R1, 0x2 \n\
/* 0801b906 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b908 */ BL get_remaining_replay_data_space \n\
/* 0801b90c */ LSRS R4, R0, 0x8 \n\
/* 0801b90e */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801b910 */ BEQ branch_0801b92e \n\
/* 0801b912 */ LDR R0, [R5] \n\
/* 0801b914 */ MOVS R1, 0xB9 @ Set R1 to 0xB9 \n\
/* 0801b916 */ LSLS R1, R1, 0x2 \n\
/* 0801b918 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b91a */ BL get_available_replay_data_id \n\
/* 0801b91e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0801b920 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b922 */ BLT branch_0801b934 \n\
/* 0801b924 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b926 */ CMP R4, 0x9 @ Compare R4 and 0x9 \n\
/* 0801b928 */ BHI branch_0801b930 \n\
/* 0801b92a */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0801b92c */ B branch_0801b934 \n\
 \n\
branch_0801b92e: \n\
/* 0801b92e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_0801b930: \n\
/* 0801b930 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0801b932 */ BEQ branch_0801b960 \n\
 \n\
branch_0801b934: \n\
/* 0801b934 */ LDR R1, =studio_mem_warnings_text \n\
/* 0801b936 */ LSLS R0, R2, 0x2 \n\
/* 0801b938 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b93a */ LDR R1, [R0] \n\
/* 0801b93c */ LDR R2, =func_0801b834 \n\
/* 0801b93e */ LDR R0, =s_menu_se24_seqData \n\
/* 0801b940 */ STR R0, [SP] \n\
/* 0801b942 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801b944 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801b946 */ BL func_0801ac38 \n\
/* 0801b94a */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801b94c */ B branch_0801b966 \n\
\n\
.ltorg \n\
 \n\
branch_0801b960: \n\
/* 0801b960 */ BL func_0801b7b8 \n\
/* 0801b964 */ LDR R1, =s_menu_se24_seqData \n\
 \n\
branch_0801b966: \n\
/* 0801b966 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b968 */ BL play_sound_in_player \n\
/* 0801b96c */ B branch_0801b9e0 \n\
\n\
.ltorg \n\
 \n\
branch_0801b974: \n\
/* 0801b974 */ LDR R1, =s_menu_cancel3_seqData \n\
/* 0801b976 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b978 */ BL play_sound_in_player \n\
/* 0801b97c */ LDR R4, =gCurrentSceneData \n\
/* 0801b97e */ LDR R0, [R4] \n\
/* 0801b980 */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 0801b982 */ LSLS R1, R1, 0x2 \n\
/* 0801b984 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b986 */ LDR R0, [R0] \n\
/* 0801b988 */ BL func_0800b3e8 \n\
/* 0801b98c */ LDR R0, [R4] \n\
/* 0801b98e */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801b990 */ LSLS R1, R1, 0x2 \n\
/* 0801b992 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b994 */ LDR R0, [R0] \n\
/* 0801b996 */ BL func_0800b3c8 \n\
/* 0801b99a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801b99c */ BL func_0801c6b8 \n\
/* 0801b9a0 */ LDR R0, [R4] \n\
/* 0801b9a2 */ MOVS R1, 0xD7 @ Set R1 to 0xD7 \n\
/* 0801b9a4 */ LSLS R1, R1, 0x2 \n\
/* 0801b9a6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b9a8 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801b9aa */ STRB R1, [R0] \n\
/* 0801b9ac */ B branch_0801b9e0 \n\
\n\
.ltorg \n\
 \n\
branch_0801b9b8: \n\
/* 0801b9b8 */ LDR R0, =gCurrentSceneData \n\
/* 0801b9ba */ LDR R0, [R0] \n\
/* 0801b9bc */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 0801b9be */ LSLS R1, R1, 0x2 \n\
/* 0801b9c0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b9c2 */ LDR R0, [R0] \n\
/* 0801b9c4 */ BL func_0800b140 \n\
/* 0801b9c8 */ B branch_0801b9e0 \n\
\n\
.ltorg \n\
 \n\
branch_0801b9d0: \n\
/* 0801b9d0 */ LDR R0, =gCurrentSceneData \n\
/* 0801b9d2 */ LDR R0, [R0] \n\
/* 0801b9d4 */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 0801b9d6 */ LSLS R1, R1, 0x2 \n\
/* 0801b9d8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b9da */ LDR R0, [R0] \n\
/* 0801b9dc */ BL func_0800b21c \n\
 \n\
branch_0801b9e0: \n\
/* 0801b9e0 */ ADD SP, 0x4 \n\
/* 0801b9e2 */ POP {R4, R5} \n\
/* 0801b9e4 */ POP {R0} \n\
/* 0801b9e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
