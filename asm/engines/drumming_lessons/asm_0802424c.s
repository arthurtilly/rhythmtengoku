asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_init_gfx3 \n\
/* 0802424c */ PUSH {LR} \n\
/* 0802424e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08024250 */ BL func_0800c604 \n\
/* 08024254 */ BL gameplay_start_screen_fade_in \n\
/* 08024258 */ LDR R2, =D_03004b10 \n\
/* 0802425a */ LDR R0, =0x00000436 \n\
/* 0802425c */ ADDS R3, R2, R0 @ Set R3 to R2 + R0 \n\
/* 0802425e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08024260 */ STRH R1, [R3] \n\
/* 08024262 */ LDR R0, =gCurrentEngineData \n\
/* 08024264 */ LDR R0, [R0] \n\
/* 08024266 */ LDRB R0, [R0] \n\
/* 08024268 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802426a */ BNE branch_08024276 \n\
/* 0802426c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802426e */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 08024270 */ STRH R1, [R0] \n\
/* 08024272 */ LDR R0, =0x00007fff \n\
/* 08024274 */ STRH R0, [R3] \n\
 \n\
branch_08024276: \n\
/* 08024276 */ POP {R0} \n\
/* 08024278 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
