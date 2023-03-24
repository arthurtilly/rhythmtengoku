asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010be4 \n\
/* 08010be4 */ PUSH {R4-R7, LR} \n\
/* 08010be6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08010be8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08010bea */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08010bec */ PUSH {R5-R7} \n\
/* 08010bee */ SUB SP, 0x10 \n\
/* 08010bf0 */ LDR R1, =D_030046a4 \n\
/* 08010bf2 */ LDR R2, [R1] \n\
/* 08010bf4 */ LDRH R7, [R2, 0xA] \n\
/* 08010bf6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010bf8 */ STR R0, [SP, 0x8] \n\
/* 08010bfa */ LDRB R0, [R2, 0xD] \n\
/* 08010bfc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010bfe */ BEQ branch_08010c02 \n\
/* 08010c00 */ B branch_080112c6 \n\
 \n\
branch_08010c02: \n\
/* 08010c02 */ MOV R1, SP @ Set R1 to SP \n\
/* 08010c04 */ LDRB R1, [R1, 0x8] \n\
/* 08010c06 */ STRB R1, [R2, 0x1C] \n\
/* 08010c08 */ LDR R2, =D_030046a4 \n\
/* 08010c0a */ LDR R0, [R2] \n\
/* 08010c0c */ MOV R1, SP @ Set R1 to SP \n\
/* 08010c0e */ LDRB R1, [R1, 0x8] \n\
/* 08010c10 */ STRB R1, [R0, 0x1D] \n\
/* 08010c12 */ LDR R0, [R2] \n\
/* 08010c14 */ MOV R2, SP @ Set R2 to SP \n\
/* 08010c16 */ LDRB R2, [R2, 0x8] \n\
/* 08010c18 */ STRB R2, [R0, 0x1E] \n\
/* 08010c1a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010c1c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08010c1e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08010c20 */ CMP R7, 0x20 @ Compare R7 and 0x20 \n\
/* 08010c22 */ BLS branch_08010c26 \n\
/* 08010c24 */ B branch_08011264 \n\
 \n\
branch_08010c26: \n\
/* 08010c26 */ LSLS R0, R7, 0x2 \n\
/* 08010c28 */ LDR R1, =jtbl_08010c38 \n\
/* 08010c2a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08010c2c */ LDR R0, [R0] \n\
/* 08010c2e */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08010c38: \n\
.word jump_08010cbc \n\
.word jump_08010d4c \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word jump_080110c0 \n\
.word jump_080110ec \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word jump_080110f8 \n\
.word jump_08011104 \n\
.word jump_08011180 \n\
.word jump_0801118c \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word jump_0801119c \n\
.word jump_080111bc \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word jump_08011204 \n\
.word jump_08011214 \n\
.word jump_08011220 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word branch_08011264 \n\
.word jump_08011244 \n\
\n\
jump_08010cbc: \n\
/* 08010cbc */ LDR R5, =D_030046a8 \n\
/* 08010cbe */ LDR R0, [R5] \n\
/* 08010cc0 */ LDR R2, =0x29f \n\
/* 08010cc2 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08010cc4 */ LDRB R4, [R1] \n\
/* 08010cc6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08010cc8 */ BEQ branch_08010ce0 \n\
/* 08010cca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010ccc */ STRB R0, [R1] \n\
/* 08010cce */ LDR R0, =cafe_dialogue_first_visit \n\
/* 08010cd0 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08010cd2 */ B branch_08011264 \n\
\n\
.ltorg \n\
 \n\
branch_08010ce0: \n\
/* 08010ce0 */ MOVS R1, 0xB2 @ Set R1 to 0xB2 \n\
/* 08010ce2 */ LSLS R1, R1, 0x2 \n\
/* 08010ce4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08010ce6 */ LDR R0, [R0] \n\
/* 08010ce8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010cea */ BEQ branch_08010d08 \n\
/* 08010cec */ LDR R2, =D_0805062c \n\
/* 08010cee */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08010cf0 */ BL func_08010a04 \n\
/* 08010cf4 */ LDR R0, [R5] \n\
/* 08010cf6 */ MOVS R1, 0xB2 @ Set R1 to 0xB2 \n\
/* 08010cf8 */ LSLS R1, R1, 0x2 \n\
/* 08010cfa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08010cfc */ STR R4, [R0] \n\
/* 08010cfe */ MOVS R7, 0x1B @ Set R7 to 0x1B \n\
/* 08010d00 */ B branch_08011264 \n\
\n\
.ltorg \n\
 \n\
