asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015988 \n\
/* 08015988 */ PUSH {R4, R5, LR} \n\
/* 0801598a */ SUB SP, 0x4 \n\
/* 0801598c */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801598e */ LDRB R0, [R3, 0xF] \n\
/* 08015990 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08015992 */ STRB R0, [R3, 0xF] \n\
/* 08015994 */ LSLS R0, R0, 0x18 \n\
/* 08015996 */ LSRS R5, R0, 0x18 \n\
/* 08015998 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801599a */ BNE branch_080159ea \n\
/* 0801599c */ LDRB R0, [R3, 0xE] \n\
/* 0801599e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080159a0 */ STRB R0, [R3, 0xE] \n\
/* 080159a2 */ LDRB R0, [R3, 0xE] \n\
/* 080159a4 */ LDR R2, [R3, 0x8] \n\
/* 080159a6 */ LSLS R0, R0, 0x1 \n\
/* 080159a8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080159aa */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080159ac */ LDRSB R1, [R0, R1] \n\
/* 080159ae */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080159b0 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080159b2 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080159b4 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080159b6 */ BNE branch_080159bc \n\
/* 080159b8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080159ba */ B branch_080159ec \n\
 \n\
branch_080159bc: \n\
/* 080159bc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080159be */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080159c0 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080159c2 */ BNE branch_080159ca \n\
/* 080159c4 */ STRB R5, [R3, 0xE] \n\
/* 080159c6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080159c8 */ LDRSB R1, [R4, R1] \n\
 \n\
branch_080159ca: \n\
/* 080159ca */ LDRB R0, [R3, 0xE] \n\
/* 080159cc */ LSLS R0, R0, 0x1 \n\
/* 080159ce */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080159d0 */ LDRB R0, [R0, 0x1] \n\
/* 080159d2 */ STRB R0, [R3, 0xF] \n\
/* 080159d4 */ LDRH R2, [R3, 0xC] \n\
/* 080159d6 */ MULS R1, R2 @ Multiply R1 by R2 \n\
/* 080159d8 */ LDR R0, [R3] \n\
/* 080159da */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080159dc */ LDR R1, [R3, 0x4] \n\
/* 080159de */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 080159e0 */ LSLS R3, R3, 0x2 \n\
/* 080159e2 */ STR R3, [SP] \n\
/* 080159e4 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080159e6 */ BL func_0800186c \n\
 \n\
branch_080159ea: \n\
/* 080159ea */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080159ec: \n\
/* 080159ec */ ADD SP, 0x4 \n\
/* 080159ee */ POP {R4, R5} \n\
/* 080159f0 */ POP {R1} \n\
/* 080159f2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
