asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800eebc \n\
/* 0800eebc */ PUSH {R4-R7, LR} \n\
/* 0800eebe */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800eec0 */ PUSH {R7} \n\
/* 0800eec2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800eec4 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800eec6 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0800eec8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800eeca */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800eecc */ LDRB R0, [R5] \n\
/* 0800eece */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800eed0 */ BNE branch_0800eed4 \n\
/* 0800eed2 */ B branch_0800f062 \n\
 \n\
branch_0800eed4: \n\
/* 0800eed4 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_0800eed6: \n\
/* 0800eed6 */ LSLS R0, R0, 0x18 \n\
/* 0800eed8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800eeda */ BGE branch_0800eede \n\
/* 0800eedc */ B branch_0800f032 \n\
 \n\
branch_0800eede: \n\
/* 0800eede */ LDRB R1, [R5] \n\
/* 0800eee0 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800eee2 */ SUBS R0, 0x41 @ Subtract 0x41 from R0 \n\
/* 0800eee4 */ CMP R0, 0x19 @ Compare R0 and 0x19 \n\
/* 0800eee6 */ BHI branch_0800ef1c \n\
/* 0800eee8 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800eeea */ BEQ branch_0800ef10 \n\
/* 0800eeec */ LDR R2, =D_089ccc94 \n\
 \n\
branch_0800eeee: \n\
/* 0800eeee */ LSLS R1, R0, 0x1 \n\
/* 0800eef0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800eef2 */ LDRB R0, [R1] \n\
/* 0800eef4 */ STRB R0, [R4] \n\
/* 0800eef6 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800eef8 */ LDRB R0, [R1, 0x1] \n\
/* 0800eefa */ STRB R0, [R4] \n\
/* 0800eefc */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800eefe */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800ef00 */ LDRB R0, [R5] \n\
/* 0800ef02 */ SUBS R0, 0x41 @ Subtract 0x41 from R0 \n\
/* 0800ef04 */ CMP R0, 0x19 @ Compare R0 and 0x19 \n\
/* 0800ef06 */ BLS branch_0800eeee \n\
/* 0800ef08 */ B branch_0800f05a \n\
\n\
.ltorg \n\
 \n\
branch_0800ef10: \n\
/* 0800ef10 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800ef12 */ LDRB R0, [R5] \n\
/* 0800ef14 */ SUBS R0, 0x41 @ Subtract 0x41 from R0 \n\
/* 0800ef16 */ CMP R0, 0x19 @ Compare R0 and 0x19 \n\
/* 0800ef18 */ BLS branch_0800ef10 \n\
/* 0800ef1a */ B branch_0800f05a \n\
 \n\
branch_0800ef1c: \n\
/* 0800ef1c */ CMP R1, 0x2D @ Compare R1 and 0x2D \n\
/* 0800ef1e */ BEQ branch_0800f00c \n\
/* 0800ef20 */ CMP R1, 0x2D @ Compare R1 and 0x2D \n\
/* 0800ef22 */ BGT branch_0800ef3e \n\
/* 0800ef24 */ CMP R1, 0x24 @ Compare R1 and 0x24 \n\
/* 0800ef26 */ BEQ branch_0800efb8 \n\
/* 0800ef28 */ CMP R1, 0x24 @ Compare R1 and 0x24 \n\
/* 0800ef2a */ BGT branch_0800ef38 \n\
/* 0800ef2c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800ef2e */ BNE branch_0800ef32 \n\
/* 0800ef30 */ B branch_0800f05a \n\
 \n\
branch_0800ef32: \n\
/* 0800ef32 */ CMP R1, 0x21 @ Compare R1 and 0x21 \n\
/* 0800ef34 */ BEQ branch_0800efdc \n\
/* 0800ef36 */ B branch_0800f024 \n\
 \n\
branch_0800ef38: \n\
/* 0800ef38 */ CMP R1, 0x2C @ Compare R1 and 0x2C \n\
/* 0800ef3a */ BEQ branch_0800effc \n\
/* 0800ef3c */ B branch_0800f024 \n\
 \n\
