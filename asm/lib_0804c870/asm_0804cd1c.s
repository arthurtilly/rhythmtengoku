asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804cd1c \n\
/* 0804cd1c */ PUSH {R4-R7, LR} \n\
/* 0804cd1e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0804cd20 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0804cd22 */ PUSH {R6, R7} \n\
/* 0804cd24 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804cd26 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 0804cd28 */ LSLS R1, R1, 0x10 \n\
/* 0804cd2a */ LSLS R2, R2, 0x18 \n\
/* 0804cd2c */ LSRS R5, R2, 0x18 \n\
/* 0804cd2e */ LDR R2, =D_03004428 \n\
/* 0804cd30 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804cd32 */ STRB R0, [R2] \n\
/* 0804cd34 */ LSRS R0, R1, 0x10 \n\
/* 0804cd36 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804cd38 */ ASRS R4, R1, 0x10 \n\
/* 0804cd3a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804cd3c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804cd3e */ BL func_0804cc68 \n\
/* 0804cd42 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804cd44 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804cd46 */ BEQ branch_0804cd4a \n\
/* 0804cd48 */ B branch_0804ceae \n\
 \n\
branch_0804cd4a: \n\
/* 0804cd4a */ LSLS R0, R4, 0x4 \n\
/* 0804cd4c */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804cd4e */ LSLS R0, R0, 0x2 \n\
/* 0804cd50 */ LDR R1, [R7, 0x8] \n\
/* 0804cd52 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 0804cd54 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804cd56 */ BEQ branch_0804cd5a \n\
/* 0804cd58 */ STRH R2, [R4, 0x1C] \n\
 \n\
branch_0804cd5a: \n\
/* 0804cd5a */ LDRH R0, [R4] \n\
/* 0804cd5c */ LSRS R0, R0, 0x5 \n\
/* 0804cd5e */ LSLS R0, R0, 0x18 \n\
/* 0804cd60 */ LDRB R3, [R4, 0xE] \n\
/* 0804cd62 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 0804cd64 */ LDRSB R1, [R4, R1] \n\
/* 0804cd66 */ LSRS R6, R0, 0x18 \n\
/* 0804cd68 */ ASRS R2, R0, 0x18 \n\
/* 0804cd6a */ CMP R1, R2 @ Check R1 - R2 \n\
/* 0804cd6c */ BLT branch_0804cd74 \n\
/* 0804cd6e */ SUBS R0, R2, 0x1 @ Set R0 to R2 - 0x1 \n\
/* 0804cd70 */ LSLS R0, R0, 0x18 \n\
/* 0804cd72 */ LSRS R3, R0, 0x18 \n\
 \n\
branch_0804cd74: \n\
/* 0804cd74 */ LSLS R0, R3, 0x18 \n\
/* 0804cd76 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804cd78 */ BGE branch_0804cd7c \n\
/* 0804cd7a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0804cd7c: \n\
/* 0804cd7c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804cd7e */ LSLS R0, R5, 0x18 \n\
/* 0804cd80 */ ASRS R0, R0, 0x18 \n\
/* 0804cd82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804cd84 */ BLT branch_0804cd8a \n\
/* 0804cd86 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0804cd88 */ BLT branch_0804cd8c \n\
 \n\
branch_0804cd8a: \n\
/* 0804cd8a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_0804cd8c: \n\
/* 0804cd8c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804cd8e */ BEQ branch_0804ce54 \n\
/* 0804cd90 */ LDRB R1, [R4] \n\
/* 0804cd92 */ LSLS R0, R1, 0x1B \n\
/* 0804cd94 */ LSRS R0, R0, 0x1C \n\
/* 0804cd96 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0804cd98 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0804cd9a */ BHI branch_0804ce58 \n\
/* 0804cd9c */ LSLS R0, R0, 0x2 \n\
/* 0804cd9e */ LDR R1, =jtbl_0804cdb0 \n\
/* 0804cda0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804cda2 */ LDR R0, [R0] \n\
/* 0804cda4 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0804cdb0: \n\
.word jump_0804cdc4 \n\
.word jump_0804ce08 \n\
.word jump_0804cdc8 \n\
.word jump_0804ce42 \n\
.word jump_0804cdd8 \n\
jump_0804cdc4: \n\
/* 0804cdc4 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0804cdc6 */ B branch_0804ce5e \n\
jump_0804cdc8: \n\
/* 0804cdc8 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0804cdca */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804cdcc */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804cdce */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804cdd0 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804cdd2 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804cdd4 */ STRB R0, [R4] \n\
/* 0804cdd6 */ B branch_0804ce58 \n\
jump_0804cdd8: \n\
/* 0804cdd8 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0804cdda */ LDR R3, [R4, 0x20] \n\
/* 0804cddc */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804cdde */ BEQ branch_0804ce5e \n\
/* 0804cde0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804cde2 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0804cde4 */ LSLS R0, R5, 0x18 \n\
/* 0804cde6 */ LDR R1, [R4, 0x8] \n\
/* 0804cde8 */ ASRS R0, R0, 0x15 \n\
/* 0804cdea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804cdec */ LDRB R0, [R0, 0x4] \n\
/* 0804cdee */ LSLS R0, R0, 0x8 \n\
/* 0804cdf0 */ LDRH R1, [R4, 0x1C] \n\
/* 0804cdf2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804cdf4 */ STRH R0, [R4, 0x1C] \n\
/* 0804cdf6 */ STRB R5, [R4, 0xC] \n\
/* 0804cdf8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804cdfa */ LSLS R1, R0, 0x10 \n\
/* 0804cdfc */ ASRS R1, R1, 0x10 \n\
/* 0804cdfe */ LDR R2, [R4, 0x24] \n\
/* 0804ce00 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804ce02 */ BL _call_via_r3 \n\
/* 0804ce06 */ B branch_0804ce58 \n\
jump_0804ce08: \n\
/* 0804ce08 */ LSLS R0, R5, 0x18 \n\
/* 0804ce0a */ ASRS R1, R0, 0x18 \n\
/* 0804ce0c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804ce0e */ BGT branch_0804ce26 \n\
/* 0804ce10 */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 0804ce12 */ LSLS R0, R0, 0x18 \n\
/* 0804ce14 */ LSRS R5, R0, 0x18 \n\
/* 0804ce16 */ LSLS R1, R6, 0x18 \n\
/* 0804ce18 */ ASRS R2, R1, 0x18 \n\
/* 0804ce1a */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0804ce1c */ BLT branch_0804ce3a \n\
/* 0804ce1e */ SUBS R0, R2, 0x1 @ Set R0 to R2 - 0x1 \n\
/* 0804ce20 */ LSLS R0, R0, 0x18 \n\
/* 0804ce22 */ LSRS R5, R0, 0x18 \n\
/* 0804ce24 */ B branch_0804ce3a \n\
 \n\
