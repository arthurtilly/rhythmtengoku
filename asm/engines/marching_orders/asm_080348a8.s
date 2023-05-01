asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_cue_hit \n\
/* 080348a8 */ PUSH {LR} \n\
/* 080348aa */ LDR R0, =gCurrentEngineData \n\
/* 080348ac */ LDR R2, [R0] \n\
/* 080348ae */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 080348b0 */ ADDS R3, 0x2C @ Add 0x2C to R3 \n\
/* 080348b2 */ LDRB R0, [R1] \n\
/* 080348b4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080348b6 */ BEQ branch_080348f4 \n\
/* 080348b8 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080348ba */ BGT branch_080348c8 \n\
/* 080348bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080348be */ BEQ branch_080348d2 \n\
/* 080348c0 */ B branch_0803491e \n\
\n\
.ltorg \n\
 \n\
branch_080348c8: \n\
/* 080348c8 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080348ca */ BEQ branch_080348fa \n\
/* 080348cc */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 080348ce */ BEQ branch_08034900 \n\
/* 080348d0 */ B branch_0803491e \n\
 \n\
branch_080348d2: \n\
/* 080348d2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080348d4 */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 080348d6 */ LDRB R0, [R0] \n\
/* 080348d8 */ LDR R1, =s_guntai_foot1_seqData \n\
/* 080348da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080348dc */ BEQ branch_080348e0 \n\
/* 080348de */ LDR R1, =s_guntai_foot2_seqData \n\
 \n\
branch_080348e0: \n\
/* 080348e0 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080348e2 */ BL play_sound \n\
/* 080348e6 */ BL func_0803494c \n\
/* 080348ea */ B branch_0803491e \n\
\n\
.ltorg \n\
 \n\
branch_080348f4: \n\
/* 080348f4 */ BL func_08034988 \n\
/* 080348f8 */ B branch_0803491e \n\
 \n\
branch_080348fa: \n\
/* 080348fa */ BL func_080349ac \n\
/* 080348fe */ B branch_0803491e \n\
 \n\
branch_08034900: \n\
/* 08034900 */ LDRH R0, [R3, 0x6] \n\
/* 08034902 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034904 */ BEQ branch_0803491e \n\
/* 08034906 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08034908 */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 0803490a */ LDRB R0, [R0] \n\
/* 0803490c */ LDR R1, =s_guntai_foot1_seqData \n\
/* 0803490e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034910 */ BEQ branch_08034914 \n\
/* 08034912 */ LDR R1, =s_guntai_foot2_seqData \n\
 \n\
branch_08034914: \n\
/* 08034914 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08034916 */ BL play_sound \n\
/* 0803491a */ BL func_080349d0 \n\
 \n\
branch_0803491e: \n\
/* 0803491e */ POP {R0} \n\
/* 08034920 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
