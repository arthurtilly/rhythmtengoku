asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033370 \n\
/* 08033370 */ PUSH {R4-R6, LR} \n\
/* 08033372 */ LDR R5, =D_030055d0 \n\
/* 08033374 */ LDR R3, [R5] \n\
/* 08033376 */ LDRB R0, [R3, 0x7] \n\
/* 08033378 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803337a */ BEQ branch_080333d6 \n\
/* 0803337c */ LDR R2, =D_03004b10 \n\
/* 0803337e */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08033380 */ LDRSB R1, [R3, R1] \n\
/* 08033382 */ MOVS R4, 0x10 @ Set R4 to 0x10 \n\
/* 08033384 */ LDRSH R0, [R2, R4] \n\
/* 08033386 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08033388 */ LSLS R0, R0, 0x10 \n\
/* 0803338a */ LSRS R4, R0, 0x10 \n\
/* 0803338c */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 0803338e */ LDRSB R1, [R3, R1] \n\
/* 08033390 */ MOVS R6, 0x12 @ Set R6 to 0x12 \n\
/* 08033392 */ LDRSH R0, [R2, R6] \n\
/* 08033394 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08033396 */ LSLS R0, R0, 0x10 \n\
/* 08033398 */ ASRS R2, R0, 0x10 \n\
/* 0803339a */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0803339c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0803339e */ CMP R2, R0 @ Check R2 - R0 \n\
/* 080333a0 */ BGE branch_080333cc \n\
/* 080333a2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080333a4 */ STRB R0, [R3, 0x7] \n\
/* 080333a6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080333a8 */ BL scene_hide_bg_layer \n\
/* 080333ac */ LDR R0, =D_03005380 \n\
/* 080333ae */ LDR R0, [R0] \n\
/* 080333b0 */ LDR R1, [R5] \n\
/* 080333b2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080333b4 */ LDRSH R1, [R1, R2] \n\
/* 080333b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080333b8 */ BL func_0804d770 \n\
/* 080333bc */ B branch_080333d6 \n\
\n\
.ltorg \n\
 \n\
branch_080333cc: \n\
/* 080333cc */ LSLS R1, R4, 0x10 \n\
/* 080333ce */ ASRS R1, R1, 0x10 \n\
/* 080333d0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080333d2 */ BL scene_set_bg_layer_pos \n\
 \n\
branch_080333d6: \n\
/* 080333d6 */ POP {R4-R6} \n\
/* 080333d8 */ POP {R0} \n\
/* 080333da */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
