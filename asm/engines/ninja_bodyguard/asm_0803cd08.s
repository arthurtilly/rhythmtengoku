asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_cue_spawn \n\
/* 0803cd08 */ LDR R0, =gCurrentEngineData \n\
/* 0803cd0a */ LDR R0, [R0] \n\
/* 0803cd0c */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0803cd0e */ LSLS R2, R2, 0x2 \n\
/* 0803cd10 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803cd12 */ LDRH R0, [R0] \n\
/* 0803cd14 */ STRH R0, [R1] \n\
/* 0803cd16 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
