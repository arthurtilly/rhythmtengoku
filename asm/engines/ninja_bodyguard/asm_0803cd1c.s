asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_cue_update \n\
/* 0803cd1c */ PUSH {R4, LR} \n\
/* 0803cd1e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0803cd20 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0803cd22 */ BL ticks_to_frames \n\
/* 0803cd26 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803cd28 */ BHI branch_0803cd2e \n\
/* 0803cd2a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803cd2c */ B branch_0803cd30 \n\
 \n\
branch_0803cd2e: \n\
/* 0803cd2e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803cd30: \n\
/* 0803cd30 */ POP {R4} \n\
/* 0803cd32 */ POP {R1} \n\
/* 0803cd34 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
