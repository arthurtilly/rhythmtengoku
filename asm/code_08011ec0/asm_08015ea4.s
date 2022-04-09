asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015ea4 \n\
/* 08015ea4 */ PUSH {R4-R7, LR} \n\
/* 08015ea6 */ MOV R7, R10 \n\
/* 08015ea8 */ MOV R6, R9 \n\
/* 08015eaa */ MOV R5, R8 \n\
/* 08015eac */ PUSH {R5-R7} \n\
/* 08015eae */ SUB SP, 0x10 \n\
/* 08015eb0 */ STR R0, [SP] \n\
/* 08015eb2 */ STR R1, [SP, 0x4] \n\
/* 08015eb4 */ MOVS R0, 0x88 @ Set R0 to 0x88 \n\
/* 08015eb6 */ LSLS R0, R0, 0x1 \n\
/* 08015eb8 */ STR R0, [SP, 0x8] \n\
/* 08015eba */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08015ebc */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08015ebe */ LSLS R0, R0, 0x1 \n\
/* 08015ec0 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08015ec2 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08015ec4 */ LSLS R2, R2, 0x1 \n\
/* 08015ec6 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08015ec8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08015eca */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08015ecc */ LSLS R3, R3, 0x11 \n\
/* 08015ece */ STR R3, [SP, 0xC] \n\
/* 08015ed0 */ LDR R4, [SP, 0x8] \n\
/* 08015ed2 */ LSLS R6, R4, 0x11 \n\
 \n\
branch_08015ed4: \n\
/* 08015ed4 */ LSLS R0, R5, 0x2 \n\
/* 08015ed6 */ ADDS R0, 0xD0 @ Add 0xD0 to R0 \n\
/* 08015ed8 */ LDR R7, =D_030046a4 \n\
/* 08015eda */ LDR R1, [R7] \n\
/* 08015edc */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08015ede */ LDRH R1, [R4] \n\
/* 08015ee0 */ LDR R0, [SP] \n\
/* 08015ee2 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08015ee4 */ STRH R1, [R4] \n\
/* 08015ee6 */ LDRH R0, [R4, 0x2] \n\
/* 08015ee8 */ LDR R2, [SP, 0x4] \n\
/* 08015eea */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08015eec */ STRH R0, [R4, 0x2] \n\
/* 08015eee */ LSLS R1, R1, 0x10 \n\
/* 08015ef0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08015ef2 */ BGE branch_08015f02 \n\
/* 08015ef4 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08015ef6 */ STRH R3, [R4] \n\
/* 08015ef8 */ LDR R7, [SP, 0xC] \n\
/* 08015efa */ LSRS R0, R7, 0x10 \n\
/* 08015efc */ BL func_08001980 \n\
/* 08015f00 */ STRH R0, [R4, 0x2] \n\
 \n\
branch_08015f02: \n\
/* 08015f02 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08015f04 */ LDRSH R0, [R4, R1] \n\
/* 08015f06 */ CMP R0, R9 @ Compare R0 and R9 \n\
/* 08015f08 */ BLE branch_08015f18 \n\
/* 08015f0a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015f0c */ STRH R2, [R4] \n\
/* 08015f0e */ LDR R3, [SP, 0xC] \n\
/* 08015f10 */ LSRS R0, R3, 0x10 \n\
/* 08015f12 */ BL func_08001980 \n\
/* 08015f16 */ STRH R0, [R4, 0x2] \n\
 \n\
branch_08015f18: \n\
/* 08015f18 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 08015f1a */ LDRSH R0, [R4, R7] \n\
/* 08015f1c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015f1e */ BGE branch_08015f2c \n\
/* 08015f20 */ LSRS R0, R6, 0x10 \n\
/* 08015f22 */ BL func_08001980 \n\
/* 08015f26 */ STRH R0, [R4] \n\
/* 08015f28 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08015f2a */ STRH R0, [R4, 0x2] \n\
 \n\
