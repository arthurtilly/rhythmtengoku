asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start horse_machine_engine_start \n\
/* 08040f6c */ PUSH {R4-R7, LR} \n\
/* 08040f6e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08040f70 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08040f72 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08040f74 */ PUSH {R5-R7} \n\
/* 08040f76 */ SUB SP, 0x1C \n\
/* 08040f78 */ LDR R6, =D_030055d0 \n\
/* 08040f7a */ LDR R1, [R6] \n\
/* 08040f7c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08040f7e */ STRB R0, [R1] \n\
/* 08040f80 */ BL horse_machine_init_gfx1 \n\
/* 08040f84 */ BL scene_show_obj_layer \n\
/* 08040f88 */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 08040f8a */ STR R5, [SP] \n\
/* 08040f8c */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 08040f8e */ STR R0, [SP, 0x4] \n\
/* 08040f90 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08040f92 */ STR R0, [SP, 0x8] \n\
/* 08040f94 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08040f96 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08040f98 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040f9a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040f9c */ BL scene_set_bg_layer_display \n\
/* 08040fa0 */ STR R4, [SP] \n\
/* 08040fa2 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08040fa4 */ STR R0, [SP, 0x4] \n\
/* 08040fa6 */ STR R5, [SP, 0x8] \n\
/* 08040fa8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08040faa */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08040fac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040fae */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040fb0 */ BL scene_set_bg_layer_display \n\
/* 08040fb4 */ STR R4, [SP] \n\
/* 08040fb6 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08040fb8 */ STR R0, [SP, 0x4] \n\
/* 08040fba */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08040fbc */ STR R0, [SP, 0x8] \n\
/* 08040fbe */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08040fc0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08040fc2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040fc4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040fc6 */ BL scene_set_bg_layer_display \n\
/* 08040fca */ STR R4, [SP] \n\
/* 08040fcc */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08040fce */ STR R0, [SP, 0x4] \n\
/* 08040fd0 */ STR R4, [SP, 0x8] \n\
/* 08040fd2 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08040fd4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08040fd6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040fd8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040fda */ BL scene_set_bg_layer_display \n\
/* 08040fde */ LDR R1, [R6] \n\
/* 08040fe0 */ MOVS R2, 0xB9 @ Set R2 to 0xB9 \n\
/* 08040fe2 */ LSLS R2, R2, 0x2 \n\
/* 08040fe4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08040fe6 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08040fe8 */ LSLS R3, R3, 0x5 \n\
/* 08040fea */ STR R3, [R0] \n\
/* 08040fec */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 08040fee */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08040ff0 */ STRB R4, [R0] \n\
/* 08040ff2 */ LDR R0, =D_03004b10 \n\
/* 08040ff4 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08040ff6 */ ADDS R2, 0x4C @ Add 0x4C to R2 \n\
/* 08040ff8 */ MOVS R1, 0xA1 @ Set R1 to 0xA1 \n\
/* 08040ffa */ LSLS R1, R1, 0x1 \n\
/* 08040ffc */ STRH R1, [R2] \n\
/* 08040ffe */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08041000 */ STRH R3, [R0] \n\
/* 08041002 */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 08041004 */ LSLS R0, R0, 0x2 \n\
/* 08041006 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08041008 */ BL func_0800c660 \n\
/* 0804100c */ LDR R1, [R6] \n\
/* 0804100e */ MOVS R3, 0xB7 @ Set R3 to 0xB7 \n\
/* 08041010 */ LSLS R3, R3, 0x2 \n\
/* 08041012 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08041014 */ STR R0, [R1] \n\
/* 08041016 */ LDR R1, =D_0805a9fc \n\
/* 08041018 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804101a */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0804101c */ BL func_08004b98 \n\
/* 08041020 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08041022 */ LDR R5, =D_03005380 \n\
/* 08041024 */ LDR R0, [R5] \n\
/* 08041026 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08041028 */ STR R2, [SP] \n\
/* 0804102a */ STR R4, [SP, 0x4] \n\
/* 0804102c */ STR R4, [SP, 0x8] \n\
/* 0804102e */ STR R4, [SP, 0xC] \n\
/* 08041030 */ STR R4, [SP, 0x10] \n\
/* 08041032 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08041034 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08041036 */ BL func_0804d160 \n\
/* 0804103a */ LDR R1, [R6] \n\
/* 0804103c */ MOVS R2, 0xB8 @ Set R2 to 0xB8 \n\
/* 0804103e */ LSLS R2, R2, 0x2 \n\
/* 08041040 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08041042 */ STRH R0, [R1] \n\
/* 08041044 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08041046 */ MOV R10, R5 @ Set R10 to R5 \n\
 \n\
