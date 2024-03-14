asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080420c0 \n\
/* 080420c0 */ PUSH {R4-R7, LR} \n\
/* 080420c2 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080420c4 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080420c6 */ PUSH {R6, R7} \n\
/* 080420c8 */ LDR R1, =D_0805aa20 \n\
/* 080420ca */ LDR R0, =gCurrentEngineData \n\
/* 080420cc */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080420ce */ LDR R5, [R0] \n\
/* 080420d0 */ MOVS R2, 0xB3 @ Set R2 to 0xB3 \n\
/* 080420d2 */ LSLS R2, R2, 0x2 \n\
/* 080420d4 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080420d6 */ ADDS R0, R5, R2 @ Set R0 to R5 + R2 \n\
/* 080420d8 */ LDRB R0, [R0] \n\
/* 080420da */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080420dc */ LSLS R0, R0, 0x2 \n\
/* 080420de */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080420e0 */ LDR R7, [R0] \n\
/* 080420e2 */ LSLS R6, R7, 0x1 \n\
/* 080420e4 */ LDR R4, [R5, 0x14] \n\
/* 080420e6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080420e8 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 080420ea */ BL __divsi3 \n\
/* 080420ee */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 080420f0 */ STR R4, [R5, 0x14] \n\
/* 080420f2 */ CMP R4, R6 @ Check R4 - R6 \n\
/* 080420f4 */ BLE branch_080420f8 \n\
/* 080420f6 */ STR R6, [R5, 0x14] \n\
 \n\
branch_080420f8: \n\
/* 080420f8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080420fa */ LDR R1, [R3] \n\
/* 080420fc */ LDR R0, [R1, 0x14] \n\
/* 080420fe */ CMP R0, 0x1F @ Compare R0 and 0x1F \n\
/* 08042100 */ BGT branch_08042106 \n\
/* 08042102 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08042104 */ STR R0, [R1, 0x14] \n\
 \n\
branch_08042106: \n\
/* 08042106 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08042108 */ LDR R3, [R0] \n\
/* 0804210a */ LDR R0, [R3, 0x2C] \n\
/* 0804210c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804210e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042110 */ BGE branch_08042114 \n\
/* 08042112 */ ADDS R2, 0x1F @ Add 0x1F to R2 \n\
 \n\
branch_08042114: \n\
/* 08042114 */ ASRS R2, R2, 0x5 \n\
/* 08042116 */ SUBS R2, R0, R2 @ Set R2 to R0 - R2 \n\
/* 08042118 */ STR R2, [R3, 0x2C] \n\
/* 0804211a */ MOVS R1, 0xBC @ Set R1 to 0xBC \n\
/* 0804211c */ LSLS R1, R1, 0x2 \n\
/* 0804211e */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08042120 */ LDRH R1, [R0] \n\
/* 08042122 */ LDR R0, [R3, 0x14] \n\
/* 08042124 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08042126 */ ASRS R1, R1, 0x8 \n\
/* 08042128 */ SUBS R1, R2, R1 @ Set R1 to R2 - R1 \n\
/* 0804212a */ LDR R0, [R3, 0x24] \n\
/* 0804212c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804212e */ STR R0, [R3, 0x24] \n\
/* 08042130 */ CMP R2, R7 @ Check R2 - R7 \n\
/* 08042132 */ BLE branch_08042136 \n\
/* 08042134 */ STR R7, [R3, 0x2C] \n\
 \n\
branch_08042136: \n\
/* 08042136 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08042138 */ LDR R1, [R2] \n\
/* 0804213a */ LDR R0, [R1, 0x2C] \n\
/* 0804213c */ CMP R0, 0x1F @ Compare R0 and 0x1F \n\
/* 0804213e */ BGT branch_08042144 \n\
/* 08042140 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08042142 */ STR R0, [R1, 0x2C] \n\
 \n\
branch_08042144: \n\
/* 08042144 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08042146 */ LDR R2, [R3] \n\
/* 08042148 */ LDR R1, =D_0805aaa0 \n\
/* 0804214a */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804214c */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0804214e */ LDRB R0, [R0] \n\
/* 08042150 */ LSLS R0, R0, 0x2 \n\
/* 08042152 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042154 */ LDR R1, [R2, 0x24] \n\
/* 08042156 */ LDR R0, [R0] \n\
/* 08042158 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804215a */ BLE branch_0804215e \n\
/* 0804215c */ STR R0, [R2, 0x24] \n\
 \n\
branch_0804215e: \n\
/* 0804215e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08042160 */ LDR R1, [R0] \n\
/* 08042162 */ LDR R0, [R1, 0x24] \n\
/* 08042164 */ LDR R2, =0xffff9c00 \n\
/* 08042166 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 08042168 */ BGE branch_0804216c \n\
/* 0804216a */ STR R2, [R1, 0x24] \n\
 \n\