branch_08015f2c: \n\
/* 08015f2c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08015f2e */ LDRSH R0, [R4, R1] \n\
/* 08015f30 */ CMP R0, R8 @ Compare R0 and R8 \n\
/* 08015f32 */ BLE branch_08015f40 \n\
/* 08015f34 */ LSRS R0, R6, 0x10 \n\
/* 08015f36 */ BL func_08001980 \n\
/* 08015f3a */ STRH R0, [R4] \n\
/* 08015f3c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015f3e */ STRH R2, [R4, 0x2] \n\
 \n\
branch_08015f40: \n\
/* 08015f40 */ LDR R0, =D_03005380 \n\
/* 08015f42 */ LDR R0, [R0] \n\
/* 08015f44 */ LDR R3, =D_030046a4 \n\
/* 08015f46 */ LDR R1, [R3] \n\
/* 08015f48 */ LSLS R2, R5, 0x1 \n\
/* 08015f4a */ ADDS R1, 0x6A @ Add 0x6A to R1 \n\
/* 08015f4c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08015f4e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08015f50 */ LDRSH R1, [R1, R7] \n\
/* 08015f52 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08015f54 */ LDRSH R2, [R4, R3] \n\
/* 08015f56 */ LDR R7, [SP, 0x8] \n\
/* 08015f58 */ SUBS R2, R2, R7 @ Set R2 to R2 - R7 \n\
/* 08015f5a */ ASRS R2, R2, 0x1 \n\
/* 08015f5c */ ADDS R2, 0x78 @ Add 0x78 to R2 \n\
/* 08015f5e */ LSLS R2, R2, 0x10 \n\
/* 08015f60 */ ASRS R2, R2, 0x10 \n\
/* 08015f62 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 08015f64 */ LDRSH R3, [R4, R7] \n\
/* 08015f66 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 08015f68 */ SUBS R3, R3, R4 @ Set R3 to R3 - R4 \n\
/* 08015f6a */ ASRS R3, R3, 0x1 \n\
/* 08015f6c */ ADDS R3, 0x50 @ Add 0x50 to R3 \n\
/* 08015f6e */ LSLS R3, R3, 0x10 \n\
/* 08015f70 */ ASRS R3, R3, 0x10 \n\
/* 08015f72 */ BL func_0804d5d4 \n\
/* 08015f76 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08015f78 */ CMP R5, 0xF @ Compare R5 and 0xF \n\
/* 08015f7a */ BLS branch_08015ed4 \n\
/* 08015f7c */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08015f7e */ STR R7, [SP, 0x8] \n\
/* 08015f80 */ MOV R10, R8 @ Set R10 to R8 \n\
/* 08015f82 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08015f84 */ LSLS R0, R0, 0x1 \n\
/* 08015f86 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08015f88 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08015f8a */ LSLS R1, R1, 0x1 \n\
/* 08015f8c */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08015f8e */ MOVS R5, 0x10 @ Set R5 to 0x10 \n\
/* 08015f90 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08015f92 */ LSLS R2, R2, 0x11 \n\
/* 08015f94 */ STR R2, [SP, 0xC] \n\
/* 08015f96 */ LSLS R6, R7, 0x11 \n\
 \n\