branch_08010d08: \n\
/* 08010d08 */ LDR R0, =D_030046a4 \n\
/* 08010d0a */ LDR R1, [R0] \n\
/* 08010d0c */ LDRH R0, [R1, 0x16] \n\
/* 08010d0e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010d10 */ BNE branch_08010d20 \n\
/* 08010d12 */ LDR R2, =cafe_dialogue_come_back_later \n\
/* 08010d14 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08010d16 */ B branch_08011264 \n\
\n\
.ltorg \n\
 \n\
branch_08010d20: \n\
/* 08010d20 */ LDRH R0, [R1, 0x18] \n\
/* 08010d22 */ LDR R1, =D_08050650 \n\
/* 08010d24 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08010d26 */ CMP R0, 0x14 @ Compare R0 and 0x14 \n\
/* 08010d28 */ BLS branch_08010d36 \n\
/* 08010d2a */ LDR R2, =D_080506d8 \n\
/* 08010d2c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08010d2e */ CMP R0, 0x3C @ Compare R0 and 0x3C \n\
/* 08010d30 */ BHI branch_08010d36 \n\
/* 08010d32 */ LDR R0, =D_08050688 \n\
/* 08010d34 */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_08010d36: \n\
/* 08010d36 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08010d38 */ B branch_08011264 \n\
\n\
.ltorg \n\
 \n\
branch_08010d48: \n\
/* 08010d48 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08010d4a */ B branch_08010e04 \n\
\n\
jump_08010d4c: \n\
/* 08010d4c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08010d4e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08010d50 */ LDR R1, =D_030046a4 \n\
/* 08010d52 */ LDR R0, [R1] \n\
/* 08010d54 */ LDRB R0, [R0, 0xE] \n\
/* 08010d56 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 08010d58 */ BCS branch_08010e00 \n\
 \n\
branch_08010d5a: \n\
/* 08010d5a */ LDR R0, [R1] \n\
/* 08010d5c */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08010d5e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08010d60 */ LDRB R0, [R0] \n\
/* 08010d62 */ LSLS R0, R0, 0x3 \n\
/* 08010d64 */ LDR R1, =D_030055a0 \n\
/* 08010d66 */ ADDS R6, R0, R1 @ Set R6 to R0 + R1 \n\
/* 08010d68 */ LDRB R0, [R6, 0x2] \n\
/* 08010d6a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010d6c */ BNE branch_08010d48 \n\
/* 08010d6e */ LDR R0, =D_030046a8 \n\
/* 08010d70 */ LDR R4, [R0] \n\
/* 08010d72 */ LDRB R2, [R6] \n\
/* 08010d74 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08010d76 */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 08010d78 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08010d7a */ LDRB R0, [R0] \n\
/* 08010d7c */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08010d7e */ BEQ branch_08010dbe \n\
/* 08010d80 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08010d82 */ BGT branch_08010d98 \n\
/* 08010d84 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08010d86 */ BEQ branch_08010d9e \n\
/* 08010d88 */ B branch_08010df0 \n\
\n\
.ltorg \n\
 \n\
branch_08010d98: \n\
/* 08010d98 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08010d9a */ BEQ branch_08010dc8 \n\
/* 08010d9c */ B branch_08010df0 \n\
 \n\
