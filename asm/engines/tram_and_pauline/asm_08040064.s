asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040064 \n\
/* 08040064 */ PUSH {R4-R6, LR} \n\
/* 08040066 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08040068 */ PUSH {R6} \n\
/* 0804006a */ SUB SP, 0xC \n\
/* 0804006c */ LSLS R0, R0, 0x18 \n\
/* 0804006e */ LSRS R0, R0, 0x18 \n\
/* 08040070 */ LDR R3, =gCurrentEngineData \n\
/* 08040072 */ LDR R1, [R3] \n\
/* 08040074 */ LSLS R2, R0, 0x2 \n\
/* 08040076 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08040078 */ LSLS R2, R2, 0x2 \n\
/* 0804007a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804007c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804007e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08040080 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08040082 */ STRB R6, [R1, 0x6] \n\
/* 08040084 */ LDR R0, =gSpriteHandler \n\
/* 08040086 */ LDR R0, [R0] \n\
/* 08040088 */ LDR R4, [R3] \n\
/* 0804008a */ ADDS R2, R4, R2 @ Set R2 to R4 + R2 \n\
/* 0804008c */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0804008e */ LDRSH R1, [R2, R3] \n\
/* 08040090 */ LDR R5, =tram_pauline_anim_table \n\
/* 08040092 */ LDRB R3, [R2, 0x15] \n\
/* 08040094 */ LDRB R4, [R4] \n\
/* 08040096 */ LSLS R2, R4, 0x1 \n\
/* 08040098 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0804009a */ LSLS R2, R2, 0x3 \n\
/* 0804009c */ ADDS R2, 0x6 @ Add 0x6 to R2 \n\
/* 0804009e */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 080400a0 */ LSLS R3, R3, 0x2 \n\
/* 080400a2 */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 080400a4 */ LDR R2, [R3] \n\
/* 080400a6 */ STR R6, [SP] \n\
/* 080400a8 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080400aa */ STR R3, [SP, 0x4] \n\
/* 080400ac */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080400ae */ STR R3, [SP, 0x8] \n\
/* 080400b0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080400b2 */ BL sprite_set_anim \n\
/* 080400b6 */ ADD SP, 0xC \n\
/* 080400b8 */ POP {R3} \n\
/* 080400ba */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080400bc */ POP {R4-R6} \n\
/* 080400be */ POP {R0} \n\
/* 080400c0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
