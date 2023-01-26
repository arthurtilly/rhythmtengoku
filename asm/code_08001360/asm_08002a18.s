asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start get_soundplayer_by_sound \n\
/* 08002a18 */ PUSH {R4-R6, LR} \n\
/* 08002a1a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08002a1c */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08002a1e */ BEQ branch_08002a4c \n\
/* 08002a20 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08002a22 */ LDR R1, =D_08aa445c \n\
/* 08002a24 */ LDRB R1, [R1] \n\
/* 08002a26 */ CMP R3, R1 @ Check R3 - R1 \n\
/* 08002a28 */ BCS branch_08002a4c \n\
/* 08002a2a */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08002a2c */ LDR R4, =D_08aa4460 \n\
 \n\
branch_08002a2e: \n\
/* 08002a2e */ LDR R2, [R4] \n\
/* 08002a30 */ LDR R1, [R2, 0xC] \n\
/* 08002a32 */ CMP R1, R5 @ Check R1 - R5 \n\
/* 08002a34 */ BNE branch_08002a44 \n\
/* 08002a36 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08002a38 */ B branch_08002a4c \n\
\n\
.ltorg \n\
 \n\
branch_08002a44: \n\
/* 08002a44 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 08002a46 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08002a48 */ CMP R3, R6 @ Check R3 - R6 \n\
/* 08002a4a */ BCC branch_08002a2e \n\
 \n\
branch_08002a4c: \n\
/* 08002a4c */ POP {R4-R6} \n\
/* 08002a4e */ POP {R1} \n\
/* 08002a50 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