branch_08015f98:  \n\
/* 08015f98 */ LSLS R0, R5, 0x2 \n\
/* 08015f9a */ ADDS R0, 0xD0 @ Add 0xD0 to R0 \n\
/* 08015f9c */ LDR R3, =D_030046a4 \n\
/* 08015f9e */ LDR R1, [R3] \n\
/* 08015fa0 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08015fa2 */ LDRH R1, [R4] \n\
/* 08015fa4 */ LDR R7, [SP] \n\
/* 08015fa6 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08015fa8 */ STRH R1, [R4] \n\
/* 08015faa */ LDRH R0, [R4, 0x2] \n\
/* 08015fac */ LDR R2, [SP, 0x4] \n\
/* 08015fae */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08015fb0 */ STRH R0, [R4, 0x2] \n\
/* 08015fb2 */ LSLS R1, R1, 0x10 \n\
/* 08015fb4 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08015fb6 */ BGE branch_08015fc6 \n\
/* 08015fb8 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08015fba */ STRH R3, [R4] \n\
/* 08015fbc */ LDR R7, [SP, 0xC] \n\
/* 08015fbe */ LSRS R0, R7, 0x10 \n\
/* 08015fc0 */ BL func_08001980 \n\
/* 08015fc4 */ STRH R0, [R4, 0x2] \n\
 \n\
branch_08015fc6:  \n\
/* 08015fc6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08015fc8 */ LDRSH R0, [R4, R1] \n\
/* 08015fca */ CMP R0, R9 @ Compare R0 and R9 \n\
/* 08015fcc */ BLE branch_08015fdc \n\
/* 08015fce */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015fd0 */ STRH R2, [R4] \n\
/* 08015fd2 */ LDR R3, [SP, 0xC] \n\
/* 08015fd4 */ LSRS R0, R3, 0x10 \n\
/* 08015fd6 */ BL func_08001980 \n\
/* 08015fda */ STRH R0, [R4, 0x2] \n\
 \n\
branch_08015fdc:  \n\
/* 08015fdc */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 08015fde */ LDRSH R0, [R4, R7] \n\
/* 08015fe0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015fe2 */ BGE branch_08015ff0 \n\
/* 08015fe4 */ LSRS R0, R6, 0x10 \n\
/* 08015fe6 */ BL func_08001980 \n\
/* 08015fea */ STRH R0, [R4] \n\
/* 08015fec */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08015fee */ STRH R0, [R4, 0x2] \n\
 \n\
branch_08015ff0:  \n\
/* 08015ff0 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08015ff2 */ LDRSH R0, [R4, R1] \n\
/* 08015ff4 */ CMP R0, R8 @ Compare R0 and R8 \n\
/* 08015ff6 */ BLE branch_08016004 \n\
/* 08015ff8 */ LSRS R0, R6, 0x10 \n\
/* 08015ffa */ BL func_08001980 \n\
/* 08015ffe */ STRH R0, [R4] \n\
/* 08016000 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016002 */ STRH R2, [R4, 0x2] \n\
 \n\
