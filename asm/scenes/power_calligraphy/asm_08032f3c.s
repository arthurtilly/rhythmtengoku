asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032f3c \n\
/* 08032f3c */ PUSH {R4-R7, LR} \n\
/* 08032f3e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08032f40 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08032f42 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08032f44 */ PUSH {R5-R7} \n\
/* 08032f46 */ SUB SP, 0x14 \n\
/* 08032f48 */ LDR R1, =D_030055d0 \n\
/* 08032f4a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08032f4c */ LDR R1, [R1] \n\
/* 08032f4e */ STRB R0, [R1] \n\
/* 08032f50 */ BL func_08032f10 \n\
/* 08032f54 */ BL func_0800e0ec \n\
/* 08032f58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032f5a */ STR R2, [SP] \n\
/* 08032f5c */ MOVS R4, 0x1D @ Set R4 to 0x1D \n\
/* 08032f5e */ STR R4, [SP, 0x4] \n\
/* 08032f60 */ LDR R0, =0x8001 \n\
/* 08032f62 */ STR R0, [SP, 0x8] \n\
/* 08032f64 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08032f66 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08032f68 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032f6a */ BL func_0800e0a0 \n\
/* 08032f6e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08032f70 */ STR R0, [SP] \n\
/* 08032f72 */ STR R4, [SP, 0x4] \n\
/* 08032f74 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08032f76 */ STR R0, [SP, 0x8] \n\
/* 08032f78 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08032f7a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032f7c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032f7e */ BL func_0800e0a0 \n\
/* 08032f82 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08032f84 */ STR R1, [SP] \n\
/* 08032f86 */ STR R4, [SP, 0x4] \n\
/* 08032f88 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08032f8a */ STR R0, [SP, 0x8] \n\
/* 08032f8c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08032f8e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032f90 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032f92 */ BL func_0800e0a0 \n\
/* 08032f96 */ LDR R5, =D_03005380 \n\
/* 08032f98 */ LDR R0, [R5] \n\
/* 08032f9a */ LDR R1, =D_088eef28 \n\
/* 08032f9c */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08032f9e */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08032fa0 */ STR R2, [SP] \n\
/* 08032fa2 */ LDR R2, =0x4738 \n\
/* 08032fa4 */ STR R2, [SP, 0x4] \n\
/* 08032fa6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032fa8 */ STR R2, [SP, 0x8] \n\
/* 08032faa */ STR R2, [SP, 0xC] \n\
/* 08032fac */ STR R2, [SP, 0x10] \n\
/* 08032fae */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08032fb0 */ BL func_0804d160 \n\
/* 08032fb4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08032fb6 */ LDR R1, [R2] \n\
/* 08032fb8 */ STRH R0, [R1, 0x36] \n\
/* 08032fba */ LDR R0, [R5] \n\
/* 08032fbc */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08032fbe */ LDRSH R1, [R1, R2] \n\
/* 08032fc0 */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 08032fc2 */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 08032fc4 */ BL func_0804d5d4 \n\
/* 08032fc8 */ LDR R0, [R5] \n\
/* 08032fca */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08032fcc */ LDR R1, [R2] \n\
/* 08032fce */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08032fd0 */ LDRSH R1, [R1, R2] \n\
/* 08032fd2 */ LDR R4, =(D_03004b10 + 0x14) \n\
/* 08032fd4 */ ADDS R2, R4, 0x2 @ Set R2 to R4 + 0x2 \n\
/* 08032fd6 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08032fd8 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08032fda */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08032fdc */ BL func_0804db44 \n\
/* 08032fe0 */ LDR R0, [R5] \n\
/* 08032fe2 */ LDR R1, =D_088ef1f0 \n\
/* 08032fe4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08032fe6 */ STR R2, [SP] \n\
/* 08032fe8 */ LDR R2, =0x4737 \n\
/* 08032fea */ STR R2, [SP, 0x4] \n\
/* 08032fec */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08032fee */ STR R2, [SP, 0x8] \n\
/* 08032ff0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032ff2 */ STR R2, [SP, 0xC] \n\
/* 08032ff4 */ LDR R2, =0x8002 \n\
/* 08032ff6 */ STR R2, [SP, 0x10] \n\
/* 08032ff8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032ffa */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08032ffc */ BL func_0804d160 \n\
/* 08033000 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08033002 */ LDR R1, [R2] \n\
/* 08033004 */ STRH R0, [R1, 0x38] \n\
/* 08033006 */ LDR R0, [R5] \n\
/* 08033008 */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 0803300a */ LDRSH R1, [R1, R2] \n\
/* 0803300c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0803300e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08033010 */ BL func_0804db44 \n\
/* 08033014 */ LDR R0, [R5] \n\
/* 08033016 */ LDR R6, =D_088eeda8 \n\
/* 08033018 */ MOVS R1, 0x54 @ Set R1 to 0x54 \n\
/* 0803301a */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0803301c */ STR R1, [SP] \n\
/* 0803301e */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08033020 */ LSLS R2, R2, 0x8 \n\
/* 08033022 */ STR R2, [SP, 0x4] \n\
/* 08033024 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08033026 */ STR R1, [SP, 0x8] \n\
/* 08033028 */ STR R1, [SP, 0xC] \n\
/* 0803302a */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 0803302c */ LSLS R7, R7, 0x8 \n\
/* 0803302e */ STR R7, [SP, 0x10] \n\
/* 08033030 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08033032 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033034 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08033036 */ BL func_0804d160 \n\
/* 0803303a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803303c */ LDR R1, [R2] \n\
/* 0803303e */ STRH R0, [R1, 0x2] \n\
/* 08033040 */ LDR R0, [R5] \n\
/* 08033042 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08033044 */ LDRSH R1, [R1, R2] \n\
/* 08033046 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08033048 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803304a */ BL func_0804db44 \n\
/* 0803304e */ LDR R0, [R5] \n\
/* 08033050 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08033052 */ STR R1, [SP] \n\
/* 08033054 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08033056 */ LSLS R1, R1, 0x7 \n\
/* 08033058 */ STR R1, [SP, 0x4] \n\
/* 0803305a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803305c */ STR R2, [SP, 0x8] \n\
/* 0803305e */ STR R2, [SP, 0xC] \n\
/* 08033060 */ STR R7, [SP, 0x10] \n\
/* 08033062 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08033064 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08033066 */ BL func_0804d160 \n\
/* 0803306a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803306c */ LDR R1, [R2] \n\
/* 0803306e */ STRH R0, [R1, 0x4] \n\
/* 08033070 */ LDR R0, [R5] \n\
/* 08033072 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08033074 */ LDRSH R1, [R1, R2] \n\
/* 08033076 */ SUBS R2, R4, 0x4 @ Set R2 to R4 - 0x4 \n\
/* 08033078 */ SUBS R4, 0x2 @ Subtract 0x2 from R4 \n\
/* 0803307a */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0803307c */ BL func_0804db44 \n\
/* 08033080 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08033082 */ LDR R1, [R0] \n\
/* 08033084 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08033086 */ STRB R0, [R1, 0x6] \n\
/* 08033088 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803308a */ LDR R0, [R1] \n\
/* 0803308c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803308e */ STRB R2, [R0, 0x7] \n\
/* 08033090 */ LDR R1, [R1] \n\
/* 08033092 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08033094 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08033096 */ STRB R0, [R1, 0xA] \n\
/* 08033098 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803309a */ LDR R0, [R1] \n\
/* 0803309c */ STRB R2, [R0, 0xB] \n\
/* 0803309e */ LDR R0, [R1] \n\
/* 080330a0 */ STRB R2, [R0, 0xC] \n\
/* 080330a2 */ LDR R0, [R1] \n\
/* 080330a4 */ MOVS R2, 0xD5 @ Set R2 to 0xD5 \n\
/* 080330a6 */ LSLS R2, R2, 0x1 \n\
/* 080330a8 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 080330aa */ LDR R0, =0xffff \n\
/* 080330ac */ STRH R0, [R1] \n\
/* 080330ae */ LDR R0, [R5] \n\
/* 080330b0 */ LDR R1, =D_088ef1e0 \n\
/* 080330b2 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 080330b4 */ STR R2, [SP] \n\
/* 080330b6 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 080330b8 */ LSLS R2, R2, 0x8 \n\
/* 080330ba */ STR R2, [SP, 0x4] \n\
/* 080330bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080330be */ STR R2, [SP, 0x8] \n\
/* 080330c0 */ STR R2, [SP, 0xC] \n\
/* 080330c2 */ STR R7, [SP, 0x10] \n\
/* 080330c4 */ MOVS R3, 0xF0 @ Set R3 to 0xF0 \n\
/* 080330c6 */ BL func_0804d160 \n\
/* 080330ca */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080330cc */ LDR R1, [R2] \n\
/* 080330ce */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 080330d0 */ LSLS R2, R2, 0x1 \n\
/* 080330d2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080330d4 */ STRH R0, [R1] \n\
/* 080330d6 */ BL func_08032bf8 \n\
/* 080330da */ BL func_080327d4 \n\
/* 080330de */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080330e0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080330e2 */ BL func_08017338 \n\
/* 080330e6 */ ADD SP, 0x14 \n\
/* 080330e8 */ POP {R3-R5} \n\
/* 080330ea */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080330ec */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080330ee */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080330f0 */ POP {R4-R7} \n\
/* 080330f2 */ POP {R0} \n\
/* 080330f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
