asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032228 \n\
/* 08032228 */ PUSH {R4, R5, LR} \n\
/* 0803222a */ LDR R4, =gCurrentEngineData \n\
/* 0803222c */ LDR R0, [R4] \n\
/* 0803222e */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08032230 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08032232 */ STRB R5, [R0] \n\
/* 08032234 */ LDR R0, [R4] \n\
/* 08032236 */ STR R5, [R0, 0x7C] \n\
/* 08032238 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803223a */ ADDS R1, 0x80 @ Add 0x80 to R1 \n\
/* 0803223c */ STR R5, [R1] \n\
/* 0803223e */ LDR R2, [R0, 0x7C] \n\
/* 08032240 */ LSLS R2, R2, 0x8 \n\
/* 08032242 */ ASRS R2, R2, 0x10 \n\
/* 08032244 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08032246 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08032248 */ BL scene_set_bg_layer_pos \n\
/* 0803224c */ LDR R0, [R4] \n\
/* 0803224e */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 08032250 */ LDR R2, [R0] \n\
/* 08032252 */ LSLS R2, R2, 0x8 \n\
/* 08032254 */ ASRS R2, R2, 0x10 \n\
/* 08032256 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08032258 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803225a */ BL scene_set_bg_layer_pos \n\
/* 0803225e */ LDR R0, [R4] \n\
/* 08032260 */ ADDS R0, 0x89 @ Add 0x89 to R0 \n\
/* 08032262 */ STRB R5, [R0] \n\
/* 08032264 */ LDR R3, [R4] \n\
/* 08032266 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08032268 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0803226a */ STR R5, [R0] \n\
/* 0803226c */ LDR R1, =D_03004b10 \n\
/* 0803226e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08032270 */ ADDS R2, 0x4C @ Add 0x4C to R2 \n\
/* 08032272 */ LDR R0, =0x3846 \n\
/* 08032274 */ STRH R0, [R2] \n\
/* 08032276 */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 08032278 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803227a */ LSLS R0, R0, 0x5 \n\
/* 0803227c */ STRH R0, [R1] \n\
/* 0803227e */ MOVS R1, 0xF1 @ Set R1 to 0xF1 \n\
/* 08032280 */ LSLS R1, R1, 0x1 \n\
/* 08032282 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08032284 */ STRH R5, [R0] \n\
/* 08032286 */ POP {R4, R5} \n\
/* 08032288 */ POP {R0} \n\
/* 0803228a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
