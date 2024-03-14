asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08039164 \n\
/* 08039164 */ PUSH {R4-R7, LR} \n\
/* 08039166 */ SUB SP, 0xC \n\
/* 08039168 */ LDR R0, =gCurrentEngineData \n\
/* 0803916a */ LDR R0, [R0] \n\
/* 0803916c */ ADDS R6, R0, 0x4 @ Set R6 to R0 + 0x4 \n\
/* 0803916e */ BL func_0800c398 \n\
/* 08039172 */ LDR R2, [R6, 0xC] \n\
/* 08039174 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08039176 */ STR R2, [R6, 0xC] \n\
/* 08039178 */ LDR R0, [R6, 0x10] \n\
/* 0803917a */ LDRH R1, [R6, 0x14] \n\
/* 0803917c */ BL func_08039128 \n\
/* 08039180 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08039182 */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 08039184 */ LSLS R5, R0, 0x8 \n\
/* 08039186 */ STR R5, [R6, 0x8] \n\
/* 08039188 */ LDRB R0, [R6, 0x2] \n\
/* 0803918a */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0803918c */ BNE branch_080391a4 \n\
/* 0803918e */ LDR R4, [R6, 0xC] \n\
/* 08039190 */ LSLS R0, R4, 0x6 \n\
/* 08039192 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08039194 */ BL __divsi3 \n\
/* 08039198 */ SUBS R0, R5, R0 @ Set R0 to R5 - R0 \n\
/* 0803919a */ STR R0, [R6, 0x8] \n\
/* 0803919c */ ADDS R7, R4, 0x0 @ Set R7 to R4 + 0x0 \n\
/* 0803919e */ B branch_080391ba \n\
\n\
.ltorg \n\
 \n\
branch_080391a4: \n\
/* 080391a4 */ LDR R7, [R6, 0xC] \n\
/* 080391a6 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 080391a8 */ BNE branch_080391ba \n\
/* 080391aa */ LDR R0, =0xffffc000 \n\
/* 080391ac */ ADDS R4, R5, R0 @ Set R4 to R5 + R0 \n\
/* 080391ae */ LSLS R0, R7, 0x6 \n\
/* 080391b0 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 080391b2 */ BL __divsi3 \n\
/* 080391b6 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080391b8 */ STR R4, [R6, 0x8] \n\
 \n\
branch_080391ba: \n\
/* 080391ba */ LDRB R0, [R6, 0x18] \n\
/* 080391bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080391be */ BEQ branch_080391c6 \n\
/* 080391c0 */ LDRB R0, [R6, 0x17] \n\
/* 080391c2 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 080391c4 */ STRB R0, [R6, 0x17] \n\
 \n\
branch_080391c6: \n\
/* 080391c6 */ LDR R0, [R6, 0x10] \n\
/* 080391c8 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 080391ca */ BLT branch_08039208 \n\
/* 080391cc */ LDRB R0, [R6, 0x2] \n\
/* 080391ce */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 080391d0 */ BNE branch_080391dc \n\
/* 080391d2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080391d4 */ LSLS R0, R0, 0x7 \n\
/* 080391d6 */ B branch_080391e0 \n\
\n\
.ltorg \n\
 \n\
branch_080391dc: \n\
/* 080391dc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080391de */ LSLS R0, R0, 0x8 \n\
 \n\
branch_080391e0: \n\
/* 080391e0 */ STR R0, [R6, 0x8] \n\
/* 080391e2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080391e4 */ STRB R4, [R6, 0x2] \n\
/* 080391e6 */ LDR R5, =gSpriteHandler \n\
/* 080391e8 */ LDR R0, [R5] \n\
/* 080391ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080391ec */ LDRSH R1, [R6, R2] \n\
/* 080391ee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080391f0 */ BL sprite_set_anim_cel \n\
/* 080391f4 */ LDR R0, [R5] \n\
/* 080391f6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080391f8 */ LDRSH R1, [R6, R3] \n\
/* 080391fa */ STR R4, [SP] \n\
/* 080391fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080391fe */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039200 */ BL sprite_set_playback \n\
/* 08039204 */ STRB R4, [R6, 0x17] \n\
/* 08039206 */ STRB R4, [R6, 0x18] \n\
 \n\
