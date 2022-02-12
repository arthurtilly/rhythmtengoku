asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08026e74 \n\
/* 08026e74 */ PUSH {R4-R7, LR} \n\
/* 08026e76 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08026e78 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08026e7a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08026e7c */ PUSH {R5-R7} \n\
/* 08026e7e */ SUB SP, 0x14 \n\
/* 08026e80 */ LDR R0, =D_030055d0 \n\
/* 08026e82 */ LDR R4, [R0] \n\
/* 08026e84 */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 08026e86 */ LSLS R1, R1, 0x2 \n\
/* 08026e88 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08026e8a */ LDR R6, =D_03005380 \n\
/* 08026e8c */ LDR R0, [R6] \n\
/* 08026e8e */ LDR R1, =D_088c8008 \n\
/* 08026e90 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08026e92 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08026e94 */ STR R2, [SP] \n\
/* 08026e96 */ LDR R2, =0x0000480c \n\
/* 08026e98 */ STR R2, [SP, 0x4] \n\
/* 08026e9a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08026e9c */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08026e9e */ STR R2, [SP, 0x8] \n\
/* 08026ea0 */ MOVS R5, 0x7F @ Set R5 to 0x7F \n\
/* 08026ea2 */ STR R5, [SP, 0xC] \n\
/* 08026ea4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026ea6 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08026ea8 */ STR R2, [SP, 0x10] \n\
/* 08026eaa */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026eac */ BL func_0804d160 \n\
/* 08026eb0 */ STRH R0, [R4] \n\
/* 08026eb2 */ LDR R0, [R6] \n\
/* 08026eb4 */ LDR R1, =D_088c7f88 \n\
/* 08026eb6 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08026eb8 */ STR R2, [SP] \n\
/* 08026eba */ LDR R2, =0x0000480f \n\
/* 08026ebc */ STR R2, [SP, 0x4] \n\
/* 08026ebe */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026ec0 */ STR R2, [SP, 0x8] \n\
/* 08026ec2 */ STR R5, [SP, 0xC] \n\
/* 08026ec4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026ec6 */ STR R2, [SP, 0x10] \n\
/* 08026ec8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026eca */ MOVS R3, 0x98 @ Set R3 to 0x98 \n\
/* 08026ecc */ BL func_0804d160 \n\
/* 08026ed0 */ STRH R0, [R4, 0x2] \n\
/* 08026ed2 */ LDR R0, [R6] \n\
/* 08026ed4 */ LDR R1, =D_088c8028 \n\
/* 08026ed6 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026ed8 */ STR R2, [SP] \n\
/* 08026eda */ LDR R2, =0x00004814 \n\
/* 08026edc */ STR R2, [SP, 0x4] \n\
/* 08026ede */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026ee0 */ STR R2, [SP, 0x8] \n\
/* 08026ee2 */ STR R5, [SP, 0xC] \n\
/* 08026ee4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026ee6 */ STR R2, [SP, 0x10] \n\
/* 08026ee8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026eea */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026eec */ BL func_0804d160 \n\
/* 08026ef0 */ STRH R0, [R4, 0x4] \n\
/* 08026ef2 */ LDR R0, [R6] \n\
/* 08026ef4 */ LDR R1, =D_088c8048 \n\
/* 08026ef6 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026ef8 */ STR R2, [SP] \n\
/* 08026efa */ LDR R2, =0x00004819 \n\
/* 08026efc */ STR R2, [SP, 0x4] \n\
/* 08026efe */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026f00 */ STR R2, [SP, 0x8] \n\
/* 08026f02 */ STR R5, [SP, 0xC] \n\
/* 08026f04 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026f06 */ STR R2, [SP, 0x10] \n\
/* 08026f08 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026f0a */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026f0c */ BL func_0804d160 \n\
/* 08026f10 */ STRH R0, [R4, 0x6] \n\
/* 08026f12 */ LDR R0, =0x0000ffff \n\
/* 08026f14 */ STRH R0, [R4, 0x10] \n\
/* 08026f16 */ LDR R0, [R6] \n\
/* 08026f18 */ LDR R1, =D_088c7fa8 \n\
/* 08026f1a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026f1c */ STR R2, [SP] \n\
/* 08026f1e */ LDR R2, =0x0000480a \n\
/* 08026f20 */ STR R2, [SP, 0x4] \n\
/* 08026f22 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026f24 */ STR R2, [SP, 0x8] \n\
/* 08026f26 */ STR R5, [SP, 0xC] \n\
/* 08026f28 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026f2a */ STR R2, [SP, 0x10] \n\
/* 08026f2c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026f2e */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026f30 */ BL func_0804d160 \n\
/* 08026f34 */ STRH R0, [R4, 0xA] \n\
/* 08026f36 */ LDR R0, [R6] \n\
/* 08026f38 */ LDR R1, =D_088c7fd8 \n\
/* 08026f3a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026f3c */ STR R2, [SP] \n\
/* 08026f3e */ LDR R2, =0x0000480b \n\
/* 08026f40 */ STR R2, [SP, 0x4] \n\
/* 08026f42 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026f44 */ STR R2, [SP, 0x8] \n\
/* 08026f46 */ STR R5, [SP, 0xC] \n\
/* 08026f48 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026f4a */ STR R2, [SP, 0x10] \n\
/* 08026f4c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026f4e */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026f50 */ BL func_0804d160 \n\
/* 08026f54 */ STRH R0, [R4, 0x8] \n\
/* 08026f56 */ LDR R0, [R6] \n\
/* 08026f58 */ LDR R1, =D_088c8070 \n\
/* 08026f5a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026f5c */ STR R2, [SP] \n\
/* 08026f5e */ LDR R2, =0x0000481e \n\
/* 08026f60 */ STR R2, [SP, 0x4] \n\
/* 08026f62 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026f64 */ STR R2, [SP, 0x8] \n\
/* 08026f66 */ STR R5, [SP, 0xC] \n\
/* 08026f68 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026f6a */ STR R2, [SP, 0x10] \n\
/* 08026f6c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026f6e */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026f70 */ BL func_0804d160 \n\
/* 08026f74 */ STRH R0, [R4, 0xE] \n\
/* 08026f76 */ LDR R0, [R6] \n\
/* 08026f78 */ LDR R1, =D_088c80b0 \n\
/* 08026f7a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026f7c */ STR R2, [SP] \n\
/* 08026f7e */ LDR R7, =0x000047ec \n\
/* 08026f80 */ STR R7, [SP, 0x4] \n\
/* 08026f82 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026f84 */ STR R2, [SP, 0x8] \n\
/* 08026f86 */ STR R5, [SP, 0xC] \n\
/* 08026f88 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026f8a */ STR R2, [SP, 0x10] \n\
/* 08026f8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026f8e */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026f90 */ BL func_0804d160 \n\
/* 08026f94 */ STRH R0, [R4, 0xC] \n\
/* 08026f96 */ LDR R0, [R6] \n\
/* 08026f98 */ LDR R1, =D_088c82f8 \n\
/* 08026f9a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026f9c */ STR R2, [SP] \n\
/* 08026f9e */ LDR R2, =0x000047f4 \n\
/* 08026fa0 */ STR R2, [SP, 0x4] \n\
/* 08026fa2 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026fa4 */ STR R2, [SP, 0x8] \n\
/* 08026fa6 */ STR R5, [SP, 0xC] \n\
/* 08026fa8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026faa */ STR R2, [SP, 0x10] \n\
/* 08026fac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026fae */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026fb0 */ BL func_0804d160 \n\
/* 08026fb4 */ STRH R0, [R4, 0x12] \n\
/* 08026fb6 */ LDR R0, [R6] \n\
/* 08026fb8 */ LDR R1, =D_088c8318 \n\
/* 08026fba */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026fbc */ STR R2, [SP] \n\
/* 08026fbe */ STR R7, [SP, 0x4] \n\
/* 08026fc0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026fc2 */ STR R2, [SP, 0x8] \n\
/* 08026fc4 */ STR R5, [SP, 0xC] \n\
/* 08026fc6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026fc8 */ STR R2, [SP, 0x10] \n\
/* 08026fca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026fcc */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026fce */ BL func_0804d160 \n\
/* 08026fd2 */ STRH R0, [R4, 0x14] \n\
/* 08026fd4 */ LDR R0, [R6] \n\
/* 08026fd6 */ LDR R1, =D_088c8338 \n\
/* 08026fd8 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026fda */ STR R2, [SP] \n\
/* 08026fdc */ LDR R2, =0x000047ee \n\
/* 08026fde */ STR R2, [SP, 0x4] \n\
/* 08026fe0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08026fe2 */ STR R2, [SP, 0x8] \n\
/* 08026fe4 */ STR R5, [SP, 0xC] \n\
/* 08026fe6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08026fe8 */ STR R2, [SP, 0x10] \n\
/* 08026fea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026fec */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08026fee */ BL func_0804d160 \n\
/* 08026ff2 */ STRH R0, [R4, 0x16] \n\
/* 08026ff4 */ LDR R0, [R6] \n\
/* 08026ff6 */ LDR R1, =D_088c8358 \n\
/* 08026ff8 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08026ffa */ STR R2, [SP] \n\
/* 08026ffc */ LDR R2, =0x000047fb \n\
/* 08026ffe */ STR R2, [SP, 0x4] \n\
/* 08027000 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08027002 */ STR R2, [SP, 0x8] \n\
/* 08027004 */ STR R5, [SP, 0xC] \n\
/* 08027006 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08027008 */ STR R2, [SP, 0x10] \n\
/* 0802700a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802700c */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802700e */ BL func_0804d160 \n\
/* 08027012 */ STRH R0, [R4, 0x18] \n\
/* 08027014 */ LDR R0, [R6] \n\
/* 08027016 */ LDR R1, =D_088c81b0 \n\
/* 08027018 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802701a */ STR R2, [SP] \n\
/* 0802701c */ LDR R2, =0x000047f6 \n\
/* 0802701e */ STR R2, [SP, 0x4] \n\
/* 08027020 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08027022 */ STR R2, [SP, 0x8] \n\
/* 08027024 */ STR R5, [SP, 0xC] \n\
/* 08027026 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08027028 */ STR R2, [SP, 0x10] \n\
/* 0802702a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802702c */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802702e */ BL func_0804d160 \n\
/* 08027032 */ STRH R0, [R4, 0x1C] \n\
/* 08027034 */ LDR R0, [R6] \n\
/* 08027036 */ LDR R1, =D_088c80f0 \n\
/* 08027038 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802703a */ STR R2, [SP] \n\
/* 0802703c */ LDR R2, =0x000047e2 \n\
/* 0802703e */ STR R2, [SP, 0x4] \n\
/* 08027040 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08027042 */ STR R2, [SP, 0x8] \n\
/* 08027044 */ STR R5, [SP, 0xC] \n\
/* 08027046 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08027048 */ STR R2, [SP, 0x10] \n\
/* 0802704a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802704c */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802704e */ BL func_0804d160 \n\
/* 08027052 */ STRH R0, [R4, 0x1A] \n\
/* 08027054 */ LDR R0, [R6] \n\
/* 08027056 */ LDR R1, =D_088c8378 \n\
/* 08027058 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802705a */ STR R2, [SP] \n\
/* 0802705c */ LDR R2, =0x000047f0 \n\
/* 0802705e */ STR R2, [SP, 0x4] \n\
/* 08027060 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08027062 */ STR R2, [SP, 0x8] \n\
/* 08027064 */ STR R5, [SP, 0xC] \n\
/* 08027066 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08027068 */ STR R2, [SP, 0x10] \n\
/* 0802706a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802706c */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802706e */ BL func_0804d160 \n\
/* 08027072 */ STRH R0, [R4, 0x1E] \n\
/* 08027074 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08027076 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08027078 */ STRH R0, [R4, 0x20] \n\
/* 0802707a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802707c */ LDRSH R0, [R4, R1] \n\
/* 0802707e */ BL func_08026e10 \n\
/* 08027082 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08027084 */ LDRSH R0, [R4, R2] \n\
/* 08027086 */ BL func_08026e10 \n\
/* 0802708a */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802708c */ LDRSH R0, [R4, R1] \n\
/* 0802708e */ BL func_08026e10 \n\
/* 08027092 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08027094 */ LDRSH R0, [R4, R2] \n\
/* 08027096 */ BL func_08026e10 \n\
/* 0802709a */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0802709c */ LDRSH R0, [R4, R1] \n\
/* 0802709e */ BL func_08026e10 \n\
/* 080270a2 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080270a4 */ LDRSH R0, [R4, R2] \n\
/* 080270a6 */ BL func_08026e10 \n\
/* 080270aa */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 080270ac */ LDRSH R0, [R4, R1] \n\
/* 080270ae */ BL func_08026e10 \n\
/* 080270b2 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 080270b4 */ LDRSH R0, [R4, R2] \n\
/* 080270b6 */ BL func_08026e10 \n\
/* 080270ba */ MOVS R1, 0x12 @ Set R1 to 0x12 \n\
/* 080270bc */ LDRSH R0, [R4, R1] \n\
/* 080270be */ BL func_08026e10 \n\
/* 080270c2 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080270c4 */ LDRSH R0, [R4, R2] \n\
/* 080270c6 */ BL func_08026e10 \n\
/* 080270ca */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 080270cc */ LDRSH R0, [R4, R1] \n\
/* 080270ce */ BL func_08026e10 \n\
/* 080270d2 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 080270d4 */ LDRSH R0, [R4, R2] \n\
/* 080270d6 */ BL func_08026e10 \n\
/* 080270da */ MOVS R1, 0x1C @ Set R1 to 0x1C \n\
/* 080270dc */ LDRSH R0, [R4, R1] \n\
/* 080270de */ BL func_08026e10 \n\
/* 080270e2 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 080270e4 */ LDRSH R0, [R4, R2] \n\
/* 080270e6 */ BL func_08026e10 \n\
/* 080270ea */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 080270ec */ LDRSH R0, [R4, R1] \n\
/* 080270ee */ BL func_08026e10 \n\
/* 080270f2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080270f4 */ STRH R2, [R4, 0x2E] \n\
/* 080270f6 */ STRH R2, [R4, 0x30] \n\
/* 080270f8 */ MOVS R0, 0x98 @ Set R0 to 0x98 \n\
/* 080270fa */ STRH R0, [R4, 0x22] \n\
/* 080270fc */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 080270fe */ STRH R1, [R4, 0x24] \n\
/* 08027100 */ STRH R0, [R4, 0x26] \n\
/* 08027102 */ STRH R1, [R4, 0x28] \n\
/* 08027104 */ STRH R0, [R4, 0x2A] \n\
/* 08027106 */ STRH R1, [R4, 0x2C] \n\
/* 08027108 */ LDR R2, =D_030055d0 \n\
/* 0802710a */ LDR R0, [R2] \n\
/* 0802710c */ LDR R1, =0x000003c1 \n\
/* 0802710e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027110 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08027112 */ STRB R2, [R0] \n\
/* 08027114 */ ADD SP, 0x14 \n\
/* 08027116 */ POP {R3-R5} \n\
/* 08027118 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802711a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802711c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802711e */ POP {R4-R7} \n\
/* 08027120 */ POP {R0} \n\
/* 08027122 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
