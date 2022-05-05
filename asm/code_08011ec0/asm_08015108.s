asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015108 \n\
/* 08015108 */ PUSH {R4-R7, LR} \n\
/* 0801510a */ LDR R7, =(D_03004b10 + 0x10) \n\
/* 0801510c */ LDR R0, =D_030046a4 \n\
/* 0801510e */ LDR R1, [R0] \n\
/* 08015110 */ ADDS R1, 0x41 @ Add 0x41 to R1 \n\
/* 08015112 */ LDRB R1, [R1] \n\
/* 08015114 */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 08015116 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08015118 */ CMP R1, 0x4 @ Compare R1 and 0x4 \n\
/* 0801511a */ BLS branch_0801511e \n\
/* 0801511c */ B branch_0801522a \n\
 \n\
branch_0801511e: \n\
/* 0801511e */ LSLS R0, R1, 0x2 \n\
/* 08015120 */ LDR R1, =jtbl_08015134 \n\
/* 08015122 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08015124 */ LDR R0, [R0] \n\
/* 08015126 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08015134: \n\
.word jump_08015148 \n\
.word jump_08015160 \n\
.word jump_08015170 \n\
.word jump_0801518c \n\
.word jump_0801519c \n\
\n\
jump_08015148: \n\
/* 08015148 */ LDR R1, [R5] \n\
/* 0801514a */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 0801514c */ LDRB R0, [R1] \n\
/* 0801514e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08015150 */ STRB R0, [R1] \n\
/* 08015152 */ LSLS R0, R0, 0x18 \n\
/* 08015154 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015156 */ BNE branch_0801522a \n\
/* 08015158 */ LDR R0, [R5] \n\
/* 0801515a */ ADDS R0, 0x41 @ Add 0x41 to R0 \n\
/* 0801515c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801515e */ B branch_08015228 \n\
\n\
jump_08015160: \n\
/* 08015160 */ LDR R0, [R5] \n\
/* 08015162 */ LDR R0, [R0, 0x44] \n\
/* 08015164 */ BL func_08014f98 \n\
/* 08015168 */ LDR R0, [R5] \n\
/* 0801516a */ ADDS R0, 0x41 @ Add 0x41 to R0 \n\
/* 0801516c */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801516e */ B branch_08015228 \n\
\n\
jump_08015170: \n\
/* 08015170 */ LDR R1, [R5] \n\
/* 08015172 */ LDR R0, [R1, 0x44] \n\
/* 08015174 */ LDRB R0, [R0, 0xE] \n\
/* 08015176 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08015178 */ BEQ branch_08015184 \n\
/* 0801517a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801517c */ ADDS R0, 0x3F @ Add 0x3F to R0 \n\
/* 0801517e */ LDRB R0, [R0] \n\
/* 08015180 */ BL func_08015044 \n\
 \n\
branch_08015184: \n\
/* 08015184 */ LDR R0, [R5] \n\
/* 08015186 */ ADDS R0, 0x41 @ Add 0x41 to R0 \n\
/* 08015188 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801518a */ B branch_08015228 \n\
\n\
jump_0801518c: \n\
/* 0801518c */ LDR R0, [R5] \n\
/* 0801518e */ LDR R0, [R0, 0x44] \n\
/* 08015190 */ BL func_08015020 \n\
/* 08015194 */ LDR R0, [R5] \n\
/* 08015196 */ ADDS R0, 0x41 @ Add 0x41 to R0 \n\
/* 08015198 */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 0801519a */ B branch_08015228 \n\
\n\
jump_0801519c: \n\
/* 0801519c */ LDR R0, [R5] \n\
/* 0801519e */ LDR R0, [R0, 0x38] \n\
/* 080151a0 */ BL func_0800ac58 \n\
/* 080151a4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080151a6 */ BNE branch_0801522a \n\
/* 080151a8 */ LDR R6, =D_03005380 \n\
/* 080151aa */ LDR R0, [R6] \n\
/* 080151ac */ LDR R1, [R5] \n\
/* 080151ae */ MOVS R2, 0x34 @ Set R2 to 0x34 \n\
/* 080151b0 */ LDRSH R1, [R1, R2] \n\
/* 080151b2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080151b4 */ BL func_0804d770 \n\
/* 080151b8 */ LDR R0, [R6] \n\
/* 080151ba */ LDR R1, [R5] \n\
/* 080151bc */ MOVS R2, 0x34 @ Set R2 to 0x34 \n\
/* 080151be */ LDRSH R1, [R1, R2] \n\
/* 080151c0 */ ADDS R4, R7, 0x2 @ Set R4 to R7 + 0x2 \n\
/* 080151c2 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 080151c4 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080151c6 */ BL func_0804db44 \n\
/* 080151ca */ LDR R0, [R6] \n\
/* 080151cc */ LDR R1, [R5] \n\
/* 080151ce */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 080151d0 */ LDRSH R1, [R1, R2] \n\
/* 080151d2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080151d4 */ BL func_0804d770 \n\
/* 080151d8 */ LDR R0, [R6] \n\
/* 080151da */ LDR R1, [R5] \n\
/* 080151dc */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 080151de */ LDRSH R1, [R1, R2] \n\
/* 080151e0 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 080151e2 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080151e4 */ BL func_0804db44 \n\
/* 080151e8 */ LDR R1, [R5] \n\
/* 080151ea */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080151ec */ LDRSB R0, [R1, R0] \n\
/* 080151ee */ LDRB R1, [R1, 0x11] \n\
/* 080151f0 */ LSLS R1, R1, 0x18 \n\
/* 080151f2 */ ASRS R1, R1, 0x18 \n\
/* 080151f4 */ BL func_080130b0 \n\
/* 080151f8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080151fa */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080151fc */ BLT branch_08015220 \n\
/* 080151fe */ LDR R0, =D_030046a8 \n\
/* 08015200 */ LDR R0, [R0] \n\
/* 08015202 */ LDR R2, =0x246 \n\
/* 08015204 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08015206 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08015208 */ LDRB R0, [R0] \n\
/* 0801520a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801520c */ BEQ branch_08015220 \n\
/* 0801520e */ LDR R0, [R6] \n\
/* 08015210 */ LDR R1, [R5] \n\
/* 08015212 */ LDR R2, =0x4fa \n\
/* 08015214 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08015216 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015218 */ LDRSH R1, [R1, R2] \n\
/* 0801521a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801521c */ BL func_0804d770 \n\
 \n\
branch_08015220: \n\
/* 08015220 */ LDR R0, =D_030046a4 \n\
/* 08015222 */ LDR R0, [R0] \n\
/* 08015224 */ ADDS R0, 0x41 @ Add 0x41 to R0 \n\
/* 08015226 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
 \n\
branch_08015228: \n\
/* 08015228 */ STRB R1, [R0] \n\
 \n\
branch_0801522a: \n\
/* 0801522a */ POP {R4-R7} \n\
/* 0801522c */ POP {R0} \n\
/* 0801522e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