branch_08010d9e: \n\
/* 08010d9e */ MOVS R0, 0xA8 @ Set R0 to 0xA8 \n\
/* 08010da0 */ LSLS R0, R0, 0x2 \n\
/* 08010da2 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 08010da4 */ LDRB R0, [R6, 0x1] \n\
/* 08010da6 */ LDRB R1, [R1] \n\
/* 08010da8 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08010daa */ BCC branch_08010df0 \n\
/* 08010dac */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08010dae */ STR R3, [SP, 0xC] \n\
/* 08010db0 */ BL func_08010bc0 \n\
/* 08010db4 */ LDR R3, [SP, 0xC] \n\
/* 08010db6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010db8 */ BEQ branch_08010df0 \n\
/* 08010dba */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 08010dbc */ B branch_08010df0 \n\
 \n\
branch_08010dbe: \n\
/* 08010dbe */ LDRB R0, [R6, 0x1] \n\
/* 08010dc0 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08010dc2 */ BLS branch_08010df0 \n\
/* 08010dc4 */ MOVS R5, 0x3 @ Set R5 to 0x3 \n\
/* 08010dc6 */ B branch_08010df0 \n\
 \n\
branch_08010dc8: \n\
/* 08010dc8 */ LDR R1, =0x245 \n\
/* 08010dca */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08010dcc */ LDRB R0, [R0] \n\
/* 08010dce */ CMP R0, 0x2F @ Compare R0 and 0x2F \n\
/* 08010dd0 */ BHI branch_08010df0 \n\
/* 08010dd2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08010dd4 */ STR R3, [SP, 0xC] \n\
/* 08010dd6 */ BL get_campaign_from_level_id \n\
/* 08010dda */ LDR R2, =0x246 \n\
/* 08010ddc */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08010dde */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08010de0 */ LDRB R0, [R1] \n\
/* 08010de2 */ LDR R3, [SP, 0xC] \n\
/* 08010de4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010de6 */ BNE branch_08010df0 \n\
/* 08010de8 */ LDRB R0, [R6, 0x1] \n\
/* 08010dea */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08010dec */ BLS branch_08010df0 \n\
/* 08010dee */ MOVS R5, 0x4 @ Set R5 to 0x4 \n\
 \n\
branch_08010df0: \n\
/* 08010df0 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08010df2 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08010df4 */ BNE branch_08010e04 \n\
/* 08010df6 */ LDR R1, =D_030046a4 \n\
/* 08010df8 */ LDR R0, [R1] \n\
/* 08010dfa */ LDRB R0, [R0, 0xE] \n\
/* 08010dfc */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08010dfe */ BCC branch_08010d5a \n\
 \n\
branch_08010e00: \n\
/* 08010e00 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08010e02 */ BEQ branch_08010e2c \n\
 \n\
branch_08010e04: \n\
/* 08010e04 */ LDR R0, =D_030046a4 \n\
/* 08010e06 */ LDR R0, [R0] \n\
/* 08010e08 */ LDRH R0, [R0, 0x18] \n\
/* 08010e0a */ LDRH R1, [R6, 0x4] \n\
/* 08010e0c */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08010e0e */ CMP R0, 0x14 @ Compare R0 and 0x14 \n\
/* 08010e10 */ BLE branch_08010e14 \n\
/* 08010e12 */ MOVS R5, 0x5 @ Set R5 to 0x5 \n\
 \n\
branch_08010e14: \n\
/* 08010e14 */ LDRB R0, [R6] \n\
/* 08010e16 */ BL game_select_get_level_name \n\
/* 08010e1a */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08010e1c */ B branch_08010e5c \n\
\n\
.ltorg \n\
 \n\
branch_08010e2c: \n\
/* 08010e2c */ LDR R0, =D_030046a8 \n\
/* 08010e2e */ LDR R1, [R0] \n\
/* 08010e30 */ LDR R2, =0x276 \n\
/* 08010e32 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08010e34 */ LDRB R0, [R0] \n\
/* 08010e36 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08010e38 */ BNE branch_08010e5c \n\
/* 08010e3a */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08010e3c */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08010e3e */ LDRB R0, [R0] \n\
/* 08010e40 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08010e42 */ BHI branch_08010e5c \n\
/* 08010e44 */ ADDS R2, 0x29 @ Add 0x29 to R2 \n\
/* 08010e46 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08010e48 */ LDRB R0, [R0] \n\
/* 08010e4a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010e4c */ BNE branch_08010e5c \n\
/* 08010e4e */ SUBS R2, 0x28 @ Subtract 0x28 from R2 \n\
/* 08010e50 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08010e52 */ LDRB R0, [R0] \n\
/* 08010e54 */ BL get_level_name_from_campaign \n\
/* 08010e58 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08010e5a */ MOVS R5, 0x6 @ Set R5 to 0x6 \n\
 \n\