branch_0800ef3e: \n\
/* 0800ef3e */ CMP R1, 0x40 @ Compare R1 and 0x40 \n\
/* 0800ef40 */ BEQ branch_0800ef52 \n\
/* 0800ef42 */ CMP R1, 0x40 @ Compare R1 and 0x40 \n\
/* 0800ef44 */ BGT branch_0800ef4c \n\
/* 0800ef46 */ CMP R1, 0x3F @ Compare R1 and 0x3F \n\
/* 0800ef48 */ BEQ branch_0800efec \n\
/* 0800ef4a */ B branch_0800f024 \n\
 \n\
branch_0800ef4c: \n\
/* 0800ef4c */ CMP R1, 0x5F @ Compare R1 and 0x5F \n\
/* 0800ef4e */ BEQ branch_0800efca \n\
/* 0800ef50 */ B branch_0800f024 \n\
 \n\
branch_0800ef52: \n\
/* 0800ef52 */ LDRB R0, [R5, 0x1] \n\
/* 0800ef54 */ CMP R0, 0x62 @ Compare R0 and 0x62 \n\
/* 0800ef56 */ BEQ branch_0800efa0 \n\
/* 0800ef58 */ CMP R0, 0x62 @ Compare R0 and 0x62 \n\
/* 0800ef5a */ BGT branch_0800ef84 \n\
/* 0800ef5c */ CMP R0, 0x39 @ Compare R0 and 0x39 \n\
/* 0800ef5e */ BGT branch_0800efc6 \n\
/* 0800ef60 */ CMP R0, 0x30 @ Compare R0 and 0x30 \n\
/* 0800ef62 */ BLT branch_0800efc6 \n\
/* 0800ef64 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800ef66 */ BEQ branch_0800efc6 \n\
/* 0800ef68 */ STRB R6, [R4] \n\
/* 0800ef6a */ LDR R1, =D_030053c0 \n\
/* 0800ef6c */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 0800ef6e */ LSLS R0, R0, 0x2 \n\
/* 0800ef70 */ MOVS R2, 0xCC @ Set R2 to 0xCC \n\
/* 0800ef72 */ LSLS R2, R2, 0x1 \n\
/* 0800ef74 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800ef76 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800ef78 */ LDR R1, [R0] \n\
/* 0800ef7a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800ef7c */ BEQ branch_0800efbe \n\
/* 0800ef7e */ B branch_0800efb0 \n\
\n\
.ltorg \n\
 \n\
branch_0800ef84: \n\
/* 0800ef84 */ CMP R0, 0x6D @ Compare R0 and 0x6D \n\
/* 0800ef86 */ BEQ branch_0800ef98 \n\
/* 0800ef88 */ CMP R0, 0x6D @ Compare R0 and 0x6D \n\
/* 0800ef8a */ BGT branch_0800ef92 \n\
/* 0800ef8c */ CMP R0, 0x66 @ Compare R0 and 0x66 \n\
/* 0800ef8e */ BEQ branch_0800efa4 \n\
/* 0800ef90 */ B branch_0800efc6 \n\
 \n\
branch_0800ef92: \n\
/* 0800ef92 */ CMP R0, 0x6E @ Compare R0 and 0x6E \n\
/* 0800ef94 */ BEQ branch_0800efb8 \n\
/* 0800ef96 */ B branch_0800efc6 \n\
 \n\
branch_0800ef98: \n\
/* 0800ef98 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800ef9a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800ef9c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ef9e */ BNE branch_0800efc6 \n\
 \n\
branch_0800efa0: \n\
/* 0800efa0 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0800efa2 */ B branch_0800efc6 \n\
 \n\
branch_0800efa4: \n\
/* 0800efa4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800efa6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800efa8 */ BEQ branch_0800efac \n\
/* 0800efaa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0800efac: \n\
/* 0800efac */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800efae */ B branch_0800efc6 \n\
 \n\
branch_0800efb0: \n\
/* 0800efb0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800efb2 */ BL func_080081a8 \n\
/* 0800efb6 */ B branch_0800efbe \n\
 \n\
