asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start power_calligraphy_common_init_tutorial \n\
/* 080338fc */ PUSH {R4, LR} \n\
/* 080338fe */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08033900 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08033902 */ BEQ branch_08033934 \n\
/* 08033904 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08033906 */ BL gameplay_enable_tutorial \n\
/* 0803390a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803390c */ BL gameplay_set_skip_destination \n\
/* 08033910 */ LDR R0, =D_03005380 \n\
/* 08033912 */ LDR R0, [R0] \n\
/* 08033914 */ LDR R1, =gCurrentEngineData \n\
/* 08033916 */ LDR R1, [R1] \n\
/* 08033918 */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 0803391a */ LSLS R2, R2, 0x1 \n\
/* 0803391c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803391e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033920 */ LDRSH R1, [R1, R2] \n\
/* 08033922 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08033924 */ BL func_0804d770 \n\
/* 08033928 */ B branch_08033952 \n\
\n\
.ltorg \n\
 \n\
branch_08033934: \n\
/* 08033934 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08033936 */ BL gameplay_enable_tutorial \n\
/* 0803393a */ LDR R0, =D_03005380 \n\
/* 0803393c */ LDR R0, [R0] \n\
/* 0803393e */ LDR R1, =gCurrentEngineData \n\
/* 08033940 */ LDR R1, [R1] \n\
/* 08033942 */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 08033944 */ LSLS R2, R2, 0x1 \n\
/* 08033946 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08033948 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803394a */ LDRSH R1, [R1, R2] \n\
/* 0803394c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803394e */ BL func_0804d770 \n\
 \n\
branch_08033952: \n\
/* 08033952 */ POP {R4} \n\
/* 08033954 */ POP {R0} \n\
/* 08033956 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
