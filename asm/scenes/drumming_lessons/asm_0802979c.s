asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802979c \n\
/* 0802979c */ PUSH {R4, R5, LR} \n\
/* 0802979e */ LDR R0, =D_030055d0 \n\
/* 080297a0 */ LDR R0, [R0] \n\
/* 080297a2 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 080297a4 */ MOVS R5, 0xF4 @ Set R5 to 0xF4 \n\
/* 080297a6 */ LSLS R5, R5, 0x2 \n\
/* 080297a8 */ ADD R5, R12 @ Add R12 to R5 \n\
/* 080297aa */ MOVS R1, 0xF6 @ Set R1 to 0xF6 \n\
/* 080297ac */ LSLS R1, R1, 0x2 \n\
/* 080297ae */ ADD R1, R12 @ Add R12 to R1 \n\
/* 080297b0 */ LDR R0, [R5] \n\
/* 080297b2 */ LDR R1, [R1] \n\
/* 080297b4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080297b6 */ STR R0, [R5] \n\
/* 080297b8 */ MOVS R4, 0xF5 @ Set R4 to 0xF5 \n\
/* 080297ba */ LSLS R4, R4, 0x2 \n\
/* 080297bc */ ADD R4, R12 @ Add R12 to R4 \n\
/* 080297be */ MOVS R1, 0xF7 @ Set R1 to 0xF7 \n\
/* 080297c0 */ LSLS R1, R1, 0x2 \n\
/* 080297c2 */ ADD R1, R12 @ Add R12 to R1 \n\
/* 080297c4 */ LDR R0, [R4] \n\
/* 080297c6 */ LDR R1, [R1] \n\
/* 080297c8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080297ca */ STR R0, [R4] \n\
/* 080297cc */ MOVS R3, 0xF8 @ Set R3 to 0xF8 \n\
/* 080297ce */ LSLS R3, R3, 0x2 \n\
/* 080297d0 */ ADD R3, R12 @ Add R12 to R3 \n\
/* 080297d2 */ MOVS R1, 0xFA @ Set R1 to 0xFA \n\
/* 080297d4 */ LSLS R1, R1, 0x2 \n\
/* 080297d6 */ ADD R1, R12 @ Add R12 to R1 \n\
/* 080297d8 */ LDR R0, [R3] \n\
/* 080297da */ LDR R1, [R1] \n\
/* 080297dc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080297de */ STR R0, [R3] \n\
/* 080297e0 */ MOVS R2, 0xF9 @ Set R2 to 0xF9 \n\
/* 080297e2 */ LSLS R2, R2, 0x2 \n\
/* 080297e4 */ ADD R2, R12 @ Add R12 to R2 \n\
/* 080297e6 */ MOVS R1, 0xFB @ Set R1 to 0xFB \n\
/* 080297e8 */ LSLS R1, R1, 0x2 \n\
/* 080297ea */ ADD R1, R12 @ Add R12 to R1 \n\
/* 080297ec */ LDR R0, [R2] \n\
/* 080297ee */ LDR R1, [R1] \n\
/* 080297f0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080297f2 */ STR R0, [R2] \n\
/* 080297f4 */ LDR R1, =D_03004b10 \n\
/* 080297f6 */ LDR R0, [R5] \n\
/* 080297f8 */ ASRS R0, R0, 0x8 \n\
/* 080297fa */ STRH R0, [R1, 0x14] \n\
/* 080297fc */ LDR R0, [R4] \n\
/* 080297fe */ ASRS R0, R0, 0x8 \n\
/* 08029800 */ STRH R0, [R1, 0x16] \n\
/* 08029802 */ LDR R0, [R3] \n\
/* 08029804 */ ASRS R0, R0, 0x8 \n\
/* 08029806 */ STRH R0, [R1, 0x18] \n\
/* 08029808 */ LDR R0, [R2] \n\
/* 0802980a */ ASRS R0, R0, 0x8 \n\
/* 0802980c */ STRH R0, [R1, 0x1A] \n\
/* 0802980e */ POP {R4, R5} \n\
/* 08029810 */ POP {R0} \n\
/* 08029812 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