branch_08016004:  \n\
/* 08016004 */ LDR R0, =D_03005380 \n\
/* 08016006 */ LDR R0, [R0] \n\
/* 08016008 */ LDR R3, =D_030046a4 \n\
/* 0801600a */ LDR R1, [R3] \n\
/* 0801600c */ LSLS R2, R5, 0x1 \n\
/* 0801600e */ ADDS R1, 0x6A @ Add 0x6A to R1 \n\
/* 08016010 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08016012 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08016014 */ LDRSH R1, [R1, R7] \n\
/* 08016016 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08016018 */ LDRSH R2, [R4, R3] \n\
/* 0801601a */ LDR R7, [SP, 0x8] \n\
/* 0801601c */ SUBS R2, R2, R7 @ Set R2 to R2 - R7 \n\
/* 0801601e */ ASRS R2, R2, 0x2 \n\
/* 08016020 */ ADDS R2, 0x78 @ Add 0x78 to R2 \n\
/* 08016022 */ LSLS R2, R2, 0x10 \n\
/* 08016024 */ ASRS R2, R2, 0x10 \n\
/* 08016026 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 08016028 */ LDRSH R3, [R4, R7] \n\
/* 0801602a */ MOV R4, R10 @ Set R4 to R10 \n\
/* 0801602c */ SUBS R3, R3, R4 @ Set R3 to R3 - R4 \n\
/* 0801602e */ ASRS R3, R3, 0x2 \n\
/* 08016030 */ ADDS R3, 0x50 @ Add 0x50 to R3 \n\
/* 08016032 */ LSLS R3, R3, 0x10 \n\
/* 08016034 */ ASRS R3, R3, 0x10 \n\
/* 08016036 */ BL func_0804d5d4 \n\
/* 0801603a */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0801603c */ CMP R5, 0x31 @ Compare R5 and 0x31 \n\
/* 0801603e */ BLS branch_08015f98 \n\
/* 08016040 */ ADD SP, 0x10 \n\
/* 08016042 */ POP {R3-R5} \n\
/* 08016044 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08016046 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08016048 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801604a */ POP {R4-R7} \n\
/* 0801604c */ POP {R0} \n\
/* 0801604e */ BX R0 \n\
\n\
.ltorg \n\
@SPLIT \n\
thumb_func_start func_08016058 \n\
/* 08016058 */ PUSH {R4-R7, LR} \n\
/* 0801605a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801605c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801605e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08016060 */ PUSH {R5-R7} \n\
/* 08016062 */ SUB SP, 0x24 \n\
/* 08016064 */ STR R2, [SP, 0x1C] \n\
/* 08016066 */ STR R3, [SP, 0x20] \n\
/* 08016068 */ LSLS R0, R0, 0x10 \n\
/* 0801606a */ LSRS R0, R0, 0x10 \n\
/* 0801606c */ STR R0, [SP, 0x14] \n\
/* 0801606e */ LSLS R1, R1, 0x10 \n\
/* 08016070 */ LSRS R1, R1, 0x10 \n\
/* 08016072 */ STR R1, [SP, 0x18] \n\
/* 08016074 */ LDR R0, =D_030046a4 \n\
/* 08016076 */ LDR R0, [R0] \n\
/* 08016078 */ MOVS R1, 0xCC @ Set R1 to 0xCC \n\
/* 0801607a */ LSLS R1, R1, 0x1 \n\
/* 0801607c */ ADDS R7, R0, R1 @ Set R7 to R0 + R1 \n\
/* 0801607e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08016080 */ B branch_08016090 \n\
\n\
.ltorg \n\
 \n\
branch_08016088: \n\
/* 08016088 */ ADDS R7, 0x20 @ Add 0x20 to R7 \n\
/* 0801608a */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0801608c */ CMP R1, 0x9 @ Compare R1 and 0x9 \n\
/* 0801608e */ BHI branch_0801614e \n\
 \n\
