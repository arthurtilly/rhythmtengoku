asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080225bc \n\
/* 080225bc */ PUSH {R4, LR} \n\
/* 080225be */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080225c0 */ LDR R0, =gCurrentEngineData \n\
/* 080225c2 */ LDR R3, [R0] \n\
/* 080225c4 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080225c6 */ ADDS R0, 0xB2 @ Add 0xB2 to R0 \n\
/* 080225c8 */ LDRB R0, [R0] \n\
/* 080225ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080225cc */ BEQ branch_080225f4 \n\
/* 080225ce */ MOVS R1, 0xD @ Set R1 to 0xD \n\
/* 080225d0 */ LDRSB R1, [R2, R1] \n\
/* 080225d2 */ LSLS R0, R1, 0x1 \n\
/* 080225d4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080225d6 */ LSLS R0, R0, 0x5 \n\
/* 080225d8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080225da */ SUBS R4, 0x78 @ Subtract 0x78 from R4 \n\
/* 080225dc */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080225de */ ADDS R0, 0xB4 @ Add 0xB4 to R0 \n\
/* 080225e0 */ LDR R0, [R0] \n\
/* 080225e2 */ LSLS R0, R0, 0x3 \n\
/* 080225e4 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 080225e6 */ ADDS R1, 0xB8 @ Add 0xB8 to R1 \n\
/* 080225e8 */ LDR R1, [R1] \n\
/* 080225ea */ BL __udivsi3 \n\
/* 080225ee */ B branch_0802260a \n\
 \n\
.ltorg \n\
 \n\
branch_080225f4: \n\
/* 080225f4 */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 080225f6 */ LDRSB R0, [R2, R0] \n\
/* 080225f8 */ LSLS R1, R0, 0x1 \n\
/* 080225fa */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080225fc */ LSLS R1, R1, 0x5 \n\
/* 080225fe */ LDRH R0, [R2, 0xE] \n\
/* 08022600 */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08022602 */ SUBS R4, R1, R0 @ Set R4 to R1 - R0 \n\
/* 08022604 */ LDRH R0, [R2, 0x12] \n\
/* 08022606 */ LSLS R0, R0, 0x10 \n\
/* 08022608 */ ASRS R0, R0, 0x18 \n\
 \n\
branch_0802260a: \n\
/* 0802260a */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802260c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802260e */ POP {R4} \n\
/* 08022610 */ POP {R1} \n\
/* 08022612 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