branch_08041048: \n\
/* 08041048 */ LDR R3, =D_030055d0 \n\
/* 0804104a */ LDR R1, [R3] \n\
/* 0804104c */ LSLS R3, R7, 0x1 \n\
/* 0804104e */ ADDS R0, R3, R7 @ Set R0 to R3 + R7 \n\
/* 08041050 */ LSLS R4, R0, 0x3 \n\
/* 08041052 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08041054 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08041056 */ STRB R2, [R1, 0x6] \n\
/* 08041058 */ LDR R1, =D_030055d0 \n\
/* 0804105a */ LDR R0, [R1] \n\
/* 0804105c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804105e */ STRB R2, [R0, 0x7] \n\
/* 08041060 */ LDR R0, [R1] \n\
/* 08041062 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08041064 */ STRB R2, [R0, 0x8] \n\
/* 08041066 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08041068 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0804106a */ BNE branch_0804108c \n\
/* 0804106c */ LDR R0, [R1] \n\
/* 0804106e */ MOVS R1, 0xB0 @ Set R1 to 0xB0 \n\
/* 08041070 */ LSLS R1, R1, 0x7 \n\
/* 08041072 */ STR R1, [R0, 0xC] \n\
/* 08041074 */ MOVS R1, 0xC8 @ Set R1 to 0xC8 \n\
/* 08041076 */ LSLS R1, R1, 0x7 \n\
/* 08041078 */ STR R1, [R0, 0x10] \n\
/* 0804107a */ B branch_080410a6 \n\
\n\
.ltorg \n\
 \n\
branch_0804108c: \n\
/* 0804108c */ LDR R3, =D_030055d0 \n\
/* 0804108e */ LDR R2, [R3] \n\
/* 08041090 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08041092 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08041094 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08041096 */ MOVS R1, 0xB8 @ Set R1 to 0xB8 \n\
/* 08041098 */ LSLS R1, R1, 0x8 \n\
/* 0804109a */ STR R1, [R0] \n\
/* 0804109c */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 0804109e */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080410a0 */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 080410a2 */ LSLS R0, R0, 0x7 \n\
/* 080410a4 */ STR R0, [R2] \n\
 \n\
