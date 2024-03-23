asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034e40 \n\
/* 08034e40 */ PUSH {R4, LR} \n\
/* 08034e42 */ SUB SP, 0x8 \n\
/* 08034e44 */ LDR R4, =gCurrentEngineData \n\
/* 08034e46 */ LDR R0, [R4] \n\
/* 08034e48 */ LDR R0, [R0, 0x3C] \n\
/* 08034e4a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034e4c */ BLT branch_08034e52 \n\
/* 08034e4e */ BL force_cancel_task \n\
 \n\
branch_08034e52: \n\
/* 08034e52 */ BL get_current_mem_id \n\
/* 08034e56 */ LSLS R0, R0, 0x10 \n\
/* 08034e58 */ LSRS R0, R0, 0x10 \n\
/* 08034e5a */ LDR R3, =(metronome_pal + 0x40) \n\
/* 08034e5c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08034e5e */ STR R1, [SP] \n\
/* 08034e60 */ LDR R1, =(D_03004b10 + 0x254 + 0x40) \n\
/* 08034e62 */ STR R1, [SP, 0x4] \n\
/* 08034e64 */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 08034e66 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08034e68 */ BL palette_fade_out \n\
/* 08034e6c */ LDR R1, [R4] \n\
/* 08034e6e */ STR R0, [R1, 0x3C] \n\
/* 08034e70 */ ADD SP, 0x8 \n\
/* 08034e72 */ POP {R4} \n\
/* 08034e74 */ POP {R0} \n\
/* 08034e76 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
