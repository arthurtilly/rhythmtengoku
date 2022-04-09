asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a108 \n\
/* 0800a108 */ PUSH {R4, R5, LR} \n\
/* 0800a10a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800a10c */ LDR R2, [R1] \n\
/* 0800a10e */ LDRB R3, [R2] \n\
/* 0800a110 */ ADDS R4, R2, 0x1 @ Set R4 to R2 + 0x1 \n\
/* 0800a112 */ STR R4, [R1] \n\
/* 0800a114 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800a116 */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 0800a118 */ LSLS R0, R0, 0x18 \n\
/* 0800a11a */ LSRS R0, R0, 0x18 \n\
/* 0800a11c */ CMP R0, 0x5E @ Compare R0 and 0x5E \n\
/* 0800a11e */ BHI branch_0800a134 \n\
/* 0800a120 */ LDR R2, =D_08938194 \n\
/* 0800a122 */ LSLS R1, R0, 0x1 \n\
/* 0800a124 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0800a126 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800a128 */ LDRB R5, [R0] \n\
/* 0800a12a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800a12c */ LDRB R3, [R1] \n\
/* 0800a12e */ B branch_0800a13a \n\
\n\
.ltorg \n\
 \n\
branch_0800a134: \n\
/* 0800a134 */ LDRB R5, [R2, 0x1] \n\
/* 0800a136 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 0800a138 */ STR R0, [R1] \n\
 \n\
branch_0800a13a: \n\
/* 0800a13a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800a13c */ ADDS R0, 0x7F @ Add 0x7F to R0 \n\
/* 0800a13e */ LSLS R0, R0, 0x18 \n\
/* 0800a140 */ LSRS R0, R0, 0x18 \n\
/* 0800a142 */ CMP R0, 0x1E @ Compare R0 and 0x1E \n\
/* 0800a144 */ BHI branch_0800a154 \n\
/* 0800a146 */ LDR R1, =D_08938140 \n\
/* 0800a148 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800a14a */ SUBS R0, 0x81 @ Subtract 0x81 from R0 \n\
/* 0800a14c */ B branch_0800a166 \n\
\n\
.ltorg \n\
 \n\
branch_0800a154: \n\
/* 0800a154 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800a156 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0800a158 */ LSLS R0, R0, 0x18 \n\
/* 0800a15a */ LSRS R0, R0, 0x18 \n\
/* 0800a15c */ CMP R0, 0xA @ Compare R0 and 0xA \n\
/* 0800a15e */ BHI branch_0800a174 \n\
/* 0800a160 */ LDR R1, =D_0893817e \n\
/* 0800a162 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800a164 */ SUBS R0, 0xE0 @ Subtract 0xE0 from R0 \n\
 \n\
branch_0800a166: \n\
/* 0800a166 */ LSLS R0, R0, 0x1 \n\
/* 0800a168 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800a16a */ LDRH R1, [R0] \n\
/* 0800a16c */ B branch_0800a178 \n\
\n\
.ltorg \n\
 \n\
branch_0800a174: \n\
/* 0800a174 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800a176 */ NEGS R1, R1 @ Set R1 to -R1 \n\
 \n\
branch_0800a178: \n\
/* 0800a178 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800a17a */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800a17c */ CMP R1, R2 @ Check R1 - R2 \n\
/* 0800a17e */ BEQ branch_0800a1a2 \n\
/* 0800a180 */ CMP R5, 0x7E @ Compare R5 and 0x7E \n\
/* 0800a182 */ BHI branch_0800a18c \n\
/* 0800a184 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800a186 */ SUBS R0, 0x40 @ Subtract 0x40 from R0 \n\
/* 0800a188 */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0800a18a */ B branch_0800a1a2 \n\
 \n\
branch_0800a18c: \n\
/* 0800a18c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800a18e */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 0800a190 */ LSLS R0, R0, 0x18 \n\
/* 0800a192 */ LSRS R0, R0, 0x18 \n\
/* 0800a194 */ CMP R0, 0x7C @ Compare R0 and 0x7C \n\
/* 0800a196 */ BHI branch_0800a1a0 \n\
/* 0800a198 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800a19a */ SUBS R0, 0x41 @ Subtract 0x41 from R0 \n\
/* 0800a19c */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 0800a19e */ B branch_0800a1a2 \n\
 \n\
branch_0800a1a0: \n\
/* 0800a1a0 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
 \n\
branch_0800a1a2: \n\
/* 0800a1a2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800a1a4 */ POP {R4, R5} \n\
/* 0800a1a6 */ POP {R1} \n\
/* 0800a1a8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