branch_08010e5c: \n\
/* 08010e5c */ SUBS R0, R5, 0x1 @ Set R0 to R5 - 0x1 \n\
/* 08010e5e */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08010e60 */ BLS branch_08010e64 \n\
/* 08010e62 */ B branch_080110a8 \n\
 \n\
branch_08010e64: \n\
/* 08010e64 */ LSLS R0, R0, 0x2 \n\
/* 08010e66 */ LDR R1, =jtbl_08010e7c \n\
/* 08010e68 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08010e6a */ LDR R0, [R0] \n\
/* 08010e6c */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08010e7c: \n\
.word jump_08010e94 \n\
.word jump_08010ef8 \n\
.word jump_08010f64 \n\
.word jump_08010fd0 \n\
.word jump_08011034 \n\
.word jump_0801104c \n\
\n\
jump_08010e94: \n\
/* 08010e94 */ LDR R0, =D_030046a4 \n\
/* 08010e96 */ LDR R0, [R0] \n\
/* 08010e98 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08010e9a */ ADDS R5, 0x28 @ Add 0x28 to R5 \n\
/* 08010e9c */ LDR R0, =D_08050714 \n\
/* 08010e9e */ LDRB R0, [R0] \n\
/* 08010ea0 */ STRB R0, [R5] \n\
/* 08010ea2 */ LDR R1, =D_08050718 \n\
/* 08010ea4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010ea6 */ BL strcat \n\
/* 08010eaa */ LDR R1, =D_0805071c \n\
/* 08010eac */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010eae */ BL strcat \n\
/* 08010eb2 */ LDR R1, =D_08050728 \n\
/* 08010eb4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010eb6 */ BL strcat \n\
/* 08010eba */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010ebc */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08010ebe */ BL strcat \n\
/* 08010ec2 */ LDR R1, =D_08050730 \n\
/* 08010ec4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010ec6 */ BL strcat \n\
/* 08010eca */ LDR R1, =D_08050738 \n\
/* 08010ecc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010ece */ BL strcat \n\
/* 08010ed2 */ MOV R8, R5 @ Set R8 to R5 \n\
/* 08010ed4 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08010ed6 */ STRB R0, [R6] \n\
/* 08010ed8 */ MOVS R7, 0x6 @ Set R7 to 0x6 \n\
/* 08010eda */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_08010ef8: \n\
/* 08010ef8 */ LDR R4, =D_030046a4 \n\
/* 08010efa */ LDR R0, [R4] \n\
/* 08010efc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08010efe */ ADDS R5, 0x28 @ Add 0x28 to R5 \n\
/* 08010f00 */ LDR R0, =D_08050714 \n\
/* 08010f02 */ LDRB R0, [R0] \n\
/* 08010f04 */ STRB R0, [R5] \n\
/* 08010f06 */ LDR R1, =D_08050718 \n\
/* 08010f08 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f0a */ BL strcat \n\
/* 08010f0e */ LDR R1, =D_0805075c \n\
/* 08010f10 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f12 */ BL strcat \n\
/* 08010f16 */ LDR R1, =D_08050728 \n\
/* 08010f18 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f1a */ BL strcat \n\
/* 08010f1e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f20 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08010f22 */ BL strcat \n\
/* 08010f26 */ LDR R1, =D_08050730 \n\
/* 08010f28 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f2a */ BL strcat \n\
/* 08010f2e */ LDR R1, =D_0805076c \n\
/* 08010f30 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f32 */ BL strcat \n\
/* 08010f36 */ MOV R8, R5 @ Set R8 to R5 \n\
/* 08010f38 */ LDR R1, [R4] \n\
/* 08010f3a */ LDRB R0, [R6] \n\
/* 08010f3c */ STRH R0, [R1, 0x20] \n\
/* 08010f3e */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08010f40 */ STRB R0, [R6] \n\
/* 08010f42 */ MOVS R7, 0xB @ Set R7 to 0xB \n\
/* 08010f44 */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_08010f64: \n\
/* 08010f64 */ LDR R0, =D_030046a4 \n\
/* 08010f66 */ LDR R0, [R0] \n\
/* 08010f68 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08010f6a */ ADDS R5, 0x28 @ Add 0x28 to R5 \n\
/* 08010f6c */ LDR R0, =D_08050714 \n\
/* 08010f6e */ LDRB R0, [R0] \n\
/* 08010f70 */ STRB R0, [R5] \n\
/* 08010f72 */ LDR R1, =D_08050718 \n\
/* 08010f74 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f76 */ BL strcat \n\
/* 08010f7a */ LDR R1, =D_08050788 \n\
/* 08010f7c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f7e */ BL strcat \n\
/* 08010f82 */ LDR R1, =D_08050728 \n\
/* 08010f84 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f86 */ BL strcat \n\
/* 08010f8a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f8c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08010f8e */ BL strcat \n\
/* 08010f92 */ LDR R1, =D_08050794 \n\
/* 08010f94 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f96 */ BL strcat \n\
/* 08010f9a */ LDR R1, =D_0805079c \n\
/* 08010f9c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010f9e */ BL strcat \n\
/* 08010fa2 */ MOV R8, R5 @ Set R8 to R5 \n\
/* 08010fa4 */ LDR R0, =cafe_dialogue_keep_trying \n\
/* 08010fa6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08010fa8 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08010faa */ STRB R0, [R6] \n\
/* 08010fac */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_08010fd0: \n\
/* 08010fd0 */ LDR R0, =D_030046a4 \n\
/* 08010fd2 */ LDR R0, [R0] \n\
/* 08010fd4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08010fd6 */ ADDS R5, 0x28 @ Add 0x28 to R5 \n\
/* 08010fd8 */ LDR R0, =D_08050714 \n\
/* 08010fda */ LDRB R0, [R0] \n\
/* 08010fdc */ STRB R0, [R5] \n\
/* 08010fde */ LDR R1, =D_08050718 \n\
/* 08010fe0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010fe2 */ BL strcat \n\
/* 08010fe6 */ LDR R1, =D_080507b8 \n\
/* 08010fe8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010fea */ BL strcat \n\
/* 08010fee */ LDR R1, =D_08050728 \n\
/* 08010ff0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010ff2 */ BL strcat \n\
/* 08010ff6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08010ff8 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08010ffa */ BL strcat \n\
/* 08010ffe */ LDR R1, =D_080507d8 \n\
/* 08011000 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08011002 */ BL strcat \n\
/* 08011006 */ LDR R1, =D_080507e8 \n\
/* 08011008 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801100a */ BL strcat \n\
/* 0801100e */ MOV R8, R5 @ Set R8 to R5 \n\
/* 08011010 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08011012 */ STRB R0, [R6] \n\
/* 08011014 */ MOVS R7, 0x15 @ Set R7 to 0x15 \n\
/* 08011016 */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_08011034: \n\
/* 08011034 */ LDR R0, =D_030046a4 \n\
/* 08011036 */ LDR R0, [R0] \n\
/* 08011038 */ LDRH R0, [R0, 0x18] \n\
/* 0801103a */ STRH R0, [R6, 0x4] \n\
/* 0801103c */ LDR R1, =D_08050800 \n\
/* 0801103e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08011040 */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_0801104c: \n\
/* 0801104c */ LDR R0, =D_030046a4 \n\
/* 0801104e */ LDR R0, [R0] \n\
/* 08011050 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08011052 */ ADDS R5, 0x28 @ Add 0x28 to R5 \n\
/* 08011054 */ LDR R0, =D_08050714 \n\
/* 08011056 */ LDRB R0, [R0] \n\
/* 08011058 */ STRB R0, [R5] \n\
/* 0801105a */ LDR R1, =D_08050828 \n\
/* 0801105c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801105e */ BL strcat \n\
/* 08011062 */ LDR R1, =D_08050728 \n\
/* 08011064 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08011066 */ BL strcat \n\
/* 0801106a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801106c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801106e */ BL strcat \n\
/* 08011072 */ LDR R1, =D_0805083c \n\
/* 08011074 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08011076 */ BL strcat \n\
/* 0801107a */ MOV R8, R5 @ Set R8 to R5 \n\
/* 0801107c */ MOVS R7, 0x1A @ Set R7 to 0x1A \n\
/* 0801107e */ LDR R0, =D_030046a8 \n\
/* 08011080 */ LDR R0, [R0] \n\
/* 08011082 */ LDR R2, =0x2a1 \n\
/* 08011084 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08011086 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08011088 */ STRB R1, [R0] \n\
/* 0801108a */ B branch_08011264 \n\
\n\
.ltorg \n\
 \n\
