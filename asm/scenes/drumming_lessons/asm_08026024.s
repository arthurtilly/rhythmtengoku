asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026024 \n\
/* 08026024 */ PUSH {R4-R7, LR} \n\
/* 08026026 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08026028 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802602a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802602c */ PUSH {R5-R7} \n\
/* 0802602e */ SUB SP, 0x14 \n\
/* 08026030 */ LDR R1, =D_030055d0 \n\
/* 08026032 */ LDR R1, [R1] \n\
/* 08026034 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08026036 */ MOVS R4, 0xD5 @ Set R4 to 0xD5 \n\
/* 08026038 */ LSLS R4, R4, 0x2 \n\
/* 0802603a */ ADD R4, R9 @ Add R9 to R4 \n\
/* 0802603c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802603e */ STRB R0, [R1] \n\
/* 08026040 */ BL func_08025f90 \n\
/* 08026044 */ BL func_0800e0ec \n\
/* 08026048 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802604a */ STR R0, [SP] \n\
/* 0802604c */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0802604e */ STR R0, [SP, 0x4] \n\
/* 08026050 */ STR R5, [SP, 0x8] \n\
/* 08026052 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08026054 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08026056 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026058 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802605a */ BL func_0800e0a0 \n\
/* 0802605e */ STR R5, [SP] \n\
/* 08026060 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08026062 */ STR R0, [SP, 0x4] \n\
/* 08026064 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08026066 */ STR R2, [SP, 0x8] \n\
/* 08026068 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802606a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802606c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802606e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08026070 */ BL func_0800e0a0 \n\
/* 08026074 */ LDR R3, =D_030055d0 \n\
/* 08026076 */ LDR R0, [R3] \n\
/* 08026078 */ LDR R1, =0x000013a8 \n\
/* 0802607a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802607c */ BL func_08003b28 \n\
/* 08026080 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08026082 */ BL func_08025228 \n\
/* 08026086 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026088 */ LDR R2, =D_03005380 \n\
/* 0802608a */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802608c */ LDR R0, [R2] \n\
/* 0802608e */ MOVS R6, 0x46 @ Set R6 to 0x46 \n\
/* 08026090 */ STR R6, [SP] \n\
/* 08026092 */ LDR R2, =0x0000482d \n\
/* 08026094 */ STR R2, [SP, 0x4] \n\
/* 08026096 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026098 */ STR R3, [SP, 0x8] \n\
/* 0802609a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802609c */ STR R2, [SP, 0xC] \n\
/* 0802609e */ STR R5, [SP, 0x10] \n\
/* 080260a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080260a2 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080260a4 */ BL func_0804d160 \n\
/* 080260a8 */ STRH R0, [R4] \n\
/* 080260aa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080260ac */ BL func_08025228 \n\
/* 080260b0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080260b2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080260b4 */ LDR R0, [R3] \n\
/* 080260b6 */ STR R6, [SP] \n\
/* 080260b8 */ LDR R2, =0x00004832 \n\
/* 080260ba */ STR R2, [SP, 0x4] \n\
/* 080260bc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080260be */ STR R2, [SP, 0x8] \n\
/* 080260c0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080260c2 */ STR R3, [SP, 0xC] \n\
/* 080260c4 */ STR R5, [SP, 0x10] \n\
/* 080260c6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080260c8 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080260ca */ BL func_0804d160 \n\
/* 080260ce */ STRH R0, [R4, 0x2] \n\
/* 080260d0 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080260d2 */ BL func_08025228 \n\
/* 080260d6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080260d8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080260da */ LDR R0, [R2] \n\
/* 080260dc */ STR R6, [SP] \n\
/* 080260de */ LDR R7, =0x00004828 \n\
/* 080260e0 */ STR R7, [SP, 0x4] \n\
/* 080260e2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080260e4 */ STR R3, [SP, 0x8] \n\
/* 080260e6 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080260e8 */ STR R2, [SP, 0xC] \n\
/* 080260ea */ STR R5, [SP, 0x10] \n\
/* 080260ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080260ee */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080260f0 */ BL func_0804d160 \n\
/* 080260f4 */ STRH R0, [R4, 0x4] \n\
/* 080260f6 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 080260f8 */ BL func_08025228 \n\
/* 080260fc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080260fe */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026100 */ LDR R0, [R3] \n\
/* 08026102 */ STR R6, [SP] \n\
/* 08026104 */ STR R7, [SP, 0x4] \n\
/* 08026106 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08026108 */ STR R2, [SP, 0x8] \n\
/* 0802610a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802610c */ STR R3, [SP, 0xC] \n\
/* 0802610e */ STR R5, [SP, 0x10] \n\
/* 08026110 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026112 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08026114 */ BL func_0804d160 \n\
/* 08026118 */ STRH R0, [R4, 0x6] \n\
/* 0802611a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802611c */ LDR R0, [R1] \n\
/* 0802611e */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08026120 */ LDRSH R1, [R4, R2] \n\
/* 08026122 */ MOVS R6, 0xD7 @ Set R6 to 0xD7 \n\
/* 08026124 */ LSLS R6, R6, 0x2 \n\
/* 08026126 */ ADD R6, R9 @ Add R9 to R6 \n\
/* 08026128 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802612a */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0802612c */ BL func_0804db44 \n\
/* 08026130 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026132 */ LDR R0, [R3] \n\
/* 08026134 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08026136 */ LDRSH R1, [R4, R2] \n\
/* 08026138 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802613a */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0802613c */ BL func_0804db44 \n\
/* 08026140 */ STRH R5, [R4, 0x8] \n\
/* 08026142 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08026144 */ BL func_08025228 \n\
/* 08026148 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802614a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802614c */ LDR R0, [R3] \n\
/* 0802614e */ MOVS R2, 0x6E @ Set R2 to 0x6E \n\
/* 08026150 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08026152 */ STR R2, [SP] \n\
/* 08026154 */ LDR R6, =0x000047ce \n\
/* 08026156 */ STR R6, [SP, 0x4] \n\
/* 08026158 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802615a */ STR R3, [SP, 0x8] \n\
/* 0802615c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802615e */ STR R2, [SP, 0xC] \n\
/* 08026160 */ STR R5, [SP, 0x10] \n\
/* 08026162 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026164 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08026166 */ BL func_0804d160 \n\
/* 0802616a */ STRH R0, [R4, 0xA] \n\
/* 0802616c */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 0802616e */ BL func_08025228 \n\
/* 08026172 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026174 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026176 */ LDR R0, [R3] \n\
/* 08026178 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802617a */ STR R2, [SP] \n\
/* 0802617c */ STR R6, [SP, 0x4] \n\
/* 0802617e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026180 */ STR R3, [SP, 0x8] \n\
/* 08026182 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08026184 */ STR R2, [SP, 0xC] \n\
/* 08026186 */ STR R5, [SP, 0x10] \n\
/* 08026188 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802618a */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802618c */ BL func_0804d160 \n\
/* 08026190 */ STRH R0, [R4, 0xC] \n\
/* 08026192 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 08026194 */ BL func_08025228 \n\
/* 08026198 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802619a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802619c */ LDR R0, [R3] \n\
/* 0802619e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080261a0 */ STR R2, [SP] \n\
/* 080261a2 */ LDR R2, =0x000047d8 \n\
/* 080261a4 */ STR R2, [SP, 0x4] \n\
/* 080261a6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080261a8 */ STR R3, [SP, 0x8] \n\
/* 080261aa */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080261ac */ STR R2, [SP, 0xC] \n\
/* 080261ae */ STR R5, [SP, 0x10] \n\
/* 080261b0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080261b2 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080261b4 */ BL func_0804d160 \n\
/* 080261b8 */ STRH R0, [R4, 0xE] \n\
/* 080261ba */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080261bc */ BL func_08025228 \n\
/* 080261c0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080261c2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080261c4 */ LDR R0, [R3] \n\
/* 080261c6 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080261c8 */ STR R2, [SP] \n\
/* 080261ca */ LDR R2, =0x000047c9 \n\
/* 080261cc */ STR R2, [SP, 0x4] \n\
/* 080261ce */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080261d0 */ STR R3, [SP, 0x8] \n\
/* 080261d2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080261d4 */ STR R2, [SP, 0xC] \n\
/* 080261d6 */ STR R5, [SP, 0x10] \n\
/* 080261d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080261da */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080261dc */ BL func_0804d160 \n\
/* 080261e0 */ STRH R0, [R4, 0x10] \n\
/* 080261e2 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 080261e4 */ BL func_08025228 \n\
/* 080261e8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080261ea */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080261ec */ LDR R0, [R3] \n\
/* 080261ee */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080261f0 */ STR R2, [SP] \n\
/* 080261f2 */ LDR R2, =0x000047d6 \n\
/* 080261f4 */ STR R2, [SP, 0x4] \n\
/* 080261f6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080261f8 */ STR R3, [SP, 0x8] \n\
/* 080261fa */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080261fc */ STR R2, [SP, 0xC] \n\
/* 080261fe */ STR R5, [SP, 0x10] \n\
/* 08026200 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026202 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08026204 */ BL func_0804d160 \n\
/* 08026208 */ STRH R0, [R4, 0x14] \n\
/* 0802620a */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0802620c */ BL func_08025228 \n\
/* 08026210 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026212 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026214 */ LDR R0, [R3] \n\
/* 08026216 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026218 */ STR R2, [SP] \n\
/* 0802621a */ SUBS R6, 0xA @ Subtract 0xA from R6 \n\
/* 0802621c */ STR R6, [SP, 0x4] \n\
/* 0802621e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026220 */ STR R3, [SP, 0x8] \n\
/* 08026222 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08026224 */ STR R2, [SP, 0xC] \n\
/* 08026226 */ STR R5, [SP, 0x10] \n\
/* 08026228 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802622a */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802622c */ BL func_0804d160 \n\
/* 08026230 */ STRH R0, [R4, 0x16] \n\
/* 08026232 */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 08026234 */ BL func_08025228 \n\
/* 08026238 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802623a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802623c */ LDR R0, [R3] \n\
/* 0802623e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026240 */ STR R2, [SP] \n\
/* 08026242 */ STR R6, [SP, 0x4] \n\
/* 08026244 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026246 */ STR R3, [SP, 0x8] \n\
/* 08026248 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802624a */ STR R2, [SP, 0xC] \n\
/* 0802624c */ STR R5, [SP, 0x10] \n\
/* 0802624e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026250 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08026252 */ BL func_0804d160 \n\
/* 08026256 */ STRH R0, [R4, 0x18] \n\
/* 08026258 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802625a */ LDRSH R0, [R4, R3] \n\
/* 0802625c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802625e */ BL func_08025fbc \n\
/* 08026262 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08026264 */ LDRSH R0, [R4, R1] \n\
/* 08026266 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08026268 */ BL func_08025fbc \n\
/* 0802626c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802626e */ LDRSH R0, [R4, R2] \n\
/* 08026270 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08026272 */ BL func_08025fbc \n\
/* 08026276 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08026278 */ LDRSH R0, [R4, R3] \n\
/* 0802627a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802627c */ BL func_08025fbc \n\
/* 08026280 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08026282 */ LDRSH R0, [R4, R1] \n\
/* 08026284 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08026286 */ BL func_08025fbc \n\
/* 0802628a */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802628c */ LDRSH R0, [R4, R2] \n\
/* 0802628e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08026290 */ BL func_08025fbc \n\
/* 08026294 */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 08026296 */ LDRSH R0, [R4, R3] \n\
/* 08026298 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802629a */ BL func_08025fbc \n\
/* 0802629e */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 080262a0 */ LDRSH R0, [R4, R1] \n\
/* 080262a2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080262a4 */ BL func_08025fbc \n\
/* 080262a8 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080262aa */ LDRSH R0, [R4, R2] \n\
/* 080262ac */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080262ae */ BL func_08025fbc \n\
/* 080262b2 */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 080262b4 */ LDRSH R0, [R4, R3] \n\
/* 080262b6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080262b8 */ BL func_08025fbc \n\
/* 080262bc */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 080262be */ LDRSH R0, [R4, R1] \n\
/* 080262c0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080262c2 */ BL func_08025fbc \n\
/* 080262c6 */ LDR R2, =D_030055d0 \n\
/* 080262c8 */ LDR R0, [R2] \n\
/* 080262ca */ MOVS R3, 0xE2 @ Set R3 to 0xE2 \n\
/* 080262cc */ LSLS R3, R3, 0x2 \n\
/* 080262ce */ ADDS R7, R0, R3 @ Set R7 to R0 + R3 \n\
/* 080262d0 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 080262d2 */ BL func_08025228 \n\
/* 080262d6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080262d8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080262da */ LDR R0, [R2] \n\
/* 080262dc */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080262de */ STR R3, [SP] \n\
/* 080262e0 */ LDR R2, =0x00004792 \n\
/* 080262e2 */ STR R2, [SP, 0x4] \n\
/* 080262e4 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080262e6 */ STR R3, [SP, 0x8] \n\
/* 080262e8 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080262ea */ STR R2, [SP, 0xC] \n\
/* 080262ec */ STR R5, [SP, 0x10] \n\
/* 080262ee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080262f0 */ MOVS R3, 0x32 @ Set R3 to 0x32 \n\
/* 080262f2 */ BL func_0804d160 \n\
/* 080262f6 */ STRH R0, [R7] \n\
/* 080262f8 */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 080262fa */ BL func_08025228 \n\
/* 080262fe */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026300 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026302 */ LDR R0, [R3] \n\
/* 08026304 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026306 */ STR R2, [SP] \n\
/* 08026308 */ LDR R3, =0x0000479c \n\
/* 0802630a */ STR R3, [SP, 0x4] \n\
/* 0802630c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802630e */ STR R2, [SP, 0x8] \n\
/* 08026310 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08026312 */ STR R3, [SP, 0xC] \n\
/* 08026314 */ STR R5, [SP, 0x10] \n\
/* 08026316 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026318 */ MOVS R3, 0x32 @ Set R3 to 0x32 \n\
/* 0802631a */ BL func_0804d160 \n\
/* 0802631e */ STRH R0, [R7, 0x2] \n\
/* 08026320 */ MOVS R0, 0x13 @ Set R0 to 0x13 \n\
/* 08026322 */ BL func_08025228 \n\
/* 08026326 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026328 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802632a */ LDR R0, [R2] \n\
/* 0802632c */ MOVS R2, 0x6D @ Set R2 to 0x6D \n\
/* 0802632e */ STR R2, [SP] \n\
/* 08026330 */ LDR R3, =0x000047a6 \n\
/* 08026332 */ STR R3, [SP, 0x4] \n\
/* 08026334 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08026336 */ STR R2, [SP, 0x8] \n\
/* 08026338 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802633a */ STR R3, [SP, 0xC] \n\
/* 0802633c */ STR R5, [SP, 0x10] \n\
/* 0802633e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026340 */ MOVS R3, 0x32 @ Set R3 to 0x32 \n\
/* 08026342 */ BL func_0804d160 \n\
/* 08026346 */ STRH R0, [R7, 0x8] \n\
/* 08026348 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0802634a */ BL func_08025228 \n\
/* 0802634e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026350 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026352 */ LDR R0, [R2] \n\
/* 08026354 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08026356 */ STR R3, [SP] \n\
/* 08026358 */ SUBS R6, 0x3C @ Subtract 0x3C from R6 \n\
/* 0802635a */ STR R6, [SP, 0x4] \n\
/* 0802635c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802635e */ STR R2, [SP, 0x8] \n\
/* 08026360 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08026362 */ STR R3, [SP, 0xC] \n\
/* 08026364 */ STR R5, [SP, 0x10] \n\
/* 08026366 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026368 */ MOVS R3, 0x32 @ Set R3 to 0x32 \n\
/* 0802636a */ BL func_0804d160 \n\
/* 0802636e */ STRH R0, [R7, 0x4] \n\
/* 08026370 */ MOVS R0, 0x15 @ Set R0 to 0x15 \n\
/* 08026372 */ BL func_08025228 \n\
/* 08026376 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026378 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802637a */ LDR R0, [R2] \n\
/* 0802637c */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0802637e */ STR R3, [SP] \n\
/* 08026380 */ STR R6, [SP, 0x4] \n\
/* 08026382 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08026384 */ STR R2, [SP, 0x8] \n\
/* 08026386 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08026388 */ STR R3, [SP, 0xC] \n\
/* 0802638a */ STR R5, [SP, 0x10] \n\
/* 0802638c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802638e */ MOVS R3, 0x32 @ Set R3 to 0x32 \n\
/* 08026390 */ BL func_0804d160 \n\
/* 08026394 */ STRH R0, [R7, 0x6] \n\
/* 08026396 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08026398 */ LDRSH R0, [R7, R1] \n\
/* 0802639a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802639c */ BL func_08025fbc \n\
/* 080263a0 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080263a2 */ LDRSH R0, [R7, R2] \n\
/* 080263a4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080263a6 */ BL func_08025fbc \n\
/* 080263aa */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 080263ac */ LDRSH R0, [R7, R3] \n\
/* 080263ae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080263b0 */ BL func_08025fbc \n\
/* 080263b4 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 080263b6 */ LDRSH R0, [R7, R1] \n\
/* 080263b8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080263ba */ BL func_08025fbc \n\
/* 080263be */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080263c0 */ LDRSH R0, [R7, R2] \n\
/* 080263c2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080263c4 */ BL func_08025fbc \n\
/* 080263c8 */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 080263ca */ BL func_08025228 \n\
/* 080263ce */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080263d0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080263d2 */ LDR R0, [R3] \n\
/* 080263d4 */ MOVS R2, 0x8E @ Set R2 to 0x8E \n\
/* 080263d6 */ STR R2, [SP] \n\
/* 080263d8 */ LDR R2, =0x00004738 \n\
/* 080263da */ STR R2, [SP, 0x4] \n\
/* 080263dc */ STR R5, [SP, 0x8] \n\
/* 080263de */ STR R5, [SP, 0xC] \n\
/* 080263e0 */ STR R5, [SP, 0x10] \n\
/* 080263e2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080263e4 */ MOVS R3, 0x26 @ Set R3 to 0x26 \n\
/* 080263e6 */ BL func_0804d160 \n\
/* 080263ea */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080263ec */ STRB R3, [R7, 0xE] \n\
/* 080263ee */ STRH R5, [R7, 0x10] \n\
/* 080263f0 */ LDR R1, =D_030055d0 \n\
/* 080263f2 */ LDR R0, [R1] \n\
/* 080263f4 */ MOVS R2, 0xDD @ Set R2 to 0xDD \n\
/* 080263f6 */ LSLS R2, R2, 0x2 \n\
/* 080263f8 */ ADDS R7, R0, R2 @ Set R7 to R0 + R2 \n\
/* 080263fa */ MOVS R0, 0x1B @ Set R0 to 0x1B \n\
/* 080263fc */ BL func_08025228 \n\
/* 08026400 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026402 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026404 */ LDR R0, [R3] \n\
/* 08026406 */ MOVS R4, 0x73 @ Set R4 to 0x73 \n\
/* 08026408 */ STR R4, [SP] \n\
/* 0802640a */ LDR R2, =0x00004792 \n\
/* 0802640c */ STR R2, [SP, 0x4] \n\
/* 0802640e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026410 */ STR R3, [SP, 0x8] \n\
/* 08026412 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08026414 */ STR R2, [SP, 0xC] \n\
/* 08026416 */ STR R5, [SP, 0x10] \n\
/* 08026418 */ B branch_08026454 \n\
\n\
.ltorg \n\
branch_08026454: \n\
/* 08026454 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026456 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 08026458 */ BL func_0804d160 \n\
/* 0802645c */ STRH R0, [R7] \n\
/* 0802645e */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 08026460 */ BL func_08025228 \n\
/* 08026464 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026466 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08026468 */ LDR R0, [R3] \n\
/* 0802646a */ STR R4, [SP] \n\
/* 0802646c */ LDR R2, =0x0000479c \n\
/* 0802646e */ STR R2, [SP, 0x4] \n\
/* 08026470 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026472 */ STR R3, [SP, 0x8] \n\
/* 08026474 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08026476 */ STR R2, [SP, 0xC] \n\
/* 08026478 */ STR R5, [SP, 0x10] \n\
/* 0802647a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802647c */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 0802647e */ BL func_0804d160 \n\
/* 08026482 */ STRH R0, [R7, 0x2] \n\
/* 08026484 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08026486 */ BL func_08025228 \n\
/* 0802648a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802648c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802648e */ LDR R0, [R3] \n\
/* 08026490 */ STR R4, [SP] \n\
/* 08026492 */ LDR R2, =0x000047a6 \n\
/* 08026494 */ STR R2, [SP, 0x4] \n\
/* 08026496 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08026498 */ STR R3, [SP, 0x8] \n\
/* 0802649a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802649c */ STR R2, [SP, 0xC] \n\
/* 0802649e */ STR R5, [SP, 0x10] \n\
/* 080264a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080264a2 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 080264a4 */ BL func_0804d160 \n\
/* 080264a8 */ STRH R0, [R7, 0x8] \n\
/* 080264aa */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 080264ac */ BL func_08025228 \n\
/* 080264b0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080264b2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080264b4 */ LDR R0, [R3] \n\
/* 080264b6 */ STR R4, [SP] \n\
/* 080264b8 */ STR R6, [SP, 0x4] \n\
/* 080264ba */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080264bc */ STR R2, [SP, 0x8] \n\
/* 080264be */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080264c0 */ STR R3, [SP, 0xC] \n\
/* 080264c2 */ STR R5, [SP, 0x10] \n\
/* 080264c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080264c6 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 080264c8 */ BL func_0804d160 \n\
/* 080264cc */ STRH R0, [R7, 0x4] \n\
/* 080264ce */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 080264d0 */ BL func_08025228 \n\
/* 080264d4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080264d6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080264d8 */ LDR R0, [R2] \n\
/* 080264da */ STR R4, [SP] \n\
/* 080264dc */ STR R6, [SP, 0x4] \n\
/* 080264de */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080264e0 */ STR R3, [SP, 0x8] \n\
/* 080264e2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080264e4 */ STR R2, [SP, 0xC] \n\
/* 080264e6 */ STR R5, [SP, 0x10] \n\
/* 080264e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080264ea */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 080264ec */ BL func_0804d160 \n\
/* 080264f0 */ STRH R0, [R7, 0x6] \n\
/* 080264f2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080264f4 */ LDRSH R0, [R7, R3] \n\
/* 080264f6 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080264f8 */ BL func_08025fbc \n\
/* 080264fc */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080264fe */ LDRSH R0, [R7, R1] \n\
/* 08026500 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08026502 */ BL func_08025fbc \n\
/* 08026506 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08026508 */ LDRSH R0, [R7, R2] \n\
/* 0802650a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802650c */ BL func_08025fbc \n\
/* 08026510 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08026512 */ LDRSH R0, [R7, R3] \n\
/* 08026514 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08026516 */ BL func_08025fbc \n\
/* 0802651a */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0802651c */ LDRSH R0, [R7, R1] \n\
/* 0802651e */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08026520 */ BL func_08025fbc \n\
/* 08026524 */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 08026526 */ BL func_08025228 \n\
/* 0802652a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802652c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802652e */ LDR R0, [R2] \n\
/* 08026530 */ MOVS R2, 0x8B @ Set R2 to 0x8B \n\
/* 08026532 */ STR R2, [SP] \n\
/* 08026534 */ LDR R3, =0x00004738 \n\
/* 08026536 */ STR R3, [SP, 0x4] \n\
/* 08026538 */ STR R5, [SP, 0x8] \n\
/* 0802653a */ STR R5, [SP, 0xC] \n\
/* 0802653c */ STR R5, [SP, 0x10] \n\
/* 0802653e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026540 */ MOVS R3, 0xCA @ Set R3 to 0xCA \n\
/* 08026542 */ BL func_0804d160 \n\
/* 08026546 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08026548 */ STRB R0, [R7, 0xE] \n\
/* 0802654a */ STRH R5, [R7, 0x10] \n\
/* 0802654c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802654e */ LDR R4, [R1] \n\
/* 08026550 */ BL func_0800c3b8 \n\
/* 08026554 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026556 */ LSLS R1, R1, 0x10 \n\
/* 08026558 */ LSRS R1, R1, 0x10 \n\
/* 0802655a */ LDR R3, =(D_03004b10 + 0x12) \n\
/* 0802655c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802655e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026560 */ BL func_0804e188 \n\
/* 08026564 */ LDR R2, =D_030055d0 \n\
/* 08026566 */ LDR R0, [R2] \n\
/* 08026568 */ MOVS R3, 0xE7 @ Set R3 to 0xE7 \n\
/* 0802656a */ LSLS R3, R3, 0x2 \n\
/* 0802656c */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0802656e */ STR R5, [R1] \n\
/* 08026570 */ MOVS R4, 0xE8 @ Set R4 to 0xE8 \n\
/* 08026572 */ LSLS R4, R4, 0x2 \n\
/* 08026574 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08026576 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08026578 */ STRB R1, [R0] \n\
/* 0802657a */ MOVS R0, 0x26 @ Set R0 to 0x26 \n\
/* 0802657c */ BL func_08025228 \n\
/* 08026580 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08026582 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026584 */ LDR R0, [R2] \n\
/* 08026586 */ LDR R3, =D_030055d0 \n\
/* 08026588 */ LDR R2, [R3] \n\
/* 0802658a */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802658c */ LDRB R2, [R2] \n\
/* 0802658e */ LSLS R2, R2, 0x18 \n\
/* 08026590 */ ASRS R2, R2, 0x18 \n\
/* 08026592 */ MOVS R3, 0x9A @ Set R3 to 0x9A \n\
/* 08026594 */ STR R3, [SP] \n\
/* 08026596 */ STR R5, [SP, 0x4] \n\
/* 08026598 */ STR R5, [SP, 0x8] \n\
/* 0802659a */ STR R5, [SP, 0xC] \n\
/* 0802659c */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0802659e */ LSLS R4, R4, 0x8 \n\
/* 080265a0 */ STR R4, [SP, 0x10] \n\
/* 080265a2 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080265a4 */ BL func_0804d160 \n\
/* 080265a8 */ LDR R2, =D_030055d0 \n\
/* 080265aa */ LDR R1, [R2] \n\
/* 080265ac */ LDR R3, =0x000003a2 \n\
/* 080265ae */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080265b0 */ STRH R0, [R1] \n\
/* 080265b2 */ MOVS R0, 0x27 @ Set R0 to 0x27 \n\
/* 080265b4 */ BL func_08025228 \n\
/* 080265b8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080265ba */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080265bc */ LDR R0, [R2] \n\
/* 080265be */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 080265c0 */ STR R2, [SP] \n\
/* 080265c2 */ STR R5, [SP, 0x4] \n\
/* 080265c4 */ STR R5, [SP, 0x8] \n\
/* 080265c6 */ STR R5, [SP, 0xC] \n\
/* 080265c8 */ STR R4, [SP, 0x10] \n\
/* 080265ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080265cc */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080265ce */ BL func_0804d160 \n\
/* 080265d2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080265d4 */ LDR R3, =D_030055d0 \n\
/* 080265d6 */ LDR R0, [R3] \n\
/* 080265d8 */ MOVS R3, 0xE9 @ Set R3 to 0xE9 \n\
/* 080265da */ LSLS R3, R3, 0x2 \n\
/* 080265dc */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 080265de */ STRH R2, [R1] \n\
/* 080265e0 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080265e2 */ BL func_0802a9b4 \n\
/* 080265e6 */ MOVS R0, 0xF3 @ Set R0 to 0xF3 \n\
/* 080265e8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080265ea */ BL func_08017338 \n\
/* 080265ee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080265f0 */ BL func_080177a4 \n\
/* 080265f4 */ BL func_08025b88 \n\
/* 080265f8 */ LDR R1, =D_030055d0 \n\
/* 080265fa */ LDR R0, [R1] \n\
/* 080265fc */ LDR R2, =0x000013d0 \n\
/* 080265fe */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08026600 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08026602 */ LSLS R1, R1, 0x1 \n\
/* 08026604 */ STRH R1, [R0] \n\
/* 08026606 */ BL func_08025248 \n\
/* 0802660a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802660c */ BL func_08026b0c \n\
/* 08026610 */ ADD SP, 0x14 \n\
/* 08026612 */ POP {R3-R5} \n\
/* 08026614 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08026616 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08026618 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802661a */ POP {R4-R7} \n\
/* 0802661c */ POP {R0} \n\
/* 0802661e */ BX R0 \n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
