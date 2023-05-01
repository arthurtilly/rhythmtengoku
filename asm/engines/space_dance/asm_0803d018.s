asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_get_anim \n\
/* 0803d018 */ LDR R1, =space_dance_anim_table \n\
/* 0803d01a */ LSLS R0, R0, 0x2 \n\
/* 0803d01c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803d01e */ LDR R1, =gCurrentEngineData \n\
/* 0803d020 */ LDR R1, [R1] \n\
/* 0803d022 */ LDRB R1, [R1, 0x4] \n\
/* 0803d024 */ LDR R0, [R0] \n\
/* 0803d026 */ LSLS R1, R1, 0x2 \n\
/* 0803d028 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803d02a */ LDR R0, [R1] \n\
/* 0803d02c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
