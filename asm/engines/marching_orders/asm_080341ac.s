asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_engine_start \n\
/* 080341ac */ PUSH {R4-R7, LR} \n\
/* 080341ae */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080341b0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080341b2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080341b4 */ PUSH {R5-R7} \n\
/* 080341b6 */ SUB SP, 0x1C \n\
/* 080341b8 */ STR R0, [SP, 0x14] \n\
/* 080341ba */ LDR R6, =D_030055d0 \n\
/* 080341bc */ LDR R0, [R6] \n\
/* 080341be */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080341c0 */ MOV R1, SP @ Set R1 to SP \n\
/* 080341c2 */ LDRB R1, [R1, 0x14] \n\
/* 080341c4 */ STRB R1, [R0] \n\
/* 080341c6 */ BL marching_init_gfx1 \n\
/* 080341ca */ BL scene_show_obj_layer \n\
/* 080341ce */ STR R4, [SP] \n\
/* 080341d0 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080341d2 */ STR R0, [SP, 0x4] \n\
/* 080341d4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080341d6 */ STR R0, [SP, 0x8] \n\
/* 080341d8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080341da */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080341dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080341de */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080341e0 */ BL scene_set_bg_layer_display \n\
/* 080341e4 */ STR R4, [SP] \n\
/* 080341e6 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 080341e8 */ STR R0, [SP, 0x4] \n\
/* 080341ea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080341ec */ STR R0, [SP, 0x8] \n\
/* 080341ee */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080341f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080341f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080341f4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080341f6 */ BL scene_set_bg_layer_display \n\
/* 080341fa */ STR R4, [SP] \n\
/* 080341fc */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 080341fe */ STR R0, [SP, 0x4] \n\
/* 08034200 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08034202 */ STR R0, [SP, 0x8] \n\
/* 08034204 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08034206 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034208 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803420a */ BL scene_set_bg_layer_display \n\
/* 0803420e */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 08034210 */ LSLS R0, R0, 0x2 \n\
/* 08034212 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08034214 */ BL func_0800c660 \n\
/* 08034218 */ LDR R1, [R6] \n\
/* 0803421a */ STR R0, [R1, 0x4] \n\
/* 0803421c */ LDR R1, =D_0805a670 \n\
/* 0803421e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08034220 */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 08034222 */ BL bmp_font_obj_print_l \n\
/* 08034226 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08034228 */ LDR R5, =D_03005380 \n\
/* 0803422a */ LDR R0, [R5] \n\
/* 0803422c */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 0803422e */ STR R2, [SP] \n\
/* 08034230 */ STR R4, [SP, 0x4] \n\
/* 08034232 */ STR R4, [SP, 0x8] \n\
/* 08034234 */ STR R4, [SP, 0xC] \n\
/* 08034236 */ STR R4, [SP, 0x10] \n\
/* 08034238 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803423a */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803423c */ BL func_0804d160 \n\
/* 08034240 */ LDR R1, [R6] \n\
/* 08034242 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08034244 */ STRH R0, [R1] \n\
/* 08034246 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034248 */ STR R2, [SP, 0x18] \n\
/* 0803424a */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 0803424c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803424e */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08034250 */ LSLS R0, R0, 0xF \n\
/* 08034252 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08034254 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08034256 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_08034258: \n\
/* 08034258 */ LDR R2, =D_030055d0 \n\
/* 0803425a */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803425c */ LDR R4, [R2] \n\
/* 0803425e */ ADD R4, R9 @ Add R9 to R4 \n\
/* 08034260 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08034262 */ BL func_08034100 \n\
/* 08034266 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08034268 */ LDR R0, [R6] \n\
/* 0803426a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803426c */ ASRS R5, R2, 0x10 \n\
/* 0803426e */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08034270 */ STR R2, [SP] \n\
/* 08034272 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08034274 */ LSLS R2, R2, 0x7 \n\
/* 08034276 */ STR R2, [SP, 0x4] \n\
/* 08034278 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803427a */ STR R2, [SP, 0x8] \n\
/* 0803427c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803427e */ STR R2, [SP, 0xC] \n\
/* 08034280 */ STR R7, [SP, 0x10] \n\
/* 08034282 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034284 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08034286 */ BL func_0804d160 \n\
/* 0803428a */ STRH R0, [R4] \n\
/* 0803428c */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0803428e */ BL func_08034100 \n\
/* 08034292 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08034294 */ LDR R0, [R6] \n\
/* 08034296 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08034298 */ STR R2, [SP] \n\
/* 0803429a */ LDR R2, =0x47f6 \n\
/* 0803429c */ STR R2, [SP, 0x4] \n\
/* 0803429e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080342a0 */ STR R2, [SP, 0x8] \n\
/* 080342a2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080342a4 */ STR R2, [SP, 0xC] \n\
/* 080342a6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080342a8 */ LSLS R2, R2, 0x8 \n\
/* 080342aa */ STR R2, [SP, 0x10] \n\
/* 080342ac */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080342ae */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 080342b0 */ BL func_0804d160 \n\
/* 080342b4 */ STRH R0, [R4, 0x2] \n\
/* 080342b6 */ LDR R0, [R6] \n\
/* 080342b8 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080342ba */ LDRSH R1, [R4, R2] \n\
/* 080342bc */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080342be */ LSLS R2, R2, 0x11 \n\
/* 080342c0 */ BL func_0804d7b4 \n\
/* 080342c4 */ LDR R0, [R6] \n\
/* 080342c6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080342c8 */ LDRSH R1, [R4, R2] \n\
/* 080342ca */ LDR R2, =(D_03004b10 + 0x18) \n\
/* 080342cc */ LDR R3, =(D_03004b10 + 0x1a) \n\
/* 080342ce */ BL func_0804db44 \n\
/* 080342d2 */ LDR R0, [R6] \n\
/* 080342d4 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080342d6 */ LDRSH R1, [R4, R2] \n\
/* 080342d8 */ LDR R2, =(D_03004b10 + 0x18) \n\
/* 080342da */ LDR R3, =(D_03004b10 + 0x1a) \n\
/* 080342dc */ BL func_0804db44 \n\
/* 080342e0 */ STRB R7, [R4, 0x4] \n\
/* 080342e2 */ STRH R7, [R4, 0x6] \n\
/* 080342e4 */ STRB R7, [R4, 0x8] \n\
/* 080342e6 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 080342e8 */ LSLS R0, R0, 0xE \n\
/* 080342ea */ ADD R10, R0 @ Add R0 to R10 \n\
/* 080342ec */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 080342ee */ ADD R9, R1 @ Add R1 to R9 \n\
/* 080342f0 */ LDR R2, [SP, 0x18] \n\
/* 080342f2 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080342f4 */ STR R2, [SP, 0x18] \n\
/* 080342f6 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 080342f8 */ BLS branch_08034258 \n\
/* 080342fa */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080342fc */ LDR R0, [R1] \n\
/* 080342fe */ ADDS R0, 0x45 @ Add 0x45 to R0 \n\
/* 08034300 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08034302 */ STRB R4, [R0] \n\
/* 08034304 */ LDR R0, [R1] \n\
/* 08034306 */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 08034308 */ STRB R4, [R0] \n\
/* 0803430a */ LDR R0, [R1] \n\
/* 0803430c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803430e */ STRH R4, [R0, 0x3A] \n\
/* 08034310 */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 08034312 */ BL func_08034100 \n\
/* 08034316 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08034318 */ LDR R5, =D_03005380 \n\
/* 0803431a */ LDR R0, [R5] \n\
/* 0803431c */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 0803431e */ STR R2, [SP] \n\
/* 08034320 */ LDR R2, =0x479c \n\
/* 08034322 */ STR R2, [SP, 0x4] \n\
/* 08034324 */ STR R4, [SP, 0x8] \n\
/* 08034326 */ STR R4, [SP, 0xC] \n\
/* 08034328 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803432a */ LSLS R2, R2, 0x8 \n\
/* 0803432c */ STR R2, [SP, 0x10] \n\
/* 0803432e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08034330 */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 08034332 */ BL func_0804d160 \n\
/* 08034336 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08034338 */ LDR R1, [R2] \n\
/* 0803433a */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 0803433c */ STRH R0, [R1] \n\
/* 0803433e */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08034340 */ BL func_08034100 \n\
/* 08034344 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08034346 */ LDR R0, [R5] \n\
/* 08034348 */ MOVS R2, 0x7C @ Set R2 to 0x7C \n\
/* 0803434a */ STR R2, [SP] \n\
/* 0803434c */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0803434e */ LSLS R2, R2, 0x7 \n\
/* 08034350 */ STR R2, [SP, 0x4] \n\
/* 08034352 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08034354 */ STR R2, [SP, 0x8] \n\
/* 08034356 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08034358 */ STR R2, [SP, 0xC] \n\
/* 0803435a */ STR R4, [SP, 0x10] \n\
/* 0803435c */ MOVS R3, 0x1C @ Set R3 to 0x1C \n\
/* 0803435e */ BL func_0804d160 \n\
/* 08034362 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08034364 */ LDR R1, [R2] \n\
/* 08034366 */ STRH R0, [R1, 0x3C] \n\
/* 08034368 */ STRH R4, [R1, 0x3E] \n\
/* 0803436a */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 0803436c */ STRB R6, [R1] \n\
/* 0803436e */ LDR R0, [SP, 0x14] \n\
/* 08034370 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08034372 */ BNE branch_0803439c \n\
/* 08034374 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08034376 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08034378 */ BL gameplay_set_input_buttons \n\
/* 0803437c */ B branch_080343a4 \n\
\n\
.ltorg \n\
 \n\
branch_0803439c: \n\
/* 0803439c */ MOVS R0, 0x33 @ Set R0 to 0x33 \n\
/* 0803439e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080343a0 */ BL gameplay_set_input_buttons \n\
 \n\
branch_080343a4: \n\
/* 080343a4 */ ADD SP, 0x1C \n\
/* 080343a6 */ POP {R3-R5} \n\
/* 080343a8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080343aa */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080343ac */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080343ae */ POP {R4-R7} \n\
/* 080343b0 */ POP {R0} \n\
/* 080343b2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
