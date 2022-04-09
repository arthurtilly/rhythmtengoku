asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080192a4 \n\
/* 080192a4 */ PUSH {R4-R6, LR} \n\
/* 080192a6 */ LDR R3, =D_089d7980 \n\
/* 080192a8 */ LDR R2, [R3] \n\
/* 080192aa */ LDRB R1, [R2] \n\
/* 080192ac */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080192ae */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080192b0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080192b2 */ STRB R0, [R2] \n\
/* 080192b4 */ LDR R1, [R3] \n\
/* 080192b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080192b8 */ STRH R2, [R1, 0x4] \n\
/* 080192ba */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080192bc */ STRB R0, [R1, 0x6] \n\
/* 080192be */ LDR R0, [R3] \n\
/* 080192c0 */ ADDS R0, 0x74 @ Add 0x74 to R0 \n\
/* 080192c2 */ STRH R2, [R0] \n\
/* 080192c4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080192c6 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 080192c8 */ MOVS R4, 0x8 @ Set R4 to 0x8 \n\
 \n\
branch_080192ca: \n\
/* 080192ca */ LDR R0, [R6] \n\
/* 080192cc */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080192ce */ BL func_08019268 \n\
/* 080192d2 */ ADDS R4, 0x18 @ Add 0x18 to R4 \n\
/* 080192d4 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080192d6 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 080192d8 */ BLS branch_080192ca \n\
/* 080192da */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080192dc */ BL func_08019278 \n\
/* 080192e0 */ LDR R0, =D_089d7980 \n\
/* 080192e2 */ LDR R1, [R0] \n\
/* 080192e4 */ MOVS R2, 0xFE @ Set R2 to 0xFE \n\
/* 080192e6 */ LSLS R2, R2, 0x1 \n\
/* 080192e8 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080192ea */ STR R4, [R0] \n\
/* 080192ec */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 080192ee */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080192f0 */ STR R4, [R0] \n\
/* 080192f2 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 080192f4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080192f6 */ STR R4, [R0] \n\
/* 080192f8 */ POP {R4-R6} \n\
/* 080192fa */ POP {R0} \n\
/* 080192fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