branch_0804216c: \n\
/* 0804216c */ LDR R5, =gSpriteHandler \n\
/* 0804216e */ LDR R0, [R5] \n\
/* 08042170 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08042172 */ LDR R2, [R1] \n\
/* 08042174 */ MOVS R3, 0x1C @ Set R3 to 0x1C \n\
/* 08042176 */ LDRSH R1, [R2, R3] \n\
/* 08042178 */ LDR R2, [R2, 0x24] \n\
/* 0804217a */ LSLS R2, R2, 0x8 \n\
/* 0804217c */ ASRS R2, R2, 0x10 \n\
/* 0804217e */ BL sprite_set_x \n\
/* 08042182 */ LDR R0, [R5] \n\
/* 08042184 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08042186 */ LDR R2, [R1] \n\
/* 08042188 */ MOVS R3, 0x38 @ Set R3 to 0x38 \n\
/* 0804218a */ LDRSH R1, [R2, R3] \n\
/* 0804218c */ LDR R2, [R2, 0x24] \n\
/* 0804218e */ LSLS R2, R2, 0x8 \n\
/* 08042190 */ ASRS R2, R2, 0x10 \n\
/* 08042192 */ BL sprite_set_x \n\
/* 08042196 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08042198 */ LDR R1, [R0] \n\
/* 0804219a */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0804219c */ LDRB R0, [R1] \n\
/* 0804219e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080421a0 */ STRB R0, [R1] \n\
/* 080421a2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080421a4 */ LDR R1, [R2] \n\
/* 080421a6 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080421a8 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080421aa */ LDRB R0, [R0] \n\
/* 080421ac */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080421ae */ BNE branch_080421ea \n\
/* 080421b0 */ LDRB R0, [R1, 0x1F] \n\
/* 080421b2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080421b4 */ BNE branch_080421ea \n\
/* 080421b6 */ LDR R0, [R5] \n\
/* 080421b8 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080421ba */ LDRSH R1, [R1, R2] \n\
/* 080421bc */ BL sprite_get_anim_cel \n\
/* 080421c0 */ LSLS R0, R0, 0x18 \n\
/* 080421c2 */ ASRS R0, R0, 0x18 \n\
/* 080421c4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080421c6 */ BNE branch_080421ea \n\
/* 080421c8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080421ca */ LDR R0, [R3] \n\
/* 080421cc */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 080421ce */ LDRB R4, [R0] \n\
/* 080421d0 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080421d2 */ BL ticks_to_frames \n\
/* 080421d6 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080421d8 */ BLT branch_080421ea \n\
/* 080421da */ LDR R0, [R5] \n\
/* 080421dc */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080421de */ LDR R1, [R2] \n\
/* 080421e0 */ MOVS R3, 0x1C @ Set R3 to 0x1C \n\
/* 080421e2 */ LDRSH R1, [R1, R3] \n\
/* 080421e4 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 080421e6 */ BL sprite_set_anim_cel \n\
 \n\
branch_080421ea: \n\
/* 080421ea */ LDR R5, =gCurrentEngineData \n\
/* 080421ec */ LDR R1, [R5] \n\
/* 080421ee */ MOVS R2, 0xB3 @ Set R2 to 0xB3 \n\
/* 080421f0 */ LSLS R2, R2, 0x2 \n\
/* 080421f2 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080421f4 */ LDRB R0, [R0] \n\
/* 080421f6 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 080421f8 */ BNE branch_08042232 \n\
/* 080421fa */ LDRB R0, [R1, 0x1F] \n\
/* 080421fc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080421fe */ BNE branch_08042232 \n\
/* 08042200 */ LDR R6, =gSpriteHandler \n\
/* 08042202 */ LDR R0, [R6] \n\
/* 08042204 */ MOVS R3, 0x1C @ Set R3 to 0x1C \n\
/* 08042206 */ LDRSH R1, [R1, R3] \n\
/* 08042208 */ BL sprite_get_anim_cel \n\
/* 0804220c */ LSLS R0, R0, 0x18 \n\
/* 0804220e */ ASRS R0, R0, 0x18 \n\
/* 08042210 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08042212 */ BNE branch_08042232 \n\
/* 08042214 */ LDR R0, [R5] \n\
/* 08042216 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 08042218 */ LDRB R4, [R0] \n\
/* 0804221a */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0804221c */ BL ticks_to_frames \n\
/* 08042220 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08042222 */ BLT branch_08042232 \n\
/* 08042224 */ LDR R0, [R6] \n\
/* 08042226 */ LDR R1, [R5] \n\
/* 08042228 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 0804222a */ LDRSH R1, [R1, R2] \n\
/* 0804222c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0804222e */ BL sprite_set_anim_cel \n\
 \n\
