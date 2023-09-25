asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080481c0 \n\
/* 080481c0 */ PUSH {R4, LR} \n\
/* 080481c2 */ LDR R4, =s_studio_bgm_seqData \n\
/* 080481c4 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 080481c6 */ BL ticks_to_frames \n\
/* 080481ca */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080481cc */ LSLS R1, R1, 0x10 \n\
/* 080481ce */ LSRS R1, R1, 0x10 \n\
/* 080481d0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080481d2 */ BL fade_out_sound \n\
/* 080481d6 */ POP {R4} \n\
/* 080481d8 */ POP {R0} \n\
/* 080481da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
