asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_get_anim \n\
/* 0803e990 */ LDR R1, =toss_boys_anim_table \n\
/* 0803e992 */ LSLS R0, R0, 0x2 \n\
/* 0803e994 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803e996 */ LDR R1, =gCurrentEngineData \n\
/* 0803e998 */ LDR R1, [R1] \n\
/* 0803e99a */ LDRB R1, [R1] \n\
/* 0803e99c */ LDR R0, [R0] \n\
/* 0803e99e */ LSLS R1, R1, 0x2 \n\
/* 0803e9a0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803e9a2 */ LDR R0, [R1] \n\
/* 0803e9a4 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