branch_080110a8: \n\
/* 080110a8 */ LDR R4, =cafe_random_conversation_pool \n\
/* 080110aa */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 080110ac */ BL agb_random \n\
/* 080110b0 */ LSLS R0, R0, 0x10 \n\
/* 080110b2 */ LSRS R0, R0, 0xE \n\
/* 080110b4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080110b6 */ LDR R0, [R0] \n\
/* 080110b8 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080110ba */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_080110c0: \n\
/* 080110c0 */ LDR R4, =cafe_dialogue_shouts_praise \n\
/* 080110c2 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080110c4 */ BL agb_random \n\
/* 080110c8 */ LSLS R0, R0, 0x10 \n\
/* 080110ca */ LSRS R0, R0, 0xE \n\
/* 080110cc */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080110ce */ LDR R0, [R0] \n\
/* 080110d0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080110d2 */ LDR R2, =D_030046a4 \n\
/* 080110d4 */ LDR R1, [R2] \n\
/* 080110d6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080110d8 */ STRB R0, [R1, 0x1C] \n\
/* 080110da */ LDR R1, [R2] \n\
/* 080110dc */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080110de */ STRB R0, [R1, 0x1D] \n\
/* 080110e0 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 080110e2 */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_080110ec: \n\
/* 080110ec */ LDR R0, =D_08050874 \n\
/* 080110ee */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080110f0 */ B branch_08011260 \n\
\n\
.ltorg \n\
\n\
jump_080110f8: \n\
/* 080110f8 */ LDR R2, =D_080508b0 \n\
/* 080110fa */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080110fc */ B branch_080111a0 \n\
\n\
.ltorg \n\
\n\
jump_08011104: \n\
/* 08011104 */ LDR R2, =D_030046a4 \n\
/* 08011106 */ LDR R1, [R2] \n\
/* 08011108 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0801110a */ LDRSB R0, [R1, R0] \n\
/* 0801110c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801110e */ BNE branch_08011174 \n\
/* 08011110 */ LDR R0, =D_08050944 \n\
/* 08011112 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08011114 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08011116 */ STRB R0, [R1, 0x1D] \n\
/* 08011118 */ LDR R1, [R2] \n\
/* 0801111a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801111c */ STRB R0, [R1, 0x1C] \n\
/* 0801111e */ MOVS R7, 0xD @ Set R7 to 0xD \n\
/* 08011120 */ LDR R0, [R2] \n\
/* 08011122 */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 08011124 */ LDRSH R0, [R0, R1] \n\
/* 08011126 */ ADD R2, SP, 0x4 \n\
/* 08011128 */ MOV R1, SP @ Set R1 to SP \n\
/* 0801112a */ BL get_grid_xy_from_level_id \n\
/* 0801112e */ LDR R4, =D_030046a8 \n\
/* 08011130 */ LDR R1, [R4] \n\
/* 08011132 */ LDR R0, [SP] \n\
/* 08011134 */ STRB R0, [R1, 0x12] \n\
/* 08011136 */ LDR R1, [R4] \n\
/* 08011138 */ LDR R0, [SP, 0x4] \n\
/* 0801113a */ STRB R0, [R1, 0x13] \n\
/* 0801113c */ LDR R1, [R4] \n\
/* 0801113e */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08011140 */ STRB R0, [R1, 0x14] \n\
/* 08011142 */ LDR R1, [R4] \n\
/* 08011144 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08011146 */ STRB R0, [R1, 0x15] \n\
/* 08011148 */ LDR R0, [R4] \n\
/* 0801114a */ MOVS R5, 0xA8 @ Set R5 to 0xA8 \n\
/* 0801114c */ LSLS R5, R5, 0x2 \n\
/* 0801114e */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08011150 */ LDRB R0, [R0] \n\
/* 08011152 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08011154 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08011156 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08011158 */ BL clamp_int32 \n\
/* 0801115c */ LDR R1, [R4] \n\
/* 0801115e */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08011160 */ STRB R0, [R1] \n\
/* 08011162 */ BL write_game_save_data \n\
/* 08011166 */ B branch_08011264 \n\
\n\
.ltorg \n\
 \n\
