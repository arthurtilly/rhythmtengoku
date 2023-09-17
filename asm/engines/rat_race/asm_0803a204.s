asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a204 \n\
/* 0803a204 */ PUSH {LR} \n\
/* 0803a206 */ SUB SP, 0x4 \n\
/* 0803a208 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803a20a */ BL ticks_to_frames \n\
/* 0803a20e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803a210 */ LDR R2, =(D_030053c0 + 0x190) \n\
/* 0803a212 */ LDRH R3, [R2] \n\
/* 0803a214 */ LDR R0, =gCurrentEngineData \n\
/* 0803a216 */ LDR R0, [R0] \n\
/* 0803a218 */ LDR R0, [R0, 0x70] \n\
/* 0803a21a */ STR R0, [SP] \n\
/* 0803a21c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803a21e */ BL scene_start_integer_interp \n\
/* 0803a222 */ ADD SP, 0x4 \n\
/* 0803a224 */ POP {R0} \n\
/* 0803a226 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
