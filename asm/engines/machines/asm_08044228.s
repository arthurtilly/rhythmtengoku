asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044228 \n\
/* 08044228 */ LDR R1, =rhythm_toys_sprite_table \n\
/* 0804422a */ LSLS R0, R0, 0x2 \n\
/* 0804422c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804422e */ LDR R1, =gCurrentEngineData \n\
/* 08044230 */ LDR R1, [R1] \n\
/* 08044232 */ LDRB R1, [R1] \n\
/* 08044234 */ LDR R0, [R0] \n\
/* 08044236 */ LSLS R1, R1, 0x3 \n\
/* 08044238 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804423a */ LDR R0, [R1, 0x4] \n\
/* 0804423c */ LDRH R0, [R0] \n\
/* 0804423e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
