asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08029204 \n\
/* 08029204 */ PUSH {R4-R6, LR} \n\
/* 08029206 */ LDR R4, =D_030055d0 \n\
/* 08029208 */ LDR R2, [R4] \n\
/* 0802920a */ LDR R0, =0x00000402 \n\
/* 0802920c */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0802920e */ LDRH R0, [R1] \n\
/* 08029210 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029212 */ BEQ branch_0802926c \n\
/* 08029214 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08029216 */ STRH R0, [R1] \n\
/* 08029218 */ LSLS R0, R0, 0x10 \n\
/* 0802921a */ LSRS R3, R0, 0x10 \n\
/* 0802921c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0802921e */ BNE branch_0802926c \n\
/* 08029220 */ MOVS R6, 0xFF @ Set R6 to 0xFF \n\
/* 08029222 */ LSLS R6, R6, 0x2 \n\
/* 08029224 */ ADDS R1, R2, R6 @ Set R1 to R2 + R6 \n\
/* 08029226 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08029228 */ LSLS R0, R0, 0x1 \n\
/* 0802922a */ STRH R0, [R1] \n\
/* 0802922c */ LDR R0, =0x000003fe \n\
/* 0802922e */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 08029230 */ LDR R0, =0x0000ff70 \n\
/* 08029232 */ STRH R0, [R1] \n\
/* 08029234 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08029236 */ LSLS R1, R1, 0x3 \n\
/* 08029238 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802923a */ STRH R3, [R0] \n\
/* 0802923c */ MOVS R3, 0xFD @ Set R3 to 0xFD \n\
/* 0802923e */ LSLS R3, R3, 0x2 \n\
/* 08029240 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08029242 */ LDR R0, [R0] \n\
/* 08029244 */ ADDS R6, 0x8 @ Add 0x8 to R6 \n\
/* 08029246 */ ADDS R1, R2, R6 @ Set R1 to R2 + R6 \n\
/* 08029248 */ LDR R1, [R1] \n\
/* 0802924a */ BL func_0800aa4c \n\
/* 0802924e */ LDR R0, =D_03005380 \n\
/* 08029250 */ LDR R0, [R0] \n\
/* 08029252 */ LDR R2, [R4] \n\
/* 08029254 */ MOVS R3, 0xFE @ Set R3 to 0xFE \n\
/* 08029256 */ LSLS R3, R3, 0x2 \n\
/* 08029258 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802925a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802925c */ LDRSH R1, [R1, R6] \n\
/* 0802925e */ ADDS R3, 0x10 @ Add 0x10 to R3 \n\
/* 08029260 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08029262 */ LDRB R2, [R2] \n\
/* 08029264 */ LSLS R2, R2, 0x18 \n\
/* 08029266 */ ASRS R2, R2, 0x18 \n\
/* 08029268 */ BL func_0804cebc \n\
 \n\
branch_0802926c: \n\
/* 0802926c */ LDR R5, =D_030055d0 \n\
/* 0802926e */ LDR R4, [R5] \n\
/* 08029270 */ MOVS R6, 0xFF @ Set R6 to 0xFF \n\
/* 08029272 */ LSLS R6, R6, 0x2 \n\
/* 08029274 */ ADDS R2, R4, R6 @ Set R2 to R4 + R6 \n\
/* 08029276 */ LDRH R0, [R2] \n\
/* 08029278 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802927a */ BEQ branch_080292b2 \n\
/* 0802927c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802927e */ LSLS R0, R1, 0x4 \n\
/* 08029280 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08029282 */ ASRS R0, R0, 0x4 \n\
/* 08029284 */ STRH R0, [R2] \n\
/* 08029286 */ LDRH R0, [R2] \n\
/* 08029288 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802928a */ LSLS R2, R2, 0x1 \n\
/* 0802928c */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0802928e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08029290 */ LSLS R1, R1, 0x3 \n\
/* 08029292 */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08029294 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029296 */ LDRSH R0, [R0, R3] \n\
/* 08029298 */ ADDS R6, 0x2 @ Add 0x2 to R6 \n\
/* 0802929a */ ADDS R3, R4, R6 @ Set R3 to R4 + R6 \n\
/* 0802929c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802929e */ LDRSH R1, [R3, R6] \n\
/* 080292a0 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080292a2 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 080292a4 */ ASRS R0, R0, 0x8 \n\
/* 080292a6 */ LDR R1, =0x000003fa \n\
/* 080292a8 */ ADDS R2, R4, R1 @ Set R2 to R4 + R1 \n\
/* 080292aa */ STRH R0, [R2] \n\
/* 080292ac */ LDRH R1, [R3] \n\
/* 080292ae */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080292b0 */ STRH R0, [R2] \n\
 \n\
branch_080292b2: \n\
/* 080292b2 */ LDR R0, [R5] \n\
/* 080292b4 */ MOVS R3, 0xFD @ Set R3 to 0xFD \n\
/* 080292b6 */ LSLS R3, R3, 0x2 \n\
/* 080292b8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080292ba */ LDR R0, [R0] \n\
/* 080292bc */ BL func_0800a914 \n\
/* 080292c0 */ POP {R4-R6} \n\
/* 080292c2 */ POP {R0} \n\
/* 080292c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
