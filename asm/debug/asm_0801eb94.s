asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801eb94 \n\
/* 0801eb94 */ PUSH {R4, LR} \n\
/* 0801eb96 */ BL func_0801ed20 \n\
/* 0801eb9a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801eb9c */ BNE branch_0801eba0 \n\
/* 0801eb9e */ B branch_0801ed12 \n\
 \n\
branch_0801eba0: \n\
/* 0801eba0 */ LDR R0, =D_03004afc \n\
/* 0801eba2 */ LDRH R1, [R0] \n\
/* 0801eba4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801eba6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801eba8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ebaa */ BEQ branch_0801ebbe \n\
/* 0801ebac */ BL func_0800c3b8 \n\
/* 0801ebb0 */ LSLS R0, R0, 0x10 \n\
/* 0801ebb2 */ LSRS R0, R0, 0x10 \n\
/* 0801ebb4 */ LDR R1, =D_089de134 \n\
/* 0801ebb6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801ebb8 */ LSLS R2, R2, 0x8 \n\
/* 0801ebba */ BL func_08002ee0 \n\
 \n\
branch_0801ebbe: \n\
/* 0801ebbe */ LDR R0, =D_030053b8 \n\
/* 0801ebc0 */ LDRH R1, [R0] \n\
/* 0801ebc2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801ebc4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ebc6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ebc8 */ BEQ branch_0801ecae \n\
/* 0801ebca */ LDR R0, =0x040000b0 @ !Hardware REG_DMA0SAD \n\
/* 0801ebcc */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0801ebce */ LSLS R3, R3, 0x14 \n\
/* 0801ebd0 */ STR R3, [R0] \n\
/* 0801ebd2 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801ebd4 */ LSLS R2, R2, 0x13 \n\
/* 0801ebd6 */ STR R2, [R0, 0x4] \n\
/* 0801ebd8 */ LDR R1, =0x80008000 \n\
/* 0801ebda */ STR R1, [R0, 0x8] \n\
/* 0801ebdc */ LDR R4, [R0, 0x8] \n\
/* 0801ebde */ STR R3, [R0] \n\
/* 0801ebe0 */ STR R2, [R0, 0x4] \n\
/* 0801ebe2 */ STR R1, [R0, 0x8] \n\
/* 0801ebe4 */ LDR R4, [R0, 0x8] \n\
/* 0801ebe6 */ STR R3, [R0] \n\
/* 0801ebe8 */ STR R2, [R0, 0x4] \n\
/* 0801ebea */ STR R1, [R0, 0x8] \n\
/* 0801ebec */ LDR R4, [R0, 0x8] \n\
/* 0801ebee */ STR R3, [R0] \n\
/* 0801ebf0 */ STR R2, [R0, 0x4] \n\
/* 0801ebf2 */ STR R1, [R0, 0x8] \n\
/* 0801ebf4 */ LDR R4, [R0, 0x8] \n\
/* 0801ebf6 */ STR R3, [R0] \n\
/* 0801ebf8 */ STR R2, [R0, 0x4] \n\
/* 0801ebfa */ STR R1, [R0, 0x8] \n\
/* 0801ebfc */ LDR R4, [R0, 0x8] \n\
/* 0801ebfe */ STR R3, [R0] \n\
/* 0801ec00 */ STR R2, [R0, 0x4] \n\
/* 0801ec02 */ STR R1, [R0, 0x8] \n\
/* 0801ec04 */ LDR R4, [R0, 0x8] \n\
/* 0801ec06 */ STR R3, [R0] \n\
/* 0801ec08 */ STR R2, [R0, 0x4] \n\
/* 0801ec0a */ STR R1, [R0, 0x8] \n\
/* 0801ec0c */ LDR R4, [R0, 0x8] \n\
/* 0801ec0e */ STR R3, [R0] \n\
/* 0801ec10 */ STR R2, [R0, 0x4] \n\
/* 0801ec12 */ STR R1, [R0, 0x8] \n\
/* 0801ec14 */ LDR R4, [R0, 0x8] \n\
/* 0801ec16 */ STR R3, [R0] \n\
/* 0801ec18 */ STR R2, [R0, 0x4] \n\
/* 0801ec1a */ STR R1, [R0, 0x8] \n\
/* 0801ec1c */ LDR R4, [R0, 0x8] \n\
/* 0801ec1e */ STR R3, [R0] \n\
/* 0801ec20 */ STR R2, [R0, 0x4] \n\
/* 0801ec22 */ STR R1, [R0, 0x8] \n\
/* 0801ec24 */ LDR R4, [R0, 0x8] \n\
/* 0801ec26 */ STR R3, [R0] \n\
/* 0801ec28 */ STR R2, [R0, 0x4] \n\
/* 0801ec2a */ STR R1, [R0, 0x8] \n\
/* 0801ec2c */ LDR R4, [R0, 0x8] \n\
/* 0801ec2e */ STR R3, [R0] \n\
/* 0801ec30 */ STR R2, [R0, 0x4] \n\
/* 0801ec32 */ STR R1, [R0, 0x8] \n\
/* 0801ec34 */ LDR R4, [R0, 0x8] \n\
/* 0801ec36 */ STR R3, [R0] \n\
/* 0801ec38 */ STR R2, [R0, 0x4] \n\
/* 0801ec3a */ STR R1, [R0, 0x8] \n\
/* 0801ec3c */ LDR R4, [R0, 0x8] \n\
/* 0801ec3e */ STR R3, [R0] \n\
/* 0801ec40 */ STR R2, [R0, 0x4] \n\
/* 0801ec42 */ STR R1, [R0, 0x8] \n\
/* 0801ec44 */ LDR R4, [R0, 0x8] \n\
/* 0801ec46 */ STR R3, [R0] \n\
/* 0801ec48 */ STR R2, [R0, 0x4] \n\
/* 0801ec4a */ STR R1, [R0, 0x8] \n\
/* 0801ec4c */ LDR R4, [R0, 0x8] \n\
/* 0801ec4e */ STR R3, [R0] \n\
/* 0801ec50 */ STR R2, [R0, 0x4] \n\
/* 0801ec52 */ STR R1, [R0, 0x8] \n\
/* 0801ec54 */ LDR R4, [R0, 0x8] \n\
/* 0801ec56 */ STR R3, [R0] \n\
/* 0801ec58 */ STR R2, [R0, 0x4] \n\
/* 0801ec5a */ STR R1, [R0, 0x8] \n\
/* 0801ec5c */ LDR R4, [R0, 0x8] \n\
/* 0801ec5e */ STR R3, [R0] \n\
/* 0801ec60 */ STR R2, [R0, 0x4] \n\
/* 0801ec62 */ STR R1, [R0, 0x8] \n\
/* 0801ec64 */ LDR R4, [R0, 0x8] \n\
/* 0801ec66 */ STR R3, [R0] \n\
/* 0801ec68 */ STR R2, [R0, 0x4] \n\
/* 0801ec6a */ STR R1, [R0, 0x8] \n\
/* 0801ec6c */ LDR R4, [R0, 0x8] \n\
/* 0801ec6e */ STR R3, [R0] \n\
/* 0801ec70 */ STR R2, [R0, 0x4] \n\
/* 0801ec72 */ STR R1, [R0, 0x8] \n\
/* 0801ec74 */ LDR R4, [R0, 0x8] \n\
/* 0801ec76 */ STR R3, [R0] \n\
/* 0801ec78 */ STR R2, [R0, 0x4] \n\
/* 0801ec7a */ STR R1, [R0, 0x8] \n\
/* 0801ec7c */ LDR R4, [R0, 0x8] \n\
/* 0801ec7e */ STR R3, [R0] \n\
/* 0801ec80 */ STR R2, [R0, 0x4] \n\
/* 0801ec82 */ STR R1, [R0, 0x8] \n\
/* 0801ec84 */ LDR R4, [R0, 0x8] \n\
/* 0801ec86 */ STR R3, [R0] \n\
/* 0801ec88 */ STR R2, [R0, 0x4] \n\
/* 0801ec8a */ STR R1, [R0, 0x8] \n\
/* 0801ec8c */ LDR R4, [R0, 0x8] \n\
/* 0801ec8e */ STR R3, [R0] \n\
/* 0801ec90 */ STR R2, [R0, 0x4] \n\
/* 0801ec92 */ STR R1, [R0, 0x8] \n\
/* 0801ec94 */ LDR R4, [R0, 0x8] \n\
/* 0801ec96 */ STR R3, [R0] \n\
/* 0801ec98 */ STR R2, [R0, 0x4] \n\
/* 0801ec9a */ STR R1, [R0, 0x8] \n\
/* 0801ec9c */ LDR R4, [R0, 0x8] \n\
/* 0801ec9e */ STR R3, [R0] \n\
/* 0801eca0 */ STR R2, [R0, 0x4] \n\
/* 0801eca2 */ STR R1, [R0, 0x8] \n\
/* 0801eca4 */ LDR R4, [R0, 0x8] \n\
/* 0801eca6 */ STR R3, [R0] \n\
/* 0801eca8 */ STR R2, [R0, 0x4] \n\
/* 0801ecaa */ STR R1, [R0, 0x8] \n\
/* 0801ecac */ LDR R0, [R0, 0x8] \n\
 \n\