branch_08016090: \n\
/* 08016090 */ LDRB R0, [R7] \n\
/* 08016092 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016094 */ BNE branch_08016088 \n\
/* 08016096 */ CMP R1, 0x9 @ Compare R1 and 0x9 \n\
/* 08016098 */ BHI branch_0801614e \n\
/* 0801609a */ LDR R2, [SP, 0x14] \n\
/* 0801609c */ LSLS R0, R2, 0x10 \n\
/* 0801609e */ ASRS R0, R0, 0x10 \n\
/* 080160a0 */ LSLS R6, R0, 0x2 \n\
/* 080160a2 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 080160a4 */ LSLS R6, R6, 0x3 \n\
/* 080160a6 */ ADDS R6, 0x14 @ Add 0x14 to R6 \n\
/* 080160a8 */ LDR R1, [SP, 0x18] \n\
/* 080160aa */ LSLS R0, R1, 0x10 \n\
/* 080160ac */ ASRS R0, R0, 0x10 \n\
/* 080160ae */ LSLS R5, R0, 0x1 \n\
/* 080160b0 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 080160b2 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 080160b4 */ LSLS R5, R5, 0x3 \n\
/* 080160b6 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 080160b8 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 080160ba */ MOV R10, R2 @ Set R10 to R2 \n\
/* 080160bc */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 080160be */ BL func_08001980 \n\
/* 080160c2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080160c4 */ LSLS R4, R4, 0x10 \n\
/* 080160c6 */ LSRS R4, R4, 0x10 \n\
/* 080160c8 */ ADDS R4, R6, R4 @ Set R4 to R6 + R4 \n\
/* 080160ca */ SUBS R4, 0xC8 @ Subtract 0xC8 from R4 \n\
/* 080160cc */ SUBS R5, 0xBC @ Subtract 0xBC from R5 \n\
/* 080160ce */ LDR R0, =D_03005380 \n\
/* 080160d0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080160d2 */ LDR R0, [R0] \n\
/* 080160d4 */ LDR R1, =D_08902960 \n\
/* 080160d6 */ LSLS R3, R4, 0x10 \n\
/* 080160d8 */ ASRS R3, R3, 0x10 \n\
/* 080160da */ LSLS R2, R5, 0x10 \n\
/* 080160dc */ ASRS R2, R2, 0x10 \n\
/* 080160de */ STR R2, [SP] \n\
/* 080160e0 */ LDR R2, =0x479c \n\
/* 080160e2 */ STR R2, [SP, 0x4] \n\
/* 080160e4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080160e6 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080160e8 */ STR R2, [SP, 0x8] \n\
/* 080160ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080160ec */ STR R2, [SP, 0xC] \n\
/* 080160ee */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080160f0 */ LSLS R2, R2, 0x8 \n\
/* 080160f2 */ STR R2, [SP, 0x10] \n\
/* 080160f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080160f6 */ BL func_0804d160 \n\
/* 080160fa */ STRH R0, [R7, 0x2] \n\
/* 080160fc */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080160fe */ LDR R0, [R1] \n\
/* 08016100 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08016102 */ LDRSH R1, [R7, R2] \n\
/* 08016104 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08016106 */ LSLS R2, R2, 0x2 \n\
/* 08016108 */ BL func_0804dcb8 \n\
/* 0801610c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801610e */ LDR R0, [R1] \n\
/* 08016110 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08016112 */ LDRSH R1, [R7, R2] \n\
/* 08016114 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08016116 */ BL func_0804d8c4 \n\
/* 0801611a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801611c */ LDRSH R0, [R7, R1] \n\
/* 0801611e */ BL func_080140f8 \n\
/* 08016122 */ MOV R2, SP @ Set R2 to SP \n\
/* 08016124 */ LDRH R2, [R2, 0x14] \n\
/* 08016126 */ STRH R2, [R7, 0x4] \n\
/* 08016128 */ MOV R0, SP @ Set R0 to SP \n\
/* 0801612a */ LDRH R0, [R0, 0x18] \n\
/* 0801612c */ STRH R0, [R7, 0x6] \n\
/* 0801612e */ STRH R4, [R7, 0x8] \n\
/* 08016130 */ STRH R5, [R7, 0xA] \n\
/* 08016132 */ STRH R6, [R7, 0xC] \n\
/* 08016134 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08016136 */ STRH R1, [R7, 0xE] \n\
/* 08016138 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801613a */ LSLS R0, R0, 0x1 \n\
/* 0801613c */ STRH R0, [R7, 0x10] \n\
/* 0801613e */ LDR R2, [SP, 0x1C] \n\
/* 08016140 */ STR R2, [R7, 0x14] \n\
/* 08016142 */ LDR R0, [SP, 0x20] \n\
/* 08016144 */ STR R0, [R7, 0x18] \n\
/* 08016146 */ LDR R0, [SP, 0x44] \n\
/* 08016148 */ STRH R0, [R7, 0x1C] \n\
/* 0801614a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801614c */ STRB R1, [R7] \n\
 \n\
branch_0801614e: \n\
/* 0801614e */ ADD SP, 0x24 \n\
/* 08016150 */ POP {R3-R5} \n\
/* 08016152 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08016154 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08016156 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08016158 */ POP {R4-R7} \n\
/* 0801615a */ POP {R0} \n\
/* 0801615c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
