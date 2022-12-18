asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d848 \n\
/* 0801d848 */ PUSH {LR} \n\
/* 0801d84a */ LDR R0, =D_030046a4 \n\
/* 0801d84c */ LDR R0, [R0] \n\
/* 0801d84e */ LDR R0, [R0, 0x14] \n\
/* 0801d850 */ LDR R0, [R0, 0x4] \n\
/* 0801d852 */ BL scene_set_music \n\
/* 0801d856 */ POP {R0} \n\
/* 0801d858 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