branch_080410a6: \n\
/* 080410a6 */ LDR R6, =D_030055d0 \n\
/* 080410a8 */ LDR R2, [R6] \n\
/* 080410aa */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080410ac */ ADDS R0, R1, R7 @ Set R0 to R1 + R7 \n\
/* 080410ae */ LSLS R4, R0, 0x3 \n\
/* 080410b0 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 080410b2 */ ADDS R1, 0x14 @ Add 0x14 to R1 \n\
/* 080410b4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080410b6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080410b8 */ ADDS R0, 0x18 @ Add 0x18 to R0 \n\
/* 080410ba */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080410bc */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080410be */ STR R5, [R0] \n\
/* 080410c0 */ STR R5, [R1] \n\
/* 080410c2 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 080410c4 */ BNE branch_080410fc \n\
/* 080410c6 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080410c8 */ LDR R0, [R3] \n\
/* 080410ca */ LDR R3, [R2, 0xC] \n\
/* 080410cc */ LSLS R3, R3, 0x8 \n\
/* 080410ce */ ASRS R3, R3, 0x10 \n\
/* 080410d0 */ LDR R1, [R2, 0x10] \n\
/* 080410d2 */ LSLS R1, R1, 0x8 \n\
/* 080410d4 */ ASRS R1, R1, 0x10 \n\
/* 080410d6 */ STR R1, [SP] \n\
/* 080410d8 */ LDR R1, =0x8004 \n\
/* 080410da */ STR R1, [SP, 0x4] \n\
/* 080410dc */ STR R7, [SP, 0x8] \n\
/* 080410de */ STR R7, [SP, 0xC] \n\
/* 080410e0 */ STR R7, [SP, 0x10] \n\
/* 080410e2 */ LDR R1, =anim_horse_still \n\
/* 080410e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080410e6 */ BL func_0804d160 \n\
/* 080410ea */ LDR R1, [R6] \n\
/* 080410ec */ STRH R0, [R1, 0x4] \n\
/* 080410ee */ B branch_08041142 \n\
\n\
.ltorg \n\
 \n\
branch_080410fc: \n\
/* 080410fc */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080410fe */ LDR R0, [R1] \n\
/* 08041100 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08041102 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 08041104 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08041106 */ LDR R3, [R1] \n\
/* 08041108 */ LSLS R3, R3, 0x8 \n\
/* 0804110a */ ASRS R3, R3, 0x10 \n\
/* 0804110c */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0804110e */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 08041110 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08041112 */ LDR R1, [R1] \n\
/* 08041114 */ LSLS R1, R1, 0x8 \n\
/* 08041116 */ ASRS R1, R1, 0x10 \n\
/* 08041118 */ STR R1, [SP] \n\
/* 0804111a */ LDR R1, =0x8007 \n\
/* 0804111c */ STR R1, [SP, 0x4] \n\
/* 0804111e */ STR R5, [SP, 0x8] \n\
/* 08041120 */ STR R5, [SP, 0xC] \n\
/* 08041122 */ STR R5, [SP, 0x10] \n\
/* 08041124 */ LDR R1, =anim_horse_still \n\
/* 08041126 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08041128 */ BL func_0804d160 \n\
/* 0804112c */ LDR R1, [R6] \n\
/* 0804112e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08041130 */ STRH R0, [R1, 0x4] \n\
/* 08041132 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08041134 */ LDR R0, [R2] \n\
/* 08041136 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08041138 */ LDRSH R1, [R1, R3] \n\
/* 0804113a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804113c */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0804113e */ BL func_0804d8c4 \n\
 \n\
branch_08041142: \n\
/* 08041142 */ LDR R0, =D_030055d0 \n\
/* 08041144 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08041146 */ LDR R0, [R0] \n\
/* 08041148 */ LSLS R6, R7, 0x2 \n\
/* 0804114a */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0804114c */ ADDS R0, 0x36 @ Add 0x36 to R0 \n\
/* 0804114e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08041150 */ STRB R5, [R0] \n\
/* 08041152 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08041154 */ LDR R0, [R1] \n\
/* 08041156 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08041158 */ ADDS R0, 0x37 @ Add 0x37 to R0 \n\
/* 0804115a */ STRB R5, [R0] \n\
/* 0804115c */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0804115e */ BNE branch_080411a4 \n\
/* 08041160 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08041162 */ LDR R0, [R2] \n\
/* 08041164 */ LDR R1, [R1] \n\
/* 08041166 */ LDR R3, [R1, 0xC] \n\
/* 08041168 */ LSLS R3, R3, 0x8 \n\
/* 0804116a */ ASRS R3, R3, 0x10 \n\
/* 0804116c */ LDR R1, [R1, 0x10] \n\
/* 0804116e */ LSLS R1, R1, 0x8 \n\
/* 08041170 */ ASRS R1, R1, 0x10 \n\
/* 08041172 */ STR R1, [SP] \n\
/* 08041174 */ LDR R1, =0x8003 \n\
/* 08041176 */ STR R1, [SP, 0x4] \n\
/* 08041178 */ STR R7, [SP, 0x8] \n\
/* 0804117a */ STR R7, [SP, 0xC] \n\
/* 0804117c */ STR R7, [SP, 0x10] \n\
/* 0804117e */ LDR R1, =anim_horse_walk_jockey \n\
/* 08041180 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08041182 */ BL func_0804d160 \n\
/* 08041186 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08041188 */ LDR R1, [R3] \n\
/* 0804118a */ STRH R0, [R1, 0x34] \n\
/* 0804118c */ B branch_080411f4 \n\
\n\
.ltorg \n\
 \n\
