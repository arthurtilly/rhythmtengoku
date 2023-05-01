asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d1f0 \n\
/* 0801d1f0 */ LDR R1, =gCurrentSceneData \n\
/* 0801d1f2 */ LDR R1, [R1] \n\
/* 0801d1f4 */ LDR R1, [R1, 0x14] \n\
/* 0801d1f6 */ LDR R1, [R1, 0xC] \n\
/* 0801d1f8 */ LSLS R0, R0, 0x4 \n\
/* 0801d1fa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801d1fc */ LDR R0, [R0] \n\
/* 0801d1fe */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
