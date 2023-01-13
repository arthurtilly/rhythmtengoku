asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start sick_beats_cue_hit \n\
/* 08043d98 */ PUSH {LR} \n\
/* 08043d9a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08043d9c */ LDR R1, =anim_fork_hit_virus \n\
/* 08043d9e */ LDR R2, =s_f_virus_hit_seqData \n\
/* 08043da0 */ BL func_08043a38 \n\
/* 08043da4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043da6 */ BEQ branch_08043dec \n\
/* 08043da8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08043daa */ BL func_080435e8 \n\
/* 08043dae */ LDR R0, =D_030055d0 \n\
/* 08043db0 */ LDR R0, [R0] \n\
/* 08043db2 */ LDR R1, =0x1f1 \n\
/* 08043db4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08043db6 */ LDRB R0, [R0] \n\
/* 08043db8 */ LSLS R0, R0, 0x18 \n\
/* 08043dba */ ASRS R0, R0, 0x18 \n\
/* 08043dbc */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08043dbe */ BNE branch_08043de0 \n\
/* 08043dc0 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08043dc2 */ BL func_08042d4c \n\
/* 08043dc6 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 08043dc8 */ BL func_08042b30 \n\
/* 08043dcc */ B branch_08043dec \n\
\n\
.ltorg \n\
 \n\
branch_08043de0: \n\
/* 08043de0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08043de2 */ BL func_08042d4c \n\
/* 08043de6 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08043de8 */ BL func_08042b30 \n\
 \n\
branch_08043dec: \n\
/* 08043dec */ POP {R0} \n\
/* 08043dee */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
