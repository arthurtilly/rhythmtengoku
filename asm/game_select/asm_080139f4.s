asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080139f4 \n\
/* 080139f4 */ PUSH {R4-R6, LR} \n\
/* 080139f6 */ LDR R5, =D_030046a4 \n\
/* 080139f8 */ LDR R3, [R5] \n\
/* 080139fa */ ADDS R3, 0x5C @ Add 0x5C to R3 \n\
/* 080139fc */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080139fe */ STRB R4, [R3] \n\
/* 08013a00 */ LDR R5, [R5] \n\
/* 08013a02 */ MOV R12, R5 @ Set R12 to R5 \n\
/* 08013a04 */ MOV R6, R12 @ Set R6 to R12 \n\
/* 08013a06 */ ADDS R6, 0x62 @ Add 0x62 to R6 \n\
/* 08013a08 */ LDRH R3, [R6] \n\
/* 08013a0a */ MOV R4, R12 @ Set R4 to R12 \n\
/* 08013a0c */ ADDS R4, 0x5E @ Add 0x5E to R4 \n\
/* 08013a0e */ STRH R3, [R4] \n\
/* 08013a10 */ ADDS R5, 0x64 @ Add 0x64 to R5 \n\
/* 08013a12 */ LDRH R4, [R5] \n\
/* 08013a14 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 08013a16 */ ADDS R3, 0x60 @ Add 0x60 to R3 \n\
/* 08013a18 */ STRH R4, [R3] \n\
/* 08013a1a */ STRH R0, [R6] \n\
/* 08013a1c */ STRH R1, [R5] \n\
/* 08013a1e */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08013a20 */ ADDS R0, 0x68 @ Add 0x68 to R0 \n\
/* 08013a22 */ STRH R2, [R0] \n\
/* 08013a24 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 08013a26 */ ADDS R1, 0x66 @ Add 0x66 to R1 \n\
/* 08013a28 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08013a2a */ LSLS R0, R0, 0x1 \n\
/* 08013a2c */ STRH R0, [R1] \n\
/* 08013a2e */ POP {R4-R6} \n\
/* 08013a30 */ POP {R0} \n\
/* 08013a32 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
