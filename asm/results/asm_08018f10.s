asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018f10 \n\
/* 08018f10 */ PUSH {R4-R7, LR} \n\
/* 08018f12 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08018f14 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08018f16 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08018f18 */ PUSH {R5-R7} \n\
/* 08018f1a */ SUB SP, 0x14 \n\
/* 08018f1c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018f1e */ BL func_08007324 \n\
/* 08018f22 */ BL func_080073f0 \n\
/* 08018f26 */ BL get_current_mem_id \n\
/* 08018f2a */ LSLS R0, R0, 0x10 \n\
/* 08018f2c */ LSRS R0, R0, 0x10 \n\
/* 08018f2e */ LDR R1, =bitmap_font_warioware_body \n\
/* 08018f30 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 08018f32 */ LSLS R3, R3, 0x2 \n\
/* 08018f34 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08018f36 */ STR R2, [SP] \n\
/* 08018f38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018f3a */ BL create_new_bmp_font_bg \n\
/* 08018f3e */ LDR R2, =D_030046a4 \n\
/* 08018f40 */ LDR R1, [R2] \n\
/* 08018f42 */ STR R0, [R1] \n\
/* 08018f44 */ LDR R1, =(VRAMBase + 0x14000) \n\
/* 08018f46 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08018f48 */ LSLS R2, R2, 0x7 \n\
/* 08018f4a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08018f4c */ LSLS R0, R0, 0x2 \n\
/* 08018f4e */ STR R0, [SP] \n\
/* 08018f50 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018f52 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08018f54 */ BL dma3_fill \n\
/* 08018f58 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08018f5a */ LSLS R0, R0, 0x2 \n\
/* 08018f5c */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08018f5e */ BL func_0800c660 \n\
/* 08018f62 */ LDR R2, =D_030046a4 \n\
/* 08018f64 */ LDR R1, [R2] \n\
/* 08018f66 */ STR R0, [R1, 0x4] \n\
/* 08018f68 */ BL func_08018ef0 \n\
/* 08018f6c */ BL func_0801a060 \n\
/* 08018f70 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08018f72 */ LDR R0, =D_03005380 \n\
/* 08018f74 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08018f76 */ LDR R4, [R0] \n\
/* 08018f78 */ LDR R5, =D_0890bc00 \n\
/* 08018f7a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08018f7c */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08018f7e */ BL __umodsi3 \n\
/* 08018f82 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08018f84 */ LSLS R2, R2, 0x18 \n\
/* 08018f86 */ ASRS R2, R2, 0x18 \n\
/* 08018f88 */ MOVS R0, 0x72 @ Set R0 to 0x72 \n\
/* 08018f8a */ STR R0, [SP] \n\
/* 08018f8c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08018f8e */ STR R6, [SP, 0x4] \n\
/* 08018f90 */ STR R6, [SP, 0x8] \n\
/* 08018f92 */ STR R6, [SP, 0xC] \n\
/* 08018f94 */ STR R6, [SP, 0x10] \n\
/* 08018f96 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08018f98 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08018f9a */ MOVS R3, 0xC4 @ Set R3 to 0xC4 \n\
/* 08018f9c */ BL func_0804d160 \n\
/* 08018fa0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08018fa2 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08018fa4 */ BL __udivsi3 \n\
/* 08018fa8 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08018faa */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08018fac */ LDR R4, [R1] \n\
/* 08018fae */ LDR R2, =D_0890bb68 \n\
/* 08018fb0 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08018fb2 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08018fb4 */ BL __umodsi3 \n\
/* 08018fb8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08018fba */ LSLS R2, R2, 0x18 \n\
/* 08018fbc */ ASRS R2, R2, 0x18 \n\
/* 08018fbe */ MOVS R0, 0x50 @ Set R0 to 0x50 \n\
/* 08018fc0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08018fc2 */ STR R0, [SP] \n\
/* 08018fc4 */ STR R6, [SP, 0x4] \n\
/* 08018fc6 */ STR R6, [SP, 0x8] \n\
/* 08018fc8 */ STR R6, [SP, 0xC] \n\
/* 08018fca */ STR R6, [SP, 0x10] \n\
/* 08018fcc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08018fce */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08018fd0 */ MOVS R3, 0x98 @ Set R3 to 0x98 \n\
/* 08018fd2 */ BL func_0804d160 \n\
/* 08018fd6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08018fd8 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08018fda */ BL __udivsi3 \n\
/* 08018fde */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08018fe0 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08018fe2 */ BEQ branch_0801900a \n\
/* 08018fe4 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08018fe6 */ LDR R4, [R1] \n\
/* 08018fe8 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08018fea */ BL __umodsi3 \n\
/* 08018fee */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08018ff0 */ LSLS R2, R2, 0x18 \n\
/* 08018ff2 */ ASRS R2, R2, 0x18 \n\
/* 08018ff4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08018ff6 */ STR R0, [SP] \n\
/* 08018ff8 */ STR R6, [SP, 0x4] \n\
/* 08018ffa */ STR R6, [SP, 0x8] \n\
/* 08018ffc */ STR R6, [SP, 0xC] \n\
/* 08018ffe */ STR R6, [SP, 0x10] \n\
/* 08019000 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08019002 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08019004 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 08019006 */ BL func_0804d160 \n\
 \n\
