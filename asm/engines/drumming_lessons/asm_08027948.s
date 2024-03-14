asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027948 \n\
/* 08027948 */ PUSH {LR} \n\
/* 0802794a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802794c */ LDR R0, =gSpriteHandler \n\
/* 0802794e */ LDR R0, [R0] \n\
/* 08027950 */ LSLS R1, R1, 0x10 \n\
/* 08027952 */ ASRS R1, R1, 0x10 \n\
/* 08027954 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08027956 */ LSLS R2, R2, 0x2 \n\
/* 08027958 */ BL sprite_set_base_tile \n\
/* 0802795c */ POP {R0} \n\
/* 0802795e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