branch_080411a4: \n\
/* 080411a4 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080411a6 */ LDR R0, [R1] \n\
/* 080411a8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080411aa */ LDR R2, [R3] \n\
/* 080411ac */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080411ae */ ADDS R4, R1, R7 @ Set R4 to R1 + R7 \n\
/* 080411b0 */ LSLS R4, R4, 0x3 \n\
/* 080411b2 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 080411b4 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 080411b6 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080411b8 */ LDR R3, [R1] \n\
/* 080411ba */ LSLS R3, R3, 0x8 \n\
/* 080411bc */ ASRS R3, R3, 0x10 \n\
/* 080411be */ ADDS R2, 0x10 @ Add 0x10 to R2 \n\
/* 080411c0 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080411c2 */ LDR R1, [R2] \n\
/* 080411c4 */ LSLS R1, R1, 0x8 \n\
/* 080411c6 */ ASRS R1, R1, 0x10 \n\
/* 080411c8 */ STR R1, [SP] \n\
/* 080411ca */ LDR R1, =0x8006 \n\
/* 080411cc */ STR R1, [SP, 0x4] \n\
/* 080411ce */ STR R5, [SP, 0x8] \n\
/* 080411d0 */ STR R5, [SP, 0xC] \n\
/* 080411d2 */ STR R5, [SP, 0x10] \n\
/* 080411d4 */ LDR R1, =anim_horse_walk_jockey \n\
/* 080411d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080411d8 */ BL func_0804d160 \n\
/* 080411dc */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080411de */ LDR R1, [R2] \n\
/* 080411e0 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 080411e2 */ STRH R0, [R1, 0x34] \n\
/* 080411e4 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080411e6 */ LDR R0, [R3] \n\
/* 080411e8 */ MOVS R2, 0x34 @ Set R2 to 0x34 \n\
/* 080411ea */ LDRSH R1, [R1, R2] \n\
/* 080411ec */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080411ee */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 080411f0 */ BL func_0804d8c4 \n\
 \n\
branch_080411f4: \n\
/* 080411f4 */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 080411f6 */ LSLS R0, R0, 0x18 \n\
/* 080411f8 */ LSRS R7, R0, 0x18 \n\
/* 080411fa */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 080411fc */ BHI branch_08041200 \n\
/* 080411fe */ B branch_08041048 \n\
 \n\
branch_08041200: \n\
/* 08041200 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08041202 */ LDR R3, =D_03005380 \n\
/* 08041204 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08041206 */ MOVS R6, 0x40 @ Set R6 to 0x40 \n\
/* 08041208 */ NEGS R6, R6 @ Set R6 to -R6 \n\
/* 0804120a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804120c */ LDR R5, =D_030055d0 \n\
 \n\
