asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a8b0 \n\
/* 0801a8b0 */ PUSH {LR} \n\
/* 0801a8b2 */ LDR R0, =gCurrentSceneData \n\
/* 0801a8b4 */ LDR R0, [R0] \n\
/* 0801a8b6 */ LDR R0, [R0] \n\
/* 0801a8b8 */ LDR R0, [R0, 0xC] \n\
/* 0801a8ba */ LDR R0, [R0] \n\
/* 0801a8bc */ BL scene_set_music \n\
/* 0801a8c0 */ POP {R0} \n\
/* 0801a8c2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