branch_08039208: \n\
/* 08039208 */ LDRB R0, [R6, 0x2] \n\
/* 0803920a */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0803920c */ BLS branch_080392bc \n\
/* 0803920e */ LDR R1, [R6, 0x8] \n\
/* 08039210 */ ASRS R0, R1, 0x8 \n\
/* 08039212 */ CMP R0, 0x50 @ Compare R0 and 0x50 \n\
/* 08039214 */ BGT branch_080392bc \n\
/* 08039216 */ LDR R0, =gCurrentEngineData \n\
/* 08039218 */ LDR R0, [R0] \n\
/* 0803921a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803921c */ ADDS R2, 0xE0 @ Add 0xE0 to R2 \n\
/* 0803921e */ LDR R3, =0xffffb000 \n\
/* 08039220 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08039222 */ STR R0, [R2] \n\
/* 08039224 */ MOVS R4, 0xA0 @ Set R4 to 0xA0 \n\
/* 08039226 */ LSLS R4, R4, 0x7 \n\
/* 08039228 */ STR R4, [R6, 0x8] \n\
/* 0803922a */ LDRB R0, [R6, 0x2] \n\
/* 0803922c */ CMP R0, 0x8 @ Compare R0 and 0x8 \n\
/* 0803922e */ BLS branch_080392c6 \n\
/* 08039230 */ LDR R0, [R2] \n\
/* 08039232 */ LSRS R1, R0, 0x1F \n\
/* 08039234 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08039236 */ ASRS R3, R0, 0x1 \n\
/* 08039238 */ ASRS R0, R0, 0x9 \n\
/* 0803923a */ LDR R1, =0xfffffea0 \n\
/* 0803923c */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0803923e */ BGT branch_080392c6 \n\
/* 08039240 */ MOVS R1, 0xB0 @ Set R1 to 0xB0 \n\
/* 08039242 */ LSLS R1, R1, 0x9 \n\
/* 08039244 */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08039246 */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 08039248 */ STR R0, [R6, 0x8] \n\
/* 0803924a */ LDR R0, =0xfffd4000 \n\
/* 0803924c */ STR R0, [R2] \n\
/* 0803924e */ LDR R0, [R6, 0x8] \n\
/* 08039250 */ ASRS R0, R0, 0x8 \n\
/* 08039252 */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 08039254 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08039256 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08039258 */ BGT branch_080392c6 \n\
/* 0803925a */ LDR R0, [R6, 0xC] \n\
/* 0803925c */ ASRS R0, R0, 0x8 \n\
/* 0803925e */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08039260 */ BL __modsi3 \n\
/* 08039264 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08039266 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08039268 */ BNE branch_080392c6 \n\
/* 0803926a */ STR R5, [R6, 0xC] \n\
/* 0803926c */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0803926e */ STRB R0, [R6, 0x2] \n\
/* 08039270 */ LDR R4, =gSpriteHandler \n\
/* 08039272 */ LDR R0, [R4] \n\
/* 08039274 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039276 */ LDRSH R1, [R6, R2] \n\
/* 08039278 */ LDR R2, =anim_bunny_hop_sparkle \n\
/* 0803927a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803927c */ STR R3, [SP] \n\
/* 0803927e */ STR R5, [SP, 0x4] \n\
/* 08039280 */ STR R5, [SP, 0x8] \n\
/* 08039282 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039284 */ BL sprite_set_anim \n\
/* 08039288 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803928a */ LSLS R0, R0, 0x7 \n\
/* 0803928c */ STR R0, [R6, 0x4] \n\
/* 0803928e */ LDR R0, =0xfffff800 \n\
/* 08039290 */ STR R0, [R6, 0x8] \n\
/* 08039292 */ LDR R0, [R4] \n\
/* 08039294 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039296 */ LDRSH R1, [R6, R3] \n\
/* 08039298 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0803929a */ BL sprite_set_x \n\
/* 0803929e */ B branch_080392c6 \n\
\n\
.ltorg \n\
 \n\
branch_080392bc: \n\
/* 080392bc */ LDR R0, =gCurrentEngineData \n\
/* 080392be */ LDR R0, [R0] \n\
/* 080392c0 */ ADDS R0, 0xE0 @ Add 0xE0 to R0 \n\
/* 080392c2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080392c4 */ STR R1, [R0] \n\
 \n\
branch_080392c6: \n\
/* 080392c6 */ LDRB R0, [R6, 0x2] \n\
/* 080392c8 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 080392ca */ BLS branch_08039318 \n\
/* 080392cc */ LDR R4, [R6, 0xC] \n\
/* 080392ce */ ASRS R0, R4, 0x8 \n\
/* 080392d0 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 080392d2 */ BL __modsi3 \n\
/* 080392d6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080392d8 */ BNE branch_08039318 \n\
/* 080392da */ LDR R0, [R6, 0x10] \n\
/* 080392dc */ LSRS R1, R0, 0x1F \n\
/* 080392de */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080392e0 */ ASRS R0, R0, 0x1 \n\
/* 080392e2 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080392e4 */ BGE branch_08039318 \n\
/* 080392e6 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 080392e8 */ BL agb_random \n\
/* 080392ec */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080392ee */ ADDS R4, 0x90 @ Add 0x90 to R4 \n\
/* 080392f0 */ LSLS R4, R4, 0x10 \n\
/* 080392f2 */ ASRS R4, R4, 0x10 \n\
/* 080392f4 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 080392f6 */ BL agb_random \n\
/* 080392fa */ LDR R1, =gCurrentEngineData \n\
/* 080392fc */ LDR R2, [R1] \n\
/* 080392fe */ ADDS R2, 0xE0 @ Add 0xE0 to R2 \n\
/* 08039300 */ LDR R1, [R6, 0x8] \n\
/* 08039302 */ LDR R2, [R2] \n\
/* 08039304 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08039306 */ ASRS R1, R1, 0x8 \n\
/* 08039308 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0803930a */ LSLS R1, R1, 0x10 \n\
/* 0803930c */ ASRS R1, R1, 0x10 \n\
/* 0803930e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08039310 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039312 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08039314 */ BL func_0803978c \n\
 \n\
branch_08039318: \n\
/* 08039318 */ LDR R0, =gSpriteHandler \n\
/* 0803931a */ LDR R0, [R0] \n\
/* 0803931c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803931e */ LDRSH R1, [R6, R2] \n\
/* 08039320 */ LDR R2, [R6, 0x8] \n\
/* 08039322 */ LSLS R2, R2, 0x8 \n\
/* 08039324 */ ASRS R2, R2, 0x10 \n\
/* 08039326 */ BL sprite_set_y \n\
/* 0803932a */ MOVS R0, 0x16 @ Set R0 to 0x16 \n\
/* 0803932c */ LDRSB R0, [R6, R0] \n\
/* 0803932e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08039330 */ LSLS R1, R1, 0x1 \n\
/* 08039332 */ MOVS R2, 0x17 @ Set R2 to 0x17 \n\
/* 08039334 */ LDRSB R2, [R6, R2] \n\
/* 08039336 */ BL set_affine_scale_rotation \n\
/* 0803933a */ ADD SP, 0xC \n\
/* 0803933c */ POP {R4-R7} \n\
/* 0803933e */ POP {R0} \n\
/* 08039340 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
