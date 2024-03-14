asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023d78 \n\
/* 08023d78 */ PUSH {LR} \n\
/* 08023d7a */ LSLS R0, R0, 0x10 \n\
/* 08023d7c */ LSRS R2, R0, 0x10 \n\
/* 08023d7e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023d80 */ LDRSB R0, [R1, R0] \n\
/* 08023d82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023d84 */ BLT branch_08023d98 \n\
/* 08023d86 */ MOVS R0, 0x50 @ Set R0 to 0x50 \n\
/* 08023d88 */ STRB R0, [R1] \n\
/* 08023d8a */ LDR R0, =gSpriteHandler \n\
/* 08023d8c */ LDR R0, [R0] \n\
/* 08023d8e */ LSLS R1, R2, 0x10 \n\
/* 08023d90 */ ASRS R1, R1, 0x10 \n\
/* 08023d92 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08023d94 */ BL sprite_set_visible \n\
 \n\
branch_08023d98: \n\
/* 08023d98 */ POP {R0} \n\
/* 08023d9a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
