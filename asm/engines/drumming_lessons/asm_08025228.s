asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_get_anim \n\
/* 08025228 */ LDR R1, =drum_live_anim_table \n\
/* 0802522a */ LSLS R0, R0, 0x2 \n\
/* 0802522c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802522e */ LDR R1, =D_030055d0 \n\
/* 08025230 */ LDR R1, [R1] \n\
/* 08025232 */ LDRB R1, [R1] \n\
/* 08025234 */ LDR R0, [R0] \n\
/* 08025236 */ LSLS R1, R1, 0x2 \n\
/* 08025238 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802523a */ LDR R0, [R1] \n\
/* 0802523c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
