asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e154 \n\
/* 0801e154 */ LDR R1, =D_03001560 \n\
/* 0801e156 */ LDR R0, =gCurrentSceneData \n\
/* 0801e158 */ LDR R2, [R0] \n\
/* 0801e15a */ LDRH R0, [R2, 0xE] \n\
/* 0801e15c */ STRB R0, [R1] \n\
/* 0801e15e */ LDR R1, =D_03001561 \n\
/* 0801e160 */ LDRH R0, [R2, 0x10] \n\
/* 0801e162 */ STRB R0, [R1] \n\
/* 0801e164 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