branch_0804120e: \n\
/* 0804120e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08041210 */ LDR R0, [R1] \n\
/* 08041212 */ STR R6, [SP] \n\
/* 08041214 */ LDR R1, =0x8002 \n\
/* 08041216 */ STR R1, [SP, 0x4] \n\
/* 08041218 */ STR R4, [SP, 0x8] \n\
/* 0804121a */ STR R4, [SP, 0xC] \n\
/* 0804121c */ STR R4, [SP, 0x10] \n\
/* 0804121e */ LDR R1, =anim_horse_text_pak \n\
/* 08041220 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08041222 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08041224 */ BL func_0804d160 \n\
/* 08041228 */ LDR R1, [R5] \n\
/* 0804122a */ LSLS R2, R7, 0x3 \n\
/* 0804122c */ SUBS R2, R2, R7 @ Set R2 to R2 - R7 \n\
/* 0804122e */ LSLS R2, R2, 0x2 \n\
/* 08041230 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08041232 */ STRH R0, [R1, 0x3C] \n\
/* 08041234 */ ADDS R1, 0x3E @ Add 0x3E to R1 \n\
/* 08041236 */ STRB R4, [R1] \n\
/* 08041238 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0804123a */ LDR R0, [R3] \n\
/* 0804123c */ LDR R1, [R5] \n\
/* 0804123e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08041240 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08041242 */ LDRSH R1, [R1, R2] \n\
/* 08041244 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08041246 */ BL func_0804d770 \n\
/* 0804124a */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 0804124c */ LSLS R0, R0, 0x18 \n\
/* 0804124e */ LSRS R7, R0, 0x18 \n\
/* 08041250 */ CMP R7, 0x13 @ Compare R7 and 0x13 \n\
/* 08041252 */ BLS branch_0804120e \n\
/* 08041254 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08041256 */ LDR R3, =D_030055d0 \n\
/* 08041258 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804125a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0804125c */ LDR R0, =D_03005380 \n\
/* 0804125e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08041260 */ MOVS R1, 0x9B @ Set R1 to 0x9B \n\
/* 08041262 */ LSLS R1, R1, 0x2 \n\
/* 08041264 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_08041266: \n\
/* 08041266 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08041268 */ LDR R5, [R2] \n\
/* 0804126a */ LSLS R4, R7, 0x1 \n\
/* 0804126c */ ADDS R4, R4, R7 @ Set R4 to R4 + R7 \n\
/* 0804126e */ LSLS R4, R4, 0x3 \n\
/* 08041270 */ MOVS R0, 0x9D @ Set R0 to 0x9D \n\
/* 08041272 */ LSLS R0, R0, 0x2 \n\
/* 08041274 */ ADDS R3, R5, R0 @ Set R3 to R5 + R0 \n\
/* 08041276 */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 08041278 */ LDR R0, =0xffffc000 \n\
/* 0804127a */ STR R0, [R3] \n\
/* 0804127c */ MOVS R1, 0x9E @ Set R1 to 0x9E \n\
/* 0804127e */ LSLS R1, R1, 0x2 \n\
/* 08041280 */ ADDS R2, R5, R1 @ Set R2 to R5 + R1 \n\
/* 08041282 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08041284 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 08041286 */ LSLS R0, R0, 0x8 \n\
/* 08041288 */ STR R0, [R2] \n\
/* 0804128a */ MOVS R0, 0x9F @ Set R0 to 0x9F \n\
/* 0804128c */ LSLS R0, R0, 0x2 \n\
/* 0804128e */ ADDS R1, R5, R0 @ Set R1 to R5 + R0 \n\
/* 08041290 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08041292 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 08041294 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08041296 */ LSLS R1, R1, 0x2 \n\
/* 08041298 */ ADDS R0, R5, R1 @ Set R0 to R5 + R1 \n\
/* 0804129a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804129c */ STR R6, [R0] \n\
/* 0804129e */ MOV R0, R12 @ Set R0 to R12 \n\
/* 080412a0 */ STR R6, [R0] \n\
/* 080412a2 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080412a4 */ LDR R0, [R1] \n\
/* 080412a6 */ LDR R3, [R3] \n\
/* 080412a8 */ LSLS R3, R3, 0x8 \n\
/* 080412aa */ ASRS R3, R3, 0x10 \n\
/* 080412ac */ LDR R1, [R2] \n\
/* 080412ae */ LSLS R1, R1, 0x8 \n\
/* 080412b0 */ ASRS R1, R1, 0x10 \n\
/* 080412b2 */ STR R1, [SP] \n\
/* 080412b4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080412b6 */ STR R2, [SP, 0x4] \n\
/* 080412b8 */ STR R6, [SP, 0x8] \n\
/* 080412ba */ STR R6, [SP, 0xC] \n\
/* 080412bc */ STR R6, [SP, 0x10] \n\
/* 080412be */ LDR R1, =anim_horse_text_pak \n\
/* 080412c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080412c2 */ BL func_0804d160 \n\
/* 080412c6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080412c8 */ LDR R1, [R3] \n\
/* 080412ca */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080412cc */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080412ce */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 080412d0 */ STRH R0, [R2] \n\
/* 080412d2 */ LDR R0, =0x26e \n\
/* 080412d4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080412d6 */ STRB R6, [R1] \n\
/* 080412d8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080412da */ LDR R0, [R1] \n\
/* 080412dc */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080412de */ LDR R2, =0x26f \n\
/* 080412e0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080412e2 */ STRB R6, [R0] \n\
/* 080412e4 */ LDR R0, [R1] \n\
/* 080412e6 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080412e8 */ MOVS R3, 0x9C @ Set R3 to 0x9C \n\
/* 080412ea */ LSLS R3, R3, 0x2 \n\
/* 080412ec */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080412ee */ STRB R6, [R0] \n\
/* 080412f0 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080412f2 */ LDR R0, [R1] \n\
/* 080412f4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080412f6 */ LDR R1, [R2] \n\
/* 080412f8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080412fa */ ADD R1, R9 @ Add R9 to R1 \n\
/* 080412fc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080412fe */ LDRSH R1, [R1, R3] \n\
/* 08041300 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08041302 */ BL func_0804d770 \n\
/* 08041306 */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 08041308 */ LSLS R0, R0, 0x18 \n\
/* 0804130a */ LSRS R7, R0, 0x18 \n\
/* 0804130c */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 0804130e */ BLS branch_08041266 \n\
/* 08041310 */ LDR R0, =anim_horse_tachometer_hand \n\
/* 08041312 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08041314 */ LSLS R1, R1, 0x4 \n\
/* 08041316 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08041318 */ STR R1, [SP] \n\
/* 0804131a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804131c */ LSLS R2, R2, 0x1 \n\
/* 0804131e */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08041320 */ STR R2, [SP, 0x4] \n\
/* 08041322 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08041324 */ STR R4, [SP, 0x8] \n\
/* 08041326 */ STR R4, [SP, 0xC] \n\
/* 08041328 */ STR R4, [SP, 0x10] \n\
/* 0804132a */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 0804132c */ LSLS R5, R5, 0x8 \n\
/* 0804132e */ STR R5, [SP, 0x14] \n\
/* 08041330 */ STR R4, [SP, 0x18] \n\
/* 08041332 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08041334 */ MOVS R2, 0x57 @ Set R2 to 0x57 \n\
/* 08041336 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 08041338 */ BL create_affine_sprite \n\
/* 0804133c */ LDR R6, =D_030055d0 \n\
/* 0804133e */ LDR R1, [R6] \n\
/* 08041340 */ MOVS R3, 0xBD @ Set R3 to 0xBD \n\
/* 08041342 */ LSLS R3, R3, 0x2 \n\
/* 08041344 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08041346 */ STR R0, [R1] \n\
/* 08041348 */ LDR R0, =anim_horse_speedometer_hand \n\
/* 0804134a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804134c */ STR R1, [SP] \n\
/* 0804134e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08041350 */ STR R2, [SP, 0x4] \n\
/* 08041352 */ STR R4, [SP, 0x8] \n\
/* 08041354 */ STR R4, [SP, 0xC] \n\
/* 08041356 */ STR R4, [SP, 0x10] \n\
/* 08041358 */ STR R5, [SP, 0x14] \n\
/* 0804135a */ STR R4, [SP, 0x18] \n\
/* 0804135c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804135e */ MOVS R2, 0x8F @ Set R2 to 0x8F \n\
/* 08041360 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 08041362 */ BL create_affine_sprite \n\
/* 08041366 */ LDR R1, [R6] \n\
/* 08041368 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 0804136a */ LSLS R3, R3, 0x2 \n\
/* 0804136c */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0804136e */ STR R0, [R1] \n\
/* 08041370 */ LDR R0, =D_03005380 \n\
/* 08041372 */ LDR R0, [R0] \n\
/* 08041374 */ LDR R1, =anim_horse_high_speed_light \n\
/* 08041376 */ MOVS R2, 0x82 @ Set R2 to 0x82 \n\
/* 08041378 */ STR R2, [SP] \n\
/* 0804137a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804137c */ STR R2, [SP, 0x4] \n\
/* 0804137e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08041380 */ STR R3, [SP, 0x8] \n\
/* 08041382 */ STR R4, [SP, 0xC] \n\
/* 08041384 */ STR R5, [SP, 0x10] \n\
/* 08041386 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08041388 */ MOVS R3, 0x5E @ Set R3 to 0x5E \n\
/* 0804138a */ BL func_0804d160 \n\
/* 0804138e */ LDR R1, [R6] \n\
/* 08041390 */ MOVS R2, 0xBF @ Set R2 to 0xBF \n\
/* 08041392 */ LSLS R2, R2, 0x2 \n\
/* 08041394 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08041396 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08041398 */ STRH R0, [R1] \n\
/* 0804139a */ BL func_08040c2c \n\
/* 0804139e */ LDR R0, [R6] \n\
/* 080413a0 */ MOVS R3, 0xB3 @ Set R3 to 0xB3 \n\
/* 080413a2 */ LSLS R3, R3, 0x2 \n\
/* 080413a4 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080413a6 */ STRB R5, [R0] \n\
/* 080413a8 */ LDR R1, [R6] \n\
/* 080413aa */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 080413ac */ LSLS R2, R2, 0x2 \n\
/* 080413ae */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080413b0 */ STR R4, [R0] \n\
/* 080413b2 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 080413b4 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080413b6 */ STR R4, [R0] \n\
/* 080413b8 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 080413ba */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080413bc */ STR R4, [R0] \n\
/* 080413be */ ADDS R3, 0x15 @ Add 0x15 to R3 \n\
/* 080413c0 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 080413c2 */ STRB R5, [R0] \n\
/* 080413c4 */ LDR R0, [R6] \n\
/* 080413c6 */ LDR R1, =0x2ea \n\
/* 080413c8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080413ca */ STRB R5, [R0] \n\
/* 080413cc */ LDR R0, [R6] \n\
/* 080413ce */ ADDS R2, 0x13 @ Add 0x13 to R2 \n\
/* 080413d0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080413d2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080413d4 */ STRB R3, [R0] \n\
/* 080413d6 */ LDR R1, [R6] \n\
/* 080413d8 */ MOVS R0, 0xBB @ Set R0 to 0xBB \n\
/* 080413da */ LSLS R0, R0, 0x2 \n\
/* 080413dc */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 080413de */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 080413e0 */ STRH R0, [R2] \n\
/* 080413e2 */ LDR R2, =0x2ee \n\
/* 080413e4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080413e6 */ STRH R4, [R0] \n\
/* 080413e8 */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 080413ea */ LSLS R3, R3, 0x2 \n\
/* 080413ec */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080413ee */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080413f0 */ STRH R0, [R1] \n\
/* 080413f2 */ MOVS R0, 0xF3 @ Set R0 to 0xF3 \n\
/* 080413f4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080413f6 */ BL gameplay_set_input_buttons \n\
/* 080413fa */ ADD SP, 0x1C \n\
/* 080413fc */ POP {R3-R5} \n\
/* 080413fe */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08041400 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08041402 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08041404 */ POP {R4-R7} \n\
/* 08041406 */ POP {R0} \n\
/* 08041408 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