branch_0804ce26: \n\
/* 0804ce26 */ LSLS R0, R6, 0x18 \n\
/* 0804ce28 */ ASRS R0, R0, 0x18 \n\
/* 0804ce2a */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804ce2c */ ADDS R1, 0x3 @ Add 0x3 to R1 \n\
/* 0804ce2e */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804ce30 */ LSLS R0, R0, 0x18 \n\
/* 0804ce32 */ LSRS R5, R0, 0x18 \n\
/* 0804ce34 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ce36 */ BGE branch_0804ce3a \n\
/* 0804ce38 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0804ce3a: \n\
/* 0804ce3a */ LDRB R0, [R4, 0xD] \n\
/* 0804ce3c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804ce3e */ STRB R0, [R4, 0xD] \n\
/* 0804ce40 */ B branch_0804ce5e \n\
jump_0804ce42: \n\
/* 0804ce42 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804ce44 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804ce46 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804ce48 */ LSLS R1, R0, 0x10 \n\
/* 0804ce4a */ ASRS R1, R1, 0x10 \n\
/* 0804ce4c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804ce4e */ BL func_0804d504 \n\
/* 0804ce52 */ B branch_0804ce58 \n\
 \n\
branch_0804ce54: \n\
/* 0804ce54 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804ce56 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_0804ce58: \n\
/* 0804ce58 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804ce5a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804ce5c */ BEQ branch_0804ceae \n\
 \n\
branch_0804ce5e: \n\
/* 0804ce5e */ LSLS R0, R5, 0x18 \n\
/* 0804ce60 */ ASRS R6, R0, 0x18 \n\
/* 0804ce62 */ LDR R1, [R4, 0x8] \n\
/* 0804ce64 */ LSLS R0, R6, 0x3 \n\
/* 0804ce66 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804ce68 */ LDRB R0, [R0, 0x4] \n\
/* 0804ce6a */ LSLS R0, R0, 0x8 \n\
/* 0804ce6c */ LDRH R1, [R4, 0x1C] \n\
/* 0804ce6e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804ce70 */ STRH R0, [R4, 0x1C] \n\
/* 0804ce72 */ STRB R5, [R4, 0xC] \n\
/* 0804ce74 */ LDR R3, [R4, 0x20] \n\
/* 0804ce76 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804ce78 */ BEQ branch_0804ceae \n\
/* 0804ce7a */ MOVS R0, 0x17 @ Set R0 to 0x17 \n\
/* 0804ce7c */ LDRSB R0, [R4, R0] \n\
/* 0804ce7e */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0804ce80 */ BNE branch_0804ce90 \n\
/* 0804ce82 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804ce84 */ LSLS R1, R0, 0x10 \n\
/* 0804ce86 */ ASRS R1, R1, 0x10 \n\
/* 0804ce88 */ LDR R2, [R4, 0x24] \n\
/* 0804ce8a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804ce8c */ BL _call_via_r3 \n\
 \n\
branch_0804ce90: \n\
/* 0804ce90 */ MOVS R1, 0x17 @ Set R1 to 0x17 \n\
/* 0804ce92 */ LDRSB R1, [R4, R1] \n\
/* 0804ce94 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804ce96 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804ce98 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804ce9a */ BNE branch_0804ceae \n\
/* 0804ce9c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804ce9e */ LSLS R1, R0, 0x10 \n\
/* 0804cea0 */ ASRS R1, R1, 0x10 \n\
/* 0804cea2 */ LDR R2, [R4, 0x24] \n\
/* 0804cea4 */ LDR R4, [R4, 0x20] \n\
/* 0804cea6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804cea8 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0804ceaa */ BL _call_via_r4 \n\
 \n\
branch_0804ceae: \n\
/* 0804ceae */ POP {R3, R4} \n\
/* 0804ceb0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804ceb2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804ceb4 */ POP {R4-R7} \n\
/* 0804ceb6 */ POP {R0} \n\
/* 0804ceb8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
