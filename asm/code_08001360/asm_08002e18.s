asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002e18 \n\
/* 08002e18 */ STR R1, [R0] \n\
/* 08002e1a */ STR R2, [R0, 0x4] \n\
/* 08002e1c */ STR R3, [R0, 0x8] \n\
/* 08002e1e */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08002e20 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08002e22 */ STR R1, [R0, 0x4] \n\
/* 08002e24 */ STR R1, [R0] \n\
/* 08002e26 */ STR R1, [R0, 0x8] \n\
/* 08002e28 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
