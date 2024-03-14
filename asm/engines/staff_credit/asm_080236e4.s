asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080236e4 \n\
/* 080236e4 */ PUSH {R4, R5, LR} \n\
/* 080236e6 */ LDR R1, =gCurrentEngineData \n\
/* 080236e8 */ LSLS R0, R0, 0x3 \n\
/* 080236ea */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080236ec */ LDR R1, [R1] \n\
/* 080236ee */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 080236f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080236f2 */ LDRSH R0, [R5, R1] \n\
/* 080236f4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080236f6 */ BLT branch_08023718 \n\
/* 080236f8 */ LDR R4, =gSpriteHandler \n\
/* 080236fa */ LDR R0, [R4] \n\
/* 080236fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080236fe */ LDRSH R1, [R5, R2] \n\
/* 08023700 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08023702 */ BL sprite_get_data \n\
/* 08023706 */ BL text_printer_delete_anim \n\
/* 0802370a */ LDR R0, [R4] \n\
/* 0802370c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802370e */ LDRSH R1, [R5, R2] \n\
/* 08023710 */ BL sprite_delete \n\
/* 08023714 */ LDR R0, =0x0000ffff \n\
/* 08023716 */ STRH R0, [R5] \n\
 \n\
branch_08023718: \n\
/* 08023718 */ POP {R4, R5} \n\
/* 0802371a */ POP {R0} \n\
/* 0802371c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
