asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036fac \n\
/* 08036fac */ PUSH {R4, LR} \n\
/* 08036fae */ LDR R4, =gCurrentEngineData \n\
/* 08036fb0 */ LDR R2, [R4] \n\
/* 08036fb2 */ LDRB R0, [R2, 0x9] \n\
/* 08036fb4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036fb6 */ BEQ branch_08036fe2 \n\
/* 08036fb8 */ LDRH R3, [R2, 0xA] \n\
/* 08036fba */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08036fbc */ BNE branch_08036fe2 \n\
/* 08036fbe */ LDR R0, =D_03004afc \n\
/* 08036fc0 */ LDRH R1, [R0] \n\
/* 08036fc2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08036fc4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036fc6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036fc8 */ BEQ branch_08036fe2 \n\
/* 08036fca */ STRB R3, [R2, 0x9] \n\
/* 08036fcc */ LDR R0, [R4] \n\
/* 08036fce */ LDRB R1, [R0, 0x8] \n\
/* 08036fd0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036fd2 */ BL gameplay_set_inter_engine_variable \n\
/* 08036fd6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036fd8 */ BL set_pause_beatscript_scene \n\
/* 08036fdc */ LDR R0, =s_menu_kettei2_seqData \n\
/* 08036fde */ BL play_sound \n\
 \n\
branch_08036fe2: \n\
/* 08036fe2 */ POP {R4} \n\
/* 08036fe4 */ POP {R0} \n\
/* 08036fe6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
