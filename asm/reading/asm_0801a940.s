asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a940 \n\
/* 0801a940 */ PUSH {LR} \n\
/* 0801a942 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a944 */ BL func_08007324 \n\
/* 0801a948 */ BL func_080073f0 \n\
/* 0801a94c */ BL func_0801a924 \n\
/* 0801a950 */ LDR R0, =D_030046a4 \n\
/* 0801a952 */ LDR R1, [R0] \n\
/* 0801a954 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a956 */ STR R0, [R1] \n\
/* 0801a958 */ LDR R0, =scene_debug_menu \n\
/* 0801a95a */ BL func_08000584 \n\
/* 0801a95e */ POP {R0} \n\
/* 0801a960 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