branch_08011174: \n\
/* 08011174 */ LDR R2, =D_08050964 \n\
/* 08011176 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08011178 */ MOVS R7, 0xE @ Set R7 to 0xE \n\
/* 0801117a */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_08011180: \n\
/* 08011180 */ LDR R0, =D_080509a4 \n\
/* 08011182 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08011184 */ B branch_08011260 \n\
\n\
.ltorg \n\
\n\
jump_0801118c: \n\
/* 0801118c */ LDR R2, =D_080509ec \n\
/* 0801118e */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08011190 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08011192 */ STR R0, [SP, 0x8] \n\
/* 08011194 */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_0801119c: \n\
/* 0801119c */ LDR R1, =D_08050a10 \n\
/* 0801119e */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_080111a0: \n\
/* 080111a0 */ LDR R2, =D_030046a4 \n\
/* 080111a2 */ LDR R1, [R2] \n\
/* 080111a4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080111a6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080111a8 */ STRB R0, [R1, 0x1E] \n\
/* 080111aa */ LDR R0, [R2] \n\
/* 080111ac */ STRB R3, [R0, 0x1F] \n\
/* 080111ae */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 080111b0 */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_080111bc: \n\
/* 080111bc */ LDR R5, =D_030046a4 \n\
/* 080111be */ LDR R0, [R5] \n\
/* 080111c0 */ LDRB R0, [R0, 0x1F] \n\
/* 080111c2 */ LSLS R0, R0, 0x18 \n\
/* 080111c4 */ ASRS R0, R0, 0x18 \n\
/* 080111c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080111c8 */ BNE branch_080111f8 \n\
/* 080111ca */ LDR R4, =cafe_dialogue_shouts_cheer \n\
/* 080111cc */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080111ce */ BL agb_random \n\
/* 080111d2 */ LSLS R0, R0, 0x10 \n\
/* 080111d4 */ LSRS R0, R0, 0xE \n\
/* 080111d6 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080111d8 */ LDR R0, [R0] \n\
/* 080111da */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080111dc */ LDR R0, [R5] \n\
/* 080111de */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 080111e0 */ STRB R1, [R0, 0x1D] \n\
/* 080111e2 */ LDR R0, [R5] \n\
/* 080111e4 */ STRB R1, [R0, 0x1C] \n\
/* 080111e6 */ LDR R2, =cafe_dialogue_practicing_perfect \n\
/* 080111e8 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 080111ea */ B branch_08011264 \n\
\n\
.ltorg \n\
 \n\
