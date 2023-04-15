asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dfac \n\
/* 0801dfac */ PUSH {LR} \n\
/* 0801dfae */ SUB SP, 0x14 \n\
/* 0801dfb0 */ LDR R0, =D_03005380 \n\
/* 0801dfb2 */ LDR R0, [R0] \n\
/* 0801dfb4 */ LDR R1, =anim_warning_text_continue \n\
/* 0801dfb6 */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 0801dfb8 */ STR R2, [SP] \n\
/* 0801dfba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801dfbc */ STR R3, [SP, 0x4] \n\
/* 0801dfbe */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801dfc0 */ STR R2, [SP, 0x8] \n\
/* 0801dfc2 */ STR R3, [SP, 0xC] \n\
/* 0801dfc4 */ STR R3, [SP, 0x10] \n\
/* 0801dfc6 */ MOVS R2, 0xF @ Set R2 to 0xF \n\
/* 0801dfc8 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801dfca */ BL func_0804d160 \n\
/* 0801dfce */ ADD SP, 0x14 \n\
/* 0801dfd0 */ POP {R0} \n\
/* 0801dfd2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
