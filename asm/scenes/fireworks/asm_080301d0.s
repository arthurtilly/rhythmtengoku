asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080301d0 \n\
/* 080301d0 */ PUSH {R4, R5, LR} \n\
/* 080301d2 */ SUB SP, 0xC \n\
/* 080301d4 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080301d6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080301d8 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080301da */ STRB R3, [R4, 0x1F] \n\
/* 080301dc */ LDRB R0, [R4, 0x1C] \n\
/* 080301de */ CMP R0, 0x13 @ Compare R0 and 0x13 \n\
/* 080301e0 */ BNE branch_08030208 \n\
/* 080301e2 */ STRB R3, [R4, 0x1D] \n\
/* 080301e4 */ LDR R0, =D_03005380 \n\
/* 080301e6 */ LDR R0, [R0] \n\
/* 080301e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080301ea */ LDRSH R1, [R4, R2] \n\
/* 080301ec */ LDR R2, =D_088e90c4 \n\
/* 080301ee */ STR R3, [SP] \n\
/* 080301f0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080301f2 */ STR R3, [SP, 0x4] \n\
/* 080301f4 */ STR R5, [SP, 0x8] \n\
/* 080301f6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080301f8 */ BL func_0804d8f8 \n\
/* 080301fc */ B branch_0803027a \n\
\n\
.ltorg \n\
 \n\
branch_08030208: \n\
/* 08030208 */ LDR R0, =D_03005380 \n\
/* 0803020a */ LDR R0, [R0] \n\
/* 0803020c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803020e */ LDRSH R1, [R4, R2] \n\
/* 08030210 */ LDR R2, =D_088e8f34 \n\
/* 08030212 */ STR R3, [SP] \n\
/* 08030214 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08030216 */ STR R3, [SP, 0x4] \n\
/* 08030218 */ STR R5, [SP, 0x8] \n\
/* 0803021a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803021c */ BL func_0804d8f8 \n\
/* 08030220 */ LDRB R0, [R4, 0x1C] \n\
/* 08030222 */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 08030224 */ BHI branch_08030270 \n\
/* 08030226 */ LSLS R0, R0, 0x2 \n\
/* 08030228 */ LDR R1, =jtbl_0803023c \n\
/* 0803022a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803022c */ LDR R0, [R0] \n\
/* 0803022e */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803023c: \n\
.word jump_08030258 \n\
.word branch_08030270 \n\
.word jump_0803025c \n\
.word jump_08030260 \n\
.word jump_08030264 \n\
.word jump_08030268 \n\
.word jump_0803026c \n\
jump_08030258: \n\
/* 08030258 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0803025a */ B branch_08030272 \n\
jump_0803025c: \n\
/* 0803025c */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0803025e */ B branch_08030272 \n\
jump_08030260: \n\
/* 08030260 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 08030262 */ B branch_08030272 \n\
jump_08030264: \n\
/* 08030264 */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 08030266 */ B branch_08030272 \n\
jump_08030268: \n\
/* 08030268 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803026a */ B branch_08030272 \n\
jump_0803026c: \n\
/* 0803026c */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 0803026e */ B branch_08030272 \n\
 \n\
branch_08030270: \n\
/* 08030270 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
 \n\
branch_08030272: \n\
/* 08030272 */ LDR R1, [R4, 0x14] \n\
/* 08030274 */ LDR R2, [R4, 0x18] \n\
/* 08030276 */ BL func_0802f74c \n\
 \n\
branch_0803027a: \n\
/* 0803027a */ BL func_0800bc40 \n\
/* 0803027e */ ADD SP, 0xC \n\
/* 08030280 */ POP {R4, R5} \n\
/* 08030282 */ POP {R0} \n\
/* 08030284 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