branch_080111f8: \n\
/* 080111f8 */ LDR R0, =cafe_dialogue_not_practicing_perfect \n\
/* 080111fa */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080111fc */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_08011204: \n\
/* 08011204 */ LDR R1, =D_08050a98 \n\
/* 08011206 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08011208 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801120a */ STR R2, [SP, 0x8] \n\
/* 0801120c */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_08011214: \n\
/* 08011214 */ LDR R0, =D_08050acc \n\
/* 08011216 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08011218 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801121a */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_08011220: \n\
/* 08011220 */ LDR R1, =D_08050b14 \n\
/* 08011222 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08011224 */ LDR R2, =D_030046a4 \n\
/* 08011226 */ LDR R1, [R2] \n\
/* 08011228 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0801122a */ STRB R0, [R1, 0x1C] \n\
/* 0801122c */ LDR R1, [R2] \n\
/* 0801122e */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08011230 */ STRB R0, [R1, 0x1D] \n\
/* 08011232 */ LDR R2, =cafe_dialogue_all_perfects_clear \n\
/* 08011234 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08011236 */ B branch_08011264 \n\
\n\
.ltorg \n\
\n\
jump_08011244: \n\
/* 08011244 */ LDR R0, =D_030046a4 \n\
/* 08011246 */ LDR R2, [R0] \n\
/* 08011248 */ LDR R1, [R2, 0x24] \n\
/* 0801124a */ LDR R0, [R1] \n\
/* 0801124c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801124e */ LDR R0, [R1, 0x4] \n\
/* 08011250 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011252 */ BEQ branch_08011260 \n\
/* 08011254 */ ADDS R0, R1, 0x4 @ Set R0 to R1 + 0x4 \n\
/* 08011256 */ STR R0, [R2, 0x24] \n\
/* 08011258 */ B branch_08011264 \n\
\n\
.ltorg \n\
 \n\
