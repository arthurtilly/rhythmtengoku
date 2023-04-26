asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_get_anim \n\
/* 0803bd88 */ LDR R1, =ninja_bodyguard_anim_table \n\
/* 0803bd8a */ LSLS R0, R0, 0x2 \n\
/* 0803bd8c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803bd8e */ LDR R1, =gCurrentEngineData \n\
/* 0803bd90 */ LDR R1, [R1] \n\
/* 0803bd92 */ LDRB R1, [R1] \n\
/* 0803bd94 */ LDR R0, [R0] \n\
/* 0803bd96 */ LSLS R1, R1, 0x2 \n\
/* 0803bd98 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803bd9a */ LDR R0, [R1] \n\
/* 0803bd9c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