branch_0801900a: \n\
/* 0801900a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801900c */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0801900e */ BL __udivsi3 \n\
/* 08019012 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08019014 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08019016 */ BEQ branch_0801903e \n\
/* 08019018 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801901a */ LDR R4, [R1] \n\
/* 0801901c */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0801901e */ BL __umodsi3 \n\
/* 08019022 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08019024 */ LSLS R2, R2, 0x18 \n\
/* 08019026 */ ASRS R2, R2, 0x18 \n\
/* 08019028 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801902a */ STR R0, [SP] \n\
/* 0801902c */ STR R6, [SP, 0x4] \n\
/* 0801902e */ STR R6, [SP, 0x8] \n\
/* 08019030 */ STR R6, [SP, 0xC] \n\
/* 08019032 */ STR R6, [SP, 0x10] \n\
/* 08019034 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08019036 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08019038 */ MOVS R3, 0x28 @ Set R3 to 0x28 \n\
/* 0801903a */ BL func_0804d160 \n\
 \n\
branch_0801903e: \n\
/* 0801903e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08019040 */ LDR R0, [R1] \n\
/* 08019042 */ LDR R1, =D_0890bbf0 \n\
/* 08019044 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08019046 */ STR R2, [SP] \n\
/* 08019048 */ STR R6, [SP, 0x4] \n\
/* 0801904a */ STR R6, [SP, 0x8] \n\
/* 0801904c */ STR R6, [SP, 0xC] \n\
/* 0801904e */ STR R6, [SP, 0x10] \n\
/* 08019050 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019052 */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 08019054 */ BL func_0804d160 \n\
/* 08019058 */ LDR R0, =D_03001330 \n\
/* 0801905a */ LDR R1, [R0] \n\
/* 0801905c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801905e */ BNE branch_08019062 \n\
/* 08019060 */ LDR R1, =D_089d784c \n\
 \n\
branch_08019062: \n\
/* 08019062 */ LDR R0, =D_03001334 \n\
/* 08019064 */ LDR R6, [R0] \n\
/* 08019066 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08019068 */ BNE branch_0801906c \n\
/* 0801906a */ LDR R6, =D_089d7838 \n\
 \n\
branch_0801906c: \n\
/* 0801906c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801906e */ LDR R2, =D_030046a4 \n\
/* 08019070 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08019072 */ LDRH R0, [R1] \n\
/* 08019074 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 08019076 */ BCS branch_08019088 \n\
/* 08019078 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
 \n\
branch_0801907a: \n\
/* 0801907a */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0801907c */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0801907e */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 08019080 */ BHI branch_08019088 \n\
/* 08019082 */ LDRH R1, [R0] \n\
/* 08019084 */ CMP R7, R1 @ Check R7 - R1 \n\
/* 08019086 */ BCC branch_0801907a \n\
 \n\
branch_08019088: \n\
/* 08019088 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801908a */ LDR R0, [R2] \n\
/* 0801908c */ ADDS R0, 0x25 @ Add 0x25 to R0 \n\
/* 0801908e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08019090 */ STRB R5, [R0] \n\
/* 08019092 */ BL get_current_mem_id \n\
/* 08019096 */ LSLS R1, R5, 0x2 \n\
/* 08019098 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0801909a */ LDR R1, [R1] \n\
/* 0801909c */ STR R1, [SP] \n\
/* 0801909e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080190a0 */ STR R1, [SP, 0x4] \n\
/* 080190a2 */ STR R4, [SP, 0x8] \n\
/* 080190a4 */ ADDS R1, 0xFF @ Add 0xFF to R1 \n\
/* 080190a6 */ STR R1, [SP, 0xC] \n\
/* 080190a8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080190aa */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 080190ac */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080190ae */ BL text_printer_get_unformatted_line_anim \n\
/* 080190b2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080190b4 */ LDR R5, =D_03005380 \n\
/* 080190b6 */ LDR R0, [R5] \n\
/* 080190b8 */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 080190ba */ STR R2, [SP] \n\
/* 080190bc */ STR R4, [SP, 0x4] \n\
/* 080190be */ STR R4, [SP, 0x8] \n\
/* 080190c0 */ STR R4, [SP, 0xC] \n\
/* 080190c2 */ STR R4, [SP, 0x10] \n\
/* 080190c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080190c6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080190c8 */ BL func_0804d160 \n\
/* 080190cc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080190ce */ LDR R0, [R5] \n\
/* 080190d0 */ LSLS R1, R1, 0x10 \n\
/* 080190d2 */ ASRS R1, R1, 0x10 \n\
/* 080190d4 */ MOVS R2, 0xF @ Set R2 to 0xF \n\
/* 080190d6 */ BL func_0804d8c4 \n\
/* 080190da */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080190dc */ LDR R0, [R1] \n\
/* 080190de */ STR R4, [R0, 0x8] \n\
/* 080190e0 */ ADD SP, 0x14 \n\
/* 080190e2 */ POP {R3-R5} \n\
/* 080190e4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080190e6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080190e8 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080190ea */ POP {R4-R7} \n\
/* 080190ec */ POP {R0} \n\
/* 080190ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