branch_08011260: \n\
/* 08011260 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08011262 */ STR R1, [SP, 0x8] \n\
 \n\
branch_08011264: \n\
/* 08011264 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08011266 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08011268 */ BEQ branch_080112a0 \n\
/* 0801126a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801126c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801126e */ BNE branch_08011296 \n\
/* 08011270 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 08011272 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08011274 */ SUBS R2, 0x4 @ Subtract 0x4 from R2 \n\
/* 08011276 */ LDMIA R2!, {R1} \n\
/* 08011278 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801127a */ LDR R0, [R2] \n\
/* 0801127c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801127e */ BEQ branch_08011290 \n\
/* 08011280 */ LDR R2, =D_030046a4 \n\
/* 08011282 */ LDR R0, [R2] \n\
/* 08011284 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08011286 */ STR R1, [R0, 0x24] \n\
/* 08011288 */ B branch_0801129e \n\
\n\
.ltorg \n\
 \n\
branch_08011290: \n\
/* 08011290 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08011292 */ STR R2, [SP, 0x8] \n\
/* 08011294 */ B branch_080112a0 \n\
 \n\
branch_08011296: \n\
/* 08011296 */ LDR R1, =D_030046a4 \n\
/* 08011298 */ LDR R0, [R1] \n\
/* 0801129a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0801129c */ STR R2, [R0, 0x24] \n\
 \n\
branch_0801129e: \n\
/* 0801129e */ MOVS R7, 0x20 @ Set R7 to 0x20 \n\
 \n\
branch_080112a0: \n\
/* 080112a0 */ LDR R4, =D_030046a4 \n\
/* 080112a2 */ LDR R0, [R4] \n\
/* 080112a4 */ LDR R0, [R0, 0x4] \n\
/* 080112a6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080112a8 */ BL text_printer_show_text \n\
/* 080112ac */ LDR R0, [R4] \n\
/* 080112ae */ LDR R0, [R0, 0x4] \n\
/* 080112b0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080112b2 */ BL text_printer_set_string \n\
/* 080112b6 */ LDR R0, [SP, 0x8] \n\
/* 080112b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080112ba */ BEQ branch_080112c0 \n\
/* 080112bc */ BL beatscript_disable_loops \n\
 \n\
branch_080112c0: \n\
/* 080112c0 */ LDR R1, =D_030046a4 \n\
/* 080112c2 */ LDR R0, [R1] \n\
/* 080112c4 */ STRH R7, [R0, 0xA] \n\
 \n\
branch_080112c6: \n\
/* 080112c6 */ ADD SP, 0x10 \n\
/* 080112c8 */ POP {R3-R5} \n\
/* 080112ca */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080112cc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080112ce */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080112d0 */ POP {R4-R7} \n\
/* 080112d2 */ POP {R0} \n\
/* 080112d4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
