asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014118 \n\
/* 08014118 */ PUSH {R4, R5, LR} \n\
/* 0801411a */ LDR R0, =D_030046a4 \n\
/* 0801411c */ LDR R1, [R0] \n\
/* 0801411e */ LDRB R0, [R1, 0x8] \n\
/* 08014120 */ LSLS R0, R0, 0x1F \n\
/* 08014122 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014124 */ BNE branch_0801419a \n\
/* 08014126 */ LDR R0, =D_03004b10 \n\
/* 08014128 */ LDRH R4, [R0, 0x18] \n\
/* 0801412a */ LDRH R5, [R0, 0x1A] \n\
/* 0801412c */ LDRB R0, [R1] \n\
/* 0801412e */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08014130 */ BEQ branch_08014150 \n\
/* 08014132 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08014134 */ BGT branch_08014144 \n\
/* 08014136 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08014138 */ BEQ branch_0801414a \n\
/* 0801413a */ B branch_0801415a \n\
\n\
.ltorg \n\
 \n\
branch_08014144: \n\
/* 08014144 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08014146 */ BEQ branch_08014156 \n\
/* 08014148 */ B branch_0801415a \n\
 \n\
branch_0801414a: \n\
/* 0801414a */ BL func_08014978 \n\
/* 0801414e */ B branch_0801415a \n\
 \n\
branch_08014150: \n\
/* 08014150 */ BL func_08013d20 \n\
/* 08014154 */ B branch_0801415a \n\
 \n\
branch_08014156: \n\
/* 08014156 */ BL func_08012e24 \n\
 \n\
branch_0801415a: \n\
/* 0801415a */ BL func_080134ec \n\
/* 0801415e */ BL func_0801593c \n\
/* 08014162 */ BL func_08015298 \n\
/* 08014166 */ BL func_08013a38 \n\
/* 0801416a */ BL func_080140ec \n\
/* 0801416e */ LDR R2, =D_03004b10 \n\
/* 08014170 */ LDRH R1, [R2, 0x18] \n\
/* 08014172 */ LSLS R0, R4, 0x10 \n\
/* 08014174 */ ASRS R0, R0, 0x10 \n\
/* 08014176 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08014178 */ LDRH R2, [R2, 0x1A] \n\
/* 0801417a */ LSLS R1, R5, 0x10 \n\
/* 0801417c */ ASRS R1, R1, 0x10 \n\
/* 0801417e */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
/* 08014180 */ LSLS R0, R0, 0x10 \n\
/* 08014182 */ ASRS R0, R0, 0x10 \n\
/* 08014184 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08014186 */ LSLS R1, R1, 0x10 \n\
/* 08014188 */ ASRS R1, R1, 0x10 \n\
/* 0801418a */ BL func_080162bc \n\
/* 0801418e */ BL func_0801626c \n\
/* 08014192 */ BL func_08015660 \n\
/* 08014196 */ BL func_08014db0 \n\
 \n\
branch_0801419a: \n\
/* 0801419a */ POP {R4, R5} \n\
/* 0801419c */ POP {R0} \n\
/* 0801419e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
