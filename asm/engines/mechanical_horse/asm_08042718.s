asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mechanical_horse_engine_update \n\
/* 08042718 */ PUSH {LR} \n\
/* 0804271a */ BL func_080420c0 \n\
/* 0804271e */ BL func_0804188c \n\
/* 08042722 */ BL func_08041970 \n\
/* 08042726 */ BL func_0804231c \n\
/* 0804272a */ BL func_08042548 \n\
/* 0804272e */ BL func_08042438 \n\
/* 08042732 */ BL func_08040e80 \n\
/* 08042736 */ BL func_0804249c \n\
/* 0804273a */ LDR R0, =gCurrentEngineData \n\
/* 0804273c */ LDR R0, [R0] \n\
/* 0804273e */ MOVS R1, 0xBB @ Set R1 to 0xBB \n\
/* 08042740 */ LSLS R1, R1, 0x2 \n\
/* 08042742 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042744 */ LDRH R0, [R0] \n\
/* 08042746 */ BL scene_set_music_volume \n\
/* 0804274a */ POP {R0} \n\
/* 0804274c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
