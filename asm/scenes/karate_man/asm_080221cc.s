asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080221cc \n\
/* 080221cc */ PUSH {R4, LR} \n\
/* 080221ce */ LDR R0, =D_030055d0 \n\
/* 080221d0 */ LDR R2, [R0] \n\
/* 080221d2 */ LDRB R0, [R2] \n\
/* 080221d4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080221d6 */ BEQ branch_0802220c \n\
/* 080221d8 */ LDRB R1, [R2, 0x18] \n\
/* 080221da */ LDR R4, [R2, 0x1C] \n\
/* 080221dc */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 080221de */ LDRB R3, [R0] \n\
/* 080221e0 */ LDRB R0, [R0] \n\
/* 080221e2 */ LSLS R0, R0, 0x18 \n\
/* 080221e4 */ ASRS R0, R0, 0x18 \n\
/* 080221e6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080221e8 */ BGE branch_080221ee \n\
/* 080221ea */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080221ec */ LDRB R3, [R4] \n\
 \n\
branch_080221ee: \n\
/* 080221ee */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 080221f0 */ STRB R0, [R2, 0x18] \n\
/* 080221f2 */ LSLS R0, R3, 0x18 \n\
/* 080221f4 */ ASRS R0, R0, 0x13 \n\
/* 080221f6 */ LDR R1, =D_03004b64 \n\
/* 080221f8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080221fa */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 080221fc */ ADDS R1, 0x80 @ Add 0x80 to R1 \n\
 \n\
branch_080221fe: \n\
/* 080221fe */ LDRH R0, [R2] \n\
/* 08022200 */ STRH R0, [R1] \n\
/* 08022202 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08022204 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08022206 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08022208 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 0802220a */ BLS branch_080221fe \n\
 \n\
branch_0802220c: \n\
/* 0802220c */ POP {R4} \n\
/* 0802220e */ POP {R0} \n\
/* 08022210 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
