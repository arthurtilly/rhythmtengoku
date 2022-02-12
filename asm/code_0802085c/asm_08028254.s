asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08028254 \n\
/* 08028254 */ PUSH {R4, R5, LR} \n\
/* 08028256 */ LDR R2, =D_030055d0 \n\
/* 08028258 */ LDR R1, [R2] \n\
/* 0802825a */ MOVS R3, 0xF2 @ Set R3 to 0xF2 \n\
/* 0802825c */ LSLS R3, R3, 0x2 \n\
/* 0802825e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08028260 */ LDR R0, [R0] \n\
/* 08028262 */ LDRB R3, [R0] \n\
/* 08028264 */ MOVS R4, 0xFC @ Set R4 to 0xFC \n\
/* 08028266 */ LSLS R4, R4, 0x2 \n\
/* 08028268 */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 0802826a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802826c */ STRB R3, [R0] \n\
/* 0802826e */ LDR R2, [R2] \n\
/* 08028270 */ MOV R12, R2 @ Set R12 to R2 \n\
/* 08028272 */ MOVS R2, 0xF4 @ Set R2 to 0xF4 \n\
/* 08028274 */ LSLS R2, R2, 0x2 \n\
/* 08028276 */ ADD R2, R12 @ Add R12 to R2 \n\
/* 08028278 */ MOVS R0, 0xF5 @ Set R0 to 0xF5 \n\
/* 0802827a */ LSLS R0, R0, 0x2 \n\
/* 0802827c */ ADD R0, R12 @ Add R12 to R0 \n\
/* 0802827e */ STR R1, [R0] \n\
/* 08028280 */ STR R1, [R2] \n\
/* 08028282 */ MOVS R2, 0xF8 @ Set R2 to 0xF8 \n\
/* 08028284 */ LSLS R2, R2, 0x2 \n\
/* 08028286 */ ADD R2, R12 @ Add R12 to R2 \n\
/* 08028288 */ MOVS R0, 0xF9 @ Set R0 to 0xF9 \n\
/* 0802828a */ LSLS R0, R0, 0x2 \n\
/* 0802828c */ ADD R0, R12 @ Add R12 to R0 \n\
/* 0802828e */ STR R1, [R0] \n\
/* 08028290 */ STR R1, [R2] \n\
/* 08028292 */ MOVS R1, 0xF6 @ Set R1 to 0xF6 \n\
/* 08028294 */ LSLS R1, R1, 0x2 \n\
/* 08028296 */ ADD R1, R12 @ Add R12 to R1 \n\
/* 08028298 */ LDR R5, =D_089e17a0 \n\
/* 0802829a */ LSLS R4, R3, 0x1 \n\
/* 0802829c */ ADDS R4, R4, R3 @ Set R4 to R4 + R3 \n\
/* 0802829e */ LSLS R4, R4, 0x3 \n\
/* 080282a0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080282a2 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 080282a4 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 080282a6 */ LDR R0, [R0] \n\
/* 080282a8 */ STR R0, [R1] \n\
/* 080282aa */ MOVS R1, 0xF7 @ Set R1 to 0xF7 \n\
/* 080282ac */ LSLS R1, R1, 0x2 \n\
/* 080282ae */ ADD R1, R12 @ Add R12 to R1 \n\
/* 080282b0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080282b2 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 080282b4 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 080282b6 */ LDR R0, [R0] \n\
/* 080282b8 */ STR R0, [R1] \n\
/* 080282ba */ MOVS R1, 0xFA @ Set R1 to 0xFA \n\
/* 080282bc */ LSLS R1, R1, 0x2 \n\
/* 080282be */ ADD R1, R12 @ Add R12 to R1 \n\
/* 080282c0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080282c2 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 080282c4 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 080282c6 */ LDR R0, [R0] \n\
/* 080282c8 */ STR R0, [R1] \n\
/* 080282ca */ MOVS R1, 0xFB @ Set R1 to 0xFB \n\
/* 080282cc */ LSLS R1, R1, 0x2 \n\
/* 080282ce */ ADD R1, R12 @ Add R12 to R1 \n\
/* 080282d0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080282d2 */ ADDS R0, 0x14 @ Add 0x14 to R0 \n\
/* 080282d4 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 080282d6 */ LDR R0, [R0] \n\
/* 080282d8 */ STR R0, [R1] \n\
/* 080282da */ BL func_0800c3b8 \n\
/* 080282de */ LSLS R0, R0, 0x10 \n\
/* 080282e0 */ LSRS R0, R0, 0x10 \n\
/* 080282e2 */ ADDS R1, R5, 0x4 @ Set R1 to R5 + 0x4 \n\
/* 080282e4 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 080282e6 */ LDR R1, [R1] \n\
/* 080282e8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080282ea */ LSLS R2, R2, 0x6 \n\
/* 080282ec */ BL func_08002ee0 \n\
/* 080282f0 */ LDR R1, =(func_08028210 + 1) \n\
/* 080282f2 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 080282f4 */ LDR R2, [R4] \n\
/* 080282f6 */ BL func_08005d38 \n\
/* 080282fa */ POP {R4, R5} \n\
/* 080282fc */ POP {R0} \n\
/* 080282fe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
