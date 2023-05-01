asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036ff4 \n\
/* 08036ff4 */ PUSH {LR} \n\
/* 08036ff6 */ LDR R0, =gCurrentEngineData \n\
/* 08036ff8 */ LDR R2, [R0] \n\
/* 08036ffa */ LDRB R0, [R2, 0x9] \n\
/* 08036ffc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036ffe */ BEQ branch_0803702a \n\
/* 08037000 */ LDRH R3, [R2, 0xA] \n\
/* 08037002 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08037004 */ BNE branch_0803702a \n\
/* 08037006 */ LDR R0, =D_03004afc \n\
/* 08037008 */ LDRH R1, [R0] \n\
/* 0803700a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803700c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803700e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037010 */ BEQ branch_0803702a \n\
/* 08037012 */ STRB R3, [R2, 0x9] \n\
/* 08037014 */ BL get_current_scene_trans_target \n\
/* 08037018 */ BL get_scene_trans_target \n\
/* 0803701c */ BL set_next_scene \n\
/* 08037020 */ BL gameplay_skip_tutorial \n\
/* 08037024 */ LDR R0, =s_menu_cancel3_seqData \n\
/* 08037026 */ BL play_sound \n\
 \n\
branch_0803702a: \n\
/* 0803702a */ POP {R0} \n\
/* 0803702c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
