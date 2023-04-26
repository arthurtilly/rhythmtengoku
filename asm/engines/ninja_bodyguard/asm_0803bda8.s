asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bda8 \n\
/* 0803bda8 */ PUSH {R4, R5, LR} \n\
/* 0803bdaa */ SUB SP, 0x1C \n\
/* 0803bdac */ MOVS R0, 0x16 @ Set R0 to 0x16 \n\
/* 0803bdae */ BL ninja_get_anim \n\
/* 0803bdb2 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803bdb4 */ LSLS R1, R1, 0x4 \n\
/* 0803bdb6 */ STR R1, [SP] \n\
/* 0803bdb8 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803bdba */ LSLS R1, R1, 0x1 \n\
/* 0803bdbc */ STR R1, [SP, 0x4] \n\
/* 0803bdbe */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803bdc0 */ LSLS R1, R1, 0x2 \n\
/* 0803bdc2 */ STR R1, [SP, 0x8] \n\
/* 0803bdc4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803bdc6 */ STR R4, [SP, 0xC] \n\
/* 0803bdc8 */ STR R4, [SP, 0x10] \n\
/* 0803bdca */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803bdcc */ LSLS R1, R1, 0x8 \n\
/* 0803bdce */ STR R1, [SP, 0x14] \n\
/* 0803bdd0 */ STR R4, [SP, 0x18] \n\
/* 0803bdd2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803bdd4 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0803bdd6 */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 0803bdd8 */ BL create_affine_sprite \n\
/* 0803bddc */ LDR R5, =gCurrentEngineData \n\
/* 0803bdde */ LDR R1, [R5] \n\
/* 0803bde0 */ MOVS R2, 0xBD @ Set R2 to 0xBD \n\
/* 0803bde2 */ LSLS R2, R2, 0x2 \n\
/* 0803bde4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803bde6 */ STR R0, [R1] \n\
/* 0803bde8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803bdea */ BL affine_sprite_rotate_with_orbit \n\
/* 0803bdee */ LDR R0, [R5] \n\
/* 0803bdf0 */ MOVS R1, 0xBF @ Set R1 to 0xBF \n\
/* 0803bdf2 */ LSLS R1, R1, 0x2 \n\
/* 0803bdf4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803bdf6 */ STR R4, [R0] \n\
/* 0803bdf8 */ ADD SP, 0x1C \n\
/* 0803bdfa */ POP {R4, R5} \n\
/* 0803bdfc */ POP {R0} \n\
/* 0803bdfe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
