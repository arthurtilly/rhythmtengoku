asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080217ec \n\
/* 080217ec */ LDR R3, [R0, 0x18] \n\
/* 080217ee */ LDR R1, [R0, 0x20] \n\
/* 080217f0 */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 080217f2 */ STR R3, [R0, 0x18] \n\
/* 080217f4 */ LDR R2, [R0, 0x1C] \n\
/* 080217f6 */ LDR R1, [R0, 0x24] \n\
/* 080217f8 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080217fa */ STR R2, [R0, 0x1C] \n\
/* 080217fc */ LDR R1, [R0, 0xC] \n\
/* 080217fe */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08021800 */ STR R1, [R0, 0xC] \n\
/* 08021802 */ LDR R1, [R0, 0x10] \n\
/* 08021804 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08021806 */ STR R1, [R0, 0x10] \n\
/* 08021808 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802180a */ ADDS R1, 0x2C @ Add 0x2C to R1 \n\
/* 0802180c */ ADDS R0, 0x2D @ Add 0x2D to R0 \n\
/* 0802180e */ LDRB R0, [R0] \n\
/* 08021810 */ LDRB R2, [R1] \n\
/* 08021812 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08021814 */ STRB R0, [R1] \n\
/* 08021816 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