branch_0800efb8: \n\
/* 0800efb8 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800efba */ BEQ branch_0800efc6 \n\
/* 0800efbc */ STRB R6, [R4] \n\
 \n\
branch_0800efbe: \n\
/* 0800efbe */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800efc0 */ BL strlen \n\
/* 0800efc4 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
 \n\
branch_0800efc6: \n\
/* 0800efc6 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 0800efc8 */ B branch_0800f05a \n\
 \n\
branch_0800efca: \n\
/* 0800efca */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800efcc */ BEQ branch_0800f02e \n\
/* 0800efce */ STRB R6, [R4] \n\
/* 0800efd0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800efd2 */ LDR R1, =D_0804f370 \n\
/* 0800efd4 */ B branch_0800f016 \n\
\n\
.ltorg \n\
 \n\
branch_0800efdc: \n\
/* 0800efdc */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800efde */ BEQ branch_0800f02e \n\
/* 0800efe0 */ STRB R6, [R4] \n\
/* 0800efe2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800efe4 */ LDR R1, =D_0804f374 \n\
/* 0800efe6 */ B branch_0800f016 \n\
\n\
.ltorg \n\
 \n\
branch_0800efec: \n\
/* 0800efec */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800efee */ BEQ branch_0800f02e \n\
/* 0800eff0 */ STRB R6, [R4] \n\
/* 0800eff2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800eff4 */ LDR R1, =D_0804f378 \n\
/* 0800eff6 */ B branch_0800f016 \n\
\n\
.ltorg \n\
 \n\
branch_0800effc: \n\
/* 0800effc */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800effe */ BEQ branch_0800f02e \n\
/* 0800f000 */ STRB R6, [R4] \n\
/* 0800f002 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800f004 */ LDR R1, =D_0804f37c \n\
/* 0800f006 */ B branch_0800f016 \n\
\n\
.ltorg \n\
 \n\
branch_0800f00c: \n\
/* 0800f00c */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800f00e */ BEQ branch_0800f02e \n\
/* 0800f010 */ STRB R6, [R4] \n\
/* 0800f012 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800f014 */ LDR R1, =D_0804f380 \n\
 \n\
branch_0800f016: \n\
/* 0800f016 */ BL func_080081a8 \n\
/* 0800f01a */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0800f01c */ B branch_0800f02e \n\
\n\
.ltorg \n\
 \n\
branch_0800f024: \n\
/* 0800f024 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800f026 */ BEQ branch_0800f02e \n\
/* 0800f028 */ LDRB R0, [R5] \n\
/* 0800f02a */ STRB R0, [R4] \n\
/* 0800f02c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
 \n\
branch_0800f02e: \n\
/* 0800f02e */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800f030 */ B branch_0800f05a \n\
 \n\
branch_0800f032: \n\
/* 0800f032 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0800f034 */ BEQ branch_0800f050 \n\
 \n\
branch_0800f036: \n\
/* 0800f036 */ LDRB R0, [R5] \n\
/* 0800f038 */ STRB R0, [R4] \n\
/* 0800f03a */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800f03c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800f03e */ LDRB R0, [R5] \n\
/* 0800f040 */ STRB R0, [R4] \n\
/* 0800f042 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800f044 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800f046 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f048 */ LDRSB R0, [R5, R0] \n\
/* 0800f04a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f04c */ BLT branch_0800f036 \n\
/* 0800f04e */ B branch_0800f05a \n\
 \n\
branch_0800f050: \n\
/* 0800f050 */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 0800f052 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f054 */ LDRSB R0, [R5, R0] \n\
/* 0800f056 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f058 */ BLT branch_0800f050 \n\
 \n\
branch_0800f05a: \n\
/* 0800f05a */ LDRB R0, [R5] \n\
/* 0800f05c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f05e */ BEQ branch_0800f062 \n\
/* 0800f060 */ B branch_0800eed6 \n\
 \n\
branch_0800f062: \n\
/* 0800f062 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800f064 */ STRB R0, [R4] \n\
/* 0800f066 */ POP {R3} \n\
/* 0800f068 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800f06a */ POP {R4-R7} \n\
/* 0800f06c */ POP {R0} \n\
/* 0800f06e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