branch_08042232: \n\
/* 08042232 */ LDR R5, =gCurrentEngineData \n\
/* 08042234 */ LDR R1, [R5] \n\
/* 08042236 */ LDR R3, =0x2e9 \n\
/* 08042238 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0804223a */ LDRB R0, [R0] \n\
/* 0804223c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804223e */ BEQ branch_08042308 \n\
/* 08042240 */ LDRB R0, [R1, 0x6] \n\
/* 08042242 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042244 */ BNE branch_08042278 \n\
/* 08042246 */ MOVS R0, 0xBB @ Set R0 to 0xBB \n\
/* 08042248 */ LSLS R0, R0, 0x2 \n\
/* 0804224a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804224c */ LDRH R0, [R1] \n\
/* 0804224e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08042250 */ STRH R0, [R1] \n\
/* 08042252 */ LSLS R0, R0, 0x10 \n\
/* 08042254 */ LSRS R0, R0, 0x10 \n\
/* 08042256 */ CMP R0, 0x3F @ Compare R0 and 0x3F \n\
/* 08042258 */ BHI branch_08042308 \n\
/* 0804225a */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0804225c */ STRH R0, [R1] \n\
/* 0804225e */ B branch_08042308 \n\
\n\
.ltorg \n\
 \n\
branch_08042278: \n\
/* 08042278 */ LDRB R0, [R1, 0x8] \n\
/* 0804227a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804227c */ STRB R0, [R1, 0x8] \n\
/* 0804227e */ LDR R1, [R5] \n\
/* 08042280 */ MOVS R2, 0xB3 @ Set R2 to 0xB3 \n\
/* 08042282 */ LSLS R2, R2, 0x2 \n\
/* 08042284 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08042286 */ LDRB R0, [R0] \n\
/* 08042288 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804228a */ BNE branch_080422c2 \n\
/* 0804228c */ LDRB R0, [R1, 0x7] \n\
/* 0804228e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042290 */ BNE branch_080422c2 \n\
/* 08042292 */ LDR R6, =gSpriteHandler \n\
/* 08042294 */ LDR R0, [R6] \n\
/* 08042296 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08042298 */ LDRSH R1, [R1, R3] \n\
/* 0804229a */ BL sprite_get_anim_cel \n\
/* 0804229e */ LSLS R0, R0, 0x18 \n\
/* 080422a0 */ ASRS R0, R0, 0x18 \n\
/* 080422a2 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080422a4 */ BNE branch_080422c2 \n\
/* 080422a6 */ LDR R0, [R5] \n\
/* 080422a8 */ LDRB R4, [R0, 0x8] \n\
/* 080422aa */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080422ac */ BL ticks_to_frames \n\
/* 080422b0 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080422b2 */ BLT branch_080422c2 \n\
/* 080422b4 */ LDR R0, [R6] \n\
/* 080422b6 */ LDR R1, [R5] \n\
/* 080422b8 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080422ba */ LDRSH R1, [R1, R2] \n\
/* 080422bc */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 080422be */ BL sprite_set_anim_cel \n\
 \n\
branch_080422c2: \n\
/* 080422c2 */ LDR R5, =gCurrentEngineData \n\
/* 080422c4 */ LDR R1, [R5] \n\
/* 080422c6 */ MOVS R3, 0xB3 @ Set R3 to 0xB3 \n\
/* 080422c8 */ LSLS R3, R3, 0x2 \n\
/* 080422ca */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080422cc */ LDRB R0, [R0] \n\
/* 080422ce */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 080422d0 */ BNE branch_08042308 \n\
/* 080422d2 */ LDRB R0, [R1, 0x7] \n\
/* 080422d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080422d6 */ BNE branch_08042308 \n\
/* 080422d8 */ LDR R6, =gSpriteHandler \n\
/* 080422da */ LDR R0, [R6] \n\
/* 080422dc */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080422de */ LDRSH R1, [R1, R2] \n\
/* 080422e0 */ BL sprite_get_anim_cel \n\
/* 080422e4 */ LSLS R0, R0, 0x18 \n\
/* 080422e6 */ ASRS R0, R0, 0x18 \n\
/* 080422e8 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 080422ea */ BNE branch_08042308 \n\
/* 080422ec */ LDR R0, [R5] \n\
/* 080422ee */ LDRB R4, [R0, 0x8] \n\
/* 080422f0 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080422f2 */ BL ticks_to_frames \n\
/* 080422f6 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080422f8 */ BLT branch_08042308 \n\
/* 080422fa */ LDR R0, [R6] \n\
/* 080422fc */ LDR R1, [R5] \n\
/* 080422fe */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08042300 */ LDRSH R1, [R1, R3] \n\
/* 08042302 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08042304 */ BL sprite_set_anim_cel \n\
 \n\
branch_08042308: \n\
/* 08042308 */ POP {R3, R4} \n\
/* 0804230a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804230c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804230e */ POP {R4-R7} \n\
/* 08042310 */ POP {R0} \n\
/* 08042312 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
