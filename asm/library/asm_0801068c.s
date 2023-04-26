asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801068c \n\
/* 0801068c */ PUSH {R4-R6, LR} \n\
/* 0801068e */ SUB SP, 0xC \n\
/* 08010690 */ BL func_0801075c \n\
/* 08010694 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010696 */ BEQ branch_0801074e \n\
/* 08010698 */ LDR R5, =gCurrentSceneData \n\
/* 0801069a */ LDR R0, [R5] \n\
/* 0801069c */ LDRB R1, [R0, 0x6] \n\
/* 0801069e */ LDR R6, =D_03004afc \n\
/* 080106a0 */ LDRH R2, [R6] \n\
/* 080106a2 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 080106a4 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 080106a6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080106a8 */ BEQ branch_080106b4 \n\
/* 080106aa */ LSLS R0, R1, 0x18 \n\
/* 080106ac */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 080106ae */ LSLS R1, R1, 0x18 \n\
/* 080106b0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080106b2 */ LSRS R1, R0, 0x18 \n\
 \n\
branch_080106b4: \n\
/* 080106b4 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080106b6 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 080106b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080106ba */ BEQ branch_080106c6 \n\
/* 080106bc */ LSLS R0, R1, 0x18 \n\
/* 080106be */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 080106c0 */ LSLS R3, R3, 0x11 \n\
/* 080106c2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080106c4 */ LSRS R1, R0, 0x18 \n\
 \n\
branch_080106c6: \n\
/* 080106c6 */ LSLS R0, R1, 0x18 \n\
/* 080106c8 */ ASRS R0, R0, 0x18 \n\
/* 080106ca */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080106cc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080106ce */ BL clamp_int32 \n\
/* 080106d2 */ LSLS R0, R0, 0x18 \n\
/* 080106d4 */ LDR R3, [R5] \n\
/* 080106d6 */ LSRS R1, R0, 0x18 \n\
/* 080106d8 */ ASRS R2, R0, 0x18 \n\
/* 080106da */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080106dc */ LDRSB R0, [R3, R0] \n\
/* 080106de */ CMP R2, R0 @ Check R2 - R0 \n\
/* 080106e0 */ BEQ branch_08010706 \n\
/* 080106e2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080106e4 */ STRB R1, [R3, 0x6] \n\
/* 080106e6 */ LDR R0, =D_03005380 \n\
/* 080106e8 */ LDR R0, [R0] \n\
/* 080106ea */ LDR R1, [R5] \n\
/* 080106ec */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080106ee */ LDRSH R1, [R1, R3] \n\
/* 080106f0 */ LDR R3, =library_option_anim \n\
/* 080106f2 */ LSLS R2, R2, 0x2 \n\
/* 080106f4 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080106f6 */ LDR R2, [R2] \n\
/* 080106f8 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080106fa */ STR R3, [SP] \n\
/* 080106fc */ STR R4, [SP, 0x4] \n\
/* 080106fe */ STR R4, [SP, 0x8] \n\
/* 08010700 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08010702 */ BL func_0804d8f8 \n\
 \n\
branch_08010706: \n\
/* 08010706 */ LDRH R1, [R6] \n\
/* 08010708 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801070a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801070c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801070e */ BEQ branch_0801074e \n\
/* 08010710 */ LDR R0, [R5] \n\
/* 08010712 */ LDRB R0, [R0, 0x6] \n\
/* 08010714 */ LSLS R0, R0, 0x18 \n\
/* 08010716 */ ASRS R0, R0, 0x18 \n\
/* 08010718 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801071a */ BNE branch_08010738 \n\
/* 0801071c */ BL func_0800061c \n\
/* 08010720 */ BL func_08000584 \n\
/* 08010724 */ B branch_08010740 \n\
\n\
.ltorg \n\
 \n\
branch_08010738: \n\
/* 08010738 */ BL func_0800061c \n\
/* 0801073c */ BL func_08000674 \n\
 \n\
branch_08010740: \n\
/* 08010740 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010742 */ BL set_pause_beatscript_scene \n\
/* 08010746 */ LDR R0, =gCurrentSceneData \n\
/* 08010748 */ LDR R1, [R0] \n\
/* 0801074a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801074c */ STR R0, [R1] \n\
 \n\
branch_0801074e: \n\
/* 0801074e */ ADD SP, 0xC \n\
/* 08010750 */ POP {R4-R6} \n\
/* 08010752 */ POP {R0} \n\
/* 08010754 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
