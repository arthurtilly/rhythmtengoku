asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start calligraphy_cue_barely \n\
/* 080337d4 */ PUSH {R4, LR} \n\
/* 080337d6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080337d8 */ LDRSB R4, [R1, R4] \n\
/* 080337da */ BL gameplay_get_last_hit_offset \n\
/* 080337de */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080337e0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080337e2 */ BGE branch_080337e6 \n\
/* 080337e4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_080337e6: \n\
/* 080337e6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080337e8 */ BL func_080336a0 \n\
/* 080337ec */ BL beatscript_enable_loops \n\
/* 080337f0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080337f2 */ BL func_08032a64 \n\
/* 080337f6 */ POP {R4} \n\
/* 080337f8 */ POP {R0} \n\
/* 080337fa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
