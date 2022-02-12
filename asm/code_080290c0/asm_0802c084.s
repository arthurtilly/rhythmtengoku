asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802c084 \n\
/* 0802c084 */ PUSH {R4, LR} \n\
/* 0802c086 */ LDR R4, =D_030055d0 \n\
/* 0802c088 */ LDR R0, [R4] \n\
/* 0802c08a */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 0802c08c */ LSLS R1, R1, 0x2 \n\
/* 0802c08e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802c090 */ LDR R0, [R0] \n\
/* 0802c092 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802c094 */ BNE branch_0802c0b8 \n\
/* 0802c096 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802c098 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802c09a */ BL func_0802d918 \n\
/* 0802c09e */ BL func_0802d2bc \n\
/* 0802c0a2 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0802c0a4 */ BL func_0800c3a4 \n\
/* 0802c0a8 */ LDR R1, [R4] \n\
/* 0802c0aa */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0802c0ac */ LSLS R2, R2, 0x2 \n\
/* 0802c0ae */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802c0b0 */ STR R0, [R1] \n\
/* 0802c0b2 */ LDR R0, =s_block_hitMidiInfo \n\
/* 0802c0b4 */ BL func_08002634 \n\
 \n\
branch_0802c0b8: \n\
/* 0802c0b8 */ POP {R4} \n\
/* 0802c0ba */ POP {R0} \n\
/* 0802c0bc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
