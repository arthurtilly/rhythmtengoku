asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080388d8 \n\
/* 080388d8 */ PUSH {R4-R6, LR} \n\
/* 080388da */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080388dc */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080388de */ PUSH {R5, R6} \n\
/* 080388e0 */ SUB SP, 0x14 \n\
/* 080388e2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080388e4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080388e6 */ STRB R5, [R4, 0x2] \n\
/* 080388e8 */ STR R5, [R4, 0x4] \n\
/* 080388ea */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 080388ec */ LSLS R0, R0, 0x8 \n\
/* 080388ee */ STR R0, [R4, 0x8] \n\
/* 080388f0 */ LDR R6, =gSpriteHandler \n\
/* 080388f2 */ LDR R0, [R6] \n\
/* 080388f4 */ LDR R1, =anim_bunny_hop_1beat_turtle \n\
/* 080388f6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080388f8 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080388fa */ STR R2, [SP] \n\
/* 080388fc */ LDR R2, =0x800a \n\
/* 080388fe */ STR R2, [SP, 0x4] \n\
/* 08038900 */ STR R5, [SP, 0x8] \n\
/* 08038902 */ STR R5, [SP, 0xC] \n\
/* 08038904 */ STR R5, [SP, 0x10] \n\
/* 08038906 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038908 */ MOVS R3, 0xC0 @ Set R3 to 0xC0 \n\
/* 0803890a */ BL sprite_create \n\
/* 0803890e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08038910 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08038912 */ STRH R0, [R4] \n\
/* 08038914 */ LDR R0, [R6] \n\
/* 08038916 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038918 */ LDRSH R1, [R4, R2] \n\
/* 0803891a */ LDR R2, [R4, 0x4] \n\
/* 0803891c */ LSLS R2, R2, 0x8 \n\
/* 0803891e */ ASRS R2, R2, 0x10 \n\
/* 08038920 */ LDR R3, [R4, 0x8] \n\
/* 08038922 */ LSLS R3, R3, 0x8 \n\
/* 08038924 */ ASRS R3, R3, 0x10 \n\
/* 08038926 */ BL sprite_set_x_y \n\
/* 0803892a */ LDR R0, [R6] \n\
/* 0803892c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803892e */ LDRSH R1, [R4, R2] \n\
/* 08038930 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038932 */ BL sprite_set_visible \n\
/* 08038936 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08038938 */ STRB R0, [R4, 0xE] \n\
/* 0803893a */ LDR R0, [R6] \n\
/* 0803893c */ LDR R1, =anim_bunny_hop_water_spout_start \n\
/* 0803893e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08038940 */ STR R2, [SP] \n\
/* 08038942 */ LDR R2, =0x8009 \n\
/* 08038944 */ STR R2, [SP, 0x4] \n\
/* 08038946 */ STR R5, [SP, 0x8] \n\
/* 08038948 */ STR R5, [SP, 0xC] \n\
/* 0803894a */ STR R5, [SP, 0x10] \n\
/* 0803894c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803894e */ MOVS R3, 0x42 @ Set R3 to 0x42 \n\
/* 08038950 */ BL sprite_create \n\
/* 08038954 */ STRH R0, [R4, 0x10] \n\
/* 08038956 */ LDR R0, [R6] \n\
/* 08038958 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0803895a */ LDRSH R1, [R4, R2] \n\
/* 0803895c */ LDR R2, [R4, 0x4] \n\
/* 0803895e */ LSLS R2, R2, 0x8 \n\
/* 08038960 */ ASRS R2, R2, 0x10 \n\
/* 08038962 */ LDR R3, [R4, 0x8] \n\
/* 08038964 */ LSLS R3, R3, 0x8 \n\
/* 08038966 */ ASRS R3, R3, 0x10 \n\
/* 08038968 */ BL sprite_set_x_y \n\
/* 0803896c */ LDR R0, [R6] \n\
/* 0803896e */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08038970 */ LDRSH R1, [R4, R2] \n\
/* 08038972 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038974 */ BL sprite_set_visible \n\
/* 08038978 */ ADD SP, 0x14 \n\
/* 0803897a */ POP {R3, R4} \n\
/* 0803897c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803897e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08038980 */ POP {R4-R6} \n\
/* 08038982 */ POP {R0} \n\
/* 08038984 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