branch_0801ecae: \n\
/* 0801ecae */ LDR R0, =D_03004ac0 \n\
/* 0801ecb0 */ LDRH R1, [R0] \n\
/* 0801ecb2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801ecb4 */ LSLS R0, R0, 0x1 \n\
/* 0801ecb6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ecb8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ecba */ BEQ branch_0801ecf8 \n\
/* 0801ecbc */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0801ecbe */ BL func_08001980 \n\
/* 0801ecc2 */ LSLS R0, R0, 0x10 \n\
/* 0801ecc4 */ LSRS R0, R0, 0x10 \n\
/* 0801ecc6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ecc8 */ BEQ branch_0801ece8 \n\
/* 0801ecca */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801eccc */ BEQ branch_0801ecf4 \n\
/* 0801ecce */ B branch_0801ecf8 \n\
\n\
.ltorg \n\
 \n\
branch_0801ece8: \n\
/* 0801ece8 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 0801ecea */ MOVS R1, 0x61 @ Set R1 to 0x61 \n\
/* 0801ecec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ecee */ BL func_080041d0 \n\
/* 0801ecf2 */ B branch_0801ecf8 \n\
 \n\
branch_0801ecf4: \n\
/* 0801ecf4 */ BL func_08004058 \n\
 \n\
branch_0801ecf8: \n\
/* 0801ecf8 */ LDR R0, =D_03004afc \n\
/* 0801ecfa */ LDRH R1, [R0] \n\
/* 0801ecfc */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0801ecfe */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ed00 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ed02 */ BEQ branch_0801ed12 \n\
/* 0801ed04 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ed06 */ BL func_0800bd04 \n\
/* 0801ed0a */ LDR R0, =D_030046a4 \n\
/* 0801ed0c */ LDR R1, [R0] \n\
/* 0801ed0e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ed10 */ STR R0, [R1, 0x8] \n\
 \n\
branch_0801ed12: \n\
/* 0801ed12 */ POP {R4} \n\
/* 0801ed14 */ POP {R0} \n\
/* 0801ed16 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
