asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_engine_update \n\
/* 080409cc */ PUSH {R4, LR} \n\
/* 080409ce */ BL func_08040718 \n\
/* 080409d2 */ LDR R4, =gCurrentEngineData \n\
/* 080409d4 */ LDR R1, [R4] \n\
/* 080409d6 */ LDRB R0, [R1] \n\
/* 080409d8 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080409da */ BNE branch_08040a08 \n\
/* 080409dc */ LDR R1, [R1, 0x44] \n\
/* 080409de */ LDR R0, =0x9fff \n\
/* 080409e0 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080409e2 */ BGT branch_08040a08 \n\
/* 080409e4 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 080409e6 */ BL ticks_to_frames \n\
/* 080409ea */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080409ec */ LDR R4, [R4] \n\
/* 080409ee */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 080409f0 */ LSLS R0, R0, 0x8 \n\
/* 080409f2 */ BL __divsi3 \n\
/* 080409f6 */ LDR R2, [R4, 0x44] \n\
/* 080409f8 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 080409fa */ STR R2, [R4, 0x44] \n\
/* 080409fc */ LSLS R2, R2, 0x8 \n\
/* 080409fe */ ASRS R2, R2, 0x10 \n\
/* 08040a00 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08040a02 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08040a04 */ BL scene_set_bg_layer_pos \n\
 \n\
branch_08040a08: \n\
/* 08040a08 */ POP {R4} \n\
/* 08040a0a */ POP {R0} \n\
/* 08040a0c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
