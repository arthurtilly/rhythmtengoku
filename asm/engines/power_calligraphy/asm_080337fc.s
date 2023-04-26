asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start power_calligraphy_cue_miss \n\
/* 080337fc */ PUSH {LR} \n\
/* 080337fe */ SUB SP, 0x4 \n\
/* 08033800 */ LDR R0, =D_03005380 \n\
/* 08033802 */ LDR R0, [R0] \n\
/* 08033804 */ LDR R1, =gCurrentEngineData \n\
/* 08033806 */ LDR R1, [R1] \n\
/* 08033808 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 0803380a */ LDRSH R1, [R1, R2] \n\
/* 0803380c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803380e */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08033810 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08033812 */ STR R3, [SP] \n\
/* 08033814 */ BL func_0804dae0 \n\
/* 08033818 */ BL beatscript_enable_loops \n\
/* 0803381c */ ADD SP, 0x4 \n\
/* 0803381e */ POP {R0} \n\
/* 08033820 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
