asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804317c \n\
/* 0804317c */ PUSH {R4, R5, LR} \n\
/* 0804317e */ SUB SP, 0x14 \n\
/* 08043180 */ LDR R0, =D_030055d0 \n\
/* 08043182 */ LDR R4, [R0] \n\
/* 08043184 */ ADDS R5, R4, 0x4 @ Set R5 to R4 + 0x4 \n\
/* 08043186 */ LDR R0, =D_03005380 \n\
/* 08043188 */ LDR R0, [R0] \n\
/* 0804318a */ LDR R1, =anim_yellow_microbe_beat \n\
/* 0804318c */ MOVS R2, 0x8A @ Set R2 to 0x8A \n\
/* 0804318e */ STR R2, [SP] \n\
/* 08043190 */ MOVS R2, 0x89 @ Set R2 to 0x89 \n\
/* 08043192 */ LSLS R2, R2, 0x8 \n\
/* 08043194 */ STR R2, [SP, 0x4] \n\
/* 08043196 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08043198 */ STR R2, [SP, 0x8] \n\
/* 0804319a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0804319c */ STR R2, [SP, 0xC] \n\
/* 0804319e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080431a0 */ STR R2, [SP, 0x10] \n\
/* 080431a2 */ MOVS R3, 0xAE @ Set R3 to 0xAE \n\
/* 080431a4 */ BL func_0804d160 \n\
/* 080431a8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080431aa */ STRH R0, [R4, 0x4] \n\
/* 080431ac */ STRB R1, [R5, 0x2] \n\
/* 080431ae */ ADD SP, 0x14 \n\
/* 080431b0 */ POP {R4, R5} \n\
/* 080431b2 */ POP {R0} \n\
/* 080431b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
