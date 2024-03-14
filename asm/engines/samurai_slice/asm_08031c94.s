asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08031c94 \n\
/* 08031c94 */ PUSH {R4-R7, LR} \n\
/* 08031c96 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08031c98 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08031c9a */ PUSH {R6, R7} \n\
/* 08031c9c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08031c9e */ LDR R0, [R7, 0x24] \n\
/* 08031ca0 */ LSLS R4, R0, 0x3 \n\
/* 08031ca2 */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 08031ca4 */ LSLS R4, R4, 0x2 \n\
/* 08031ca6 */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 08031ca8 */ LSLS R0, R4, 0xB \n\
/* 08031caa */ LDR R5, [R7, 0x28] \n\
/* 08031cac */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08031cae */ BL __divsi3 \n\
/* 08031cb2 */ STR R0, [R7, 0x18] \n\
/* 08031cb4 */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 08031cb6 */ LSLS R1, R1, 0x8 \n\
/* 08031cb8 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031cba */ STR R1, [R7, 0x8] \n\
/* 08031cbc */ LSLS R4, R4, 0x9 \n\
/* 08031cbe */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08031cc0 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08031cc2 */ BL __divsi3 \n\
/* 08031cc6 */ STR R0, [R7, 0x1C] \n\
/* 08031cc8 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08031cca */ LSLS R1, R1, 0x6 \n\
/* 08031ccc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08031cce */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08031cd0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08031cd2 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 08031cd4 */ LDRB R0, [R0] \n\
/* 08031cd6 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08031cd8 */ BLS branch_08031cdc \n\
/* 08031cda */ B branch_08031f5c \n\
 \n\
branch_08031cdc: \n\
/* 08031cdc */ LSLS R0, R0, 0x2 \n\
/* 08031cde */ LDR R1, =jtbl_08031cec \n\
/* 08031ce0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08031ce2 */ LDR R0, [R0] \n\
/* 08031ce4 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08031cec: \n\
.word jump_08031d04 \n\
.word jump_08031dce \n\
.word jump_08031e78 \n\
.word jump_08031e78 \n\
.word jump_08031f04 \n\
.word jump_08031f04 \n\
jump_08031d04: \n\
/* 08031d04 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031d06 */ BL ticks_to_frames \n\
/* 08031d0a */ LDR R1, [R7, 0x24] \n\
/* 08031d0c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031d0e */ BGE branch_08031d18 \n\
/* 08031d10 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031d12 */ BL func_08031c68 \n\
/* 08031d16 */ B branch_08031f5a \n\
 \n\
branch_08031d18: \n\
/* 08031d18 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031d1a */ BL ticks_to_frames \n\
/* 08031d1e */ LDR R1, [R7, 0x24] \n\
/* 08031d20 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031d22 */ BGE branch_08031d36 \n\
/* 08031d24 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031d26 */ BL ticks_to_frames \n\
/* 08031d2a */ LDR R1, [R7, 0x24] \n\
/* 08031d2c */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031d2e */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031d30 */ BL func_08031c68 \n\
/* 08031d34 */ B branch_08031f5a \n\
 \n\
branch_08031d36: \n\
/* 08031d36 */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 08031d38 */ BL ticks_to_frames \n\
/* 08031d3c */ LDR R1, [R7, 0x24] \n\
/* 08031d3e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031d40 */ BGE branch_08031d54 \n\
/* 08031d42 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031d44 */ BL ticks_to_frames \n\
/* 08031d48 */ LDR R1, [R7, 0x24] \n\
/* 08031d4a */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031d4c */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031d4e */ BL func_08031c68 \n\
/* 08031d52 */ B branch_08031f5a \n\
 \n\
branch_08031d54: \n\
/* 08031d54 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08031d56 */ BL ticks_to_frames \n\
/* 08031d5a */ LDR R1, [R7, 0x24] \n\
/* 08031d5c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031d5e */ BGE branch_08031d72 \n\
/* 08031d60 */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 08031d62 */ BL ticks_to_frames \n\
/* 08031d66 */ LDR R1, [R7, 0x24] \n\
/* 08031d68 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031d6a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031d6c */ BL func_08031c68 \n\
/* 08031d70 */ B branch_08031f5a \n\
 \n\
branch_08031d72: \n\
/* 08031d72 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08031d74 */ BL ticks_to_frames \n\
/* 08031d78 */ LDR R1, [R7, 0x24] \n\
/* 08031d7a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031d7c */ BGE branch_08031d90 \n\
/* 08031d7e */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08031d80 */ BL ticks_to_frames \n\
/* 08031d84 */ LDR R1, [R7, 0x24] \n\
/* 08031d86 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031d88 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031d8a */ BL func_08031c68 \n\
/* 08031d8e */ B branch_08031f5a \n\
 \n\
branch_08031d90: \n\
/* 08031d90 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 08031d92 */ BL ticks_to_frames \n\
/* 08031d96 */ LDR R1, [R7, 0x24] \n\
/* 08031d98 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031d9a */ BGE branch_08031dae \n\
/* 08031d9c */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08031d9e */ BL ticks_to_frames \n\
/* 08031da2 */ LDR R1, [R7, 0x24] \n\
/* 08031da4 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031da6 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031da8 */ BL func_08031c68 \n\
/* 08031dac */ B branch_08031f5a \n\
 \n\
branch_08031dae: \n\
/* 08031dae */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08031db0 */ BL ticks_to_frames \n\
/* 08031db4 */ LDR R1, [R7, 0x24] \n\
/* 08031db6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031db8 */ BLT branch_08031dbc \n\
/* 08031dba */ B branch_08031f58 \n\
 \n\
branch_08031dbc: \n\
/* 08031dbc */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08031dbe */ BL ticks_to_frames \n\
/* 08031dc2 */ LDR R1, [R7, 0x24] \n\
/* 08031dc4 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031dc6 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031dc8 */ BL func_08031c68 \n\
/* 08031dcc */ B branch_08031f5a \n\
jump_08031dce: \n\
/* 08031dce */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031dd0 */ BL ticks_to_frames \n\
/* 08031dd4 */ LDR R1, [R7, 0x24] \n\
/* 08031dd6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031dd8 */ BGE branch_08031de2 \n\
/* 08031dda */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031ddc */ BL func_08031c68 \n\
/* 08031de0 */ B branch_08031f5a \n\
 \n\
branch_08031de2: \n\
/* 08031de2 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031de4 */ BL ticks_to_frames \n\
/* 08031de8 */ LDR R1, [R7, 0x24] \n\
/* 08031dea */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031dec */ BGE branch_08031e00 \n\
/* 08031dee */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031df0 */ BL ticks_to_frames \n\
/* 08031df4 */ LDR R1, [R7, 0x24] \n\
/* 08031df6 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031df8 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031dfa */ BL func_08031c68 \n\
/* 08031dfe */ B branch_08031f5a \n\
 \n\
branch_08031e00: \n\
/* 08031e00 */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 08031e02 */ BL ticks_to_frames \n\
/* 08031e06 */ LDR R1, [R7, 0x24] \n\
/* 08031e08 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031e0a */ BGE branch_08031e1e \n\
/* 08031e0c */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031e0e */ BL ticks_to_frames \n\
/* 08031e12 */ LDR R1, [R7, 0x24] \n\
/* 08031e14 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031e16 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031e18 */ BL func_08031c68 \n\
/* 08031e1c */ B branch_08031f5a \n\
 \n\
branch_08031e1e: \n\
/* 08031e1e */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08031e20 */ BL ticks_to_frames \n\
/* 08031e24 */ LDR R1, [R7, 0x24] \n\
/* 08031e26 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031e28 */ BGE branch_08031e3c \n\
/* 08031e2a */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 08031e2c */ BL ticks_to_frames \n\
/* 08031e30 */ LDR R1, [R7, 0x24] \n\
/* 08031e32 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031e34 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08031e36 */ BL func_08031c68 \n\
/* 08031e3a */ B branch_08031f5a \n\
 \n\
branch_08031e3c: \n\
/* 08031e3c */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08031e3e */ BL ticks_to_frames \n\
/* 08031e42 */ LDR R1, [R7, 0x24] \n\
/* 08031e44 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031e46 */ BGE branch_08031e5a \n\
/* 08031e48 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08031e4a */ BL ticks_to_frames \n\
/* 08031e4e */ LDR R1, [R7, 0x24] \n\
/* 08031e50 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031e52 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031e54 */ BL func_08031c68 \n\
/* 08031e58 */ B branch_08031f5a \n\
 \n\
branch_08031e5a: \n\
/* 08031e5a */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08031e5c */ BL ticks_to_frames \n\
/* 08031e60 */ LDR R1, [R7, 0x24] \n\
/* 08031e62 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031e64 */ BGE branch_08031f58 \n\
/* 08031e66 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08031e68 */ BL ticks_to_frames \n\
/* 08031e6c */ LDR R1, [R7, 0x24] \n\
/* 08031e6e */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031e70 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031e72 */ BL func_08031c68 \n\
/* 08031e76 */ B branch_08031f5a \n\
jump_08031e78: \n\
/* 08031e78 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08031e7a */ BL ticks_to_frames \n\
/* 08031e7e */ LDR R1, [R7, 0x24] \n\
/* 08031e80 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031e82 */ BLT branch_08031ea2 \n\
/* 08031e84 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08031e86 */ BL ticks_to_frames \n\
/* 08031e8a */ LDR R1, [R7, 0x24] \n\
/* 08031e8c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031e8e */ BGE branch_08031ea2 \n\
/* 08031e90 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08031e92 */ BL ticks_to_frames \n\
/* 08031e96 */ LDR R1, [R7, 0x24] \n\
/* 08031e98 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031e9a */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031e9c */ BL func_08031c68 \n\
/* 08031ea0 */ B branch_08031f5a \n\
 \n\
branch_08031ea2: \n\
/* 08031ea2 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031ea4 */ BL ticks_to_frames \n\
/* 08031ea8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08031eaa */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031eac */ BL ticks_to_frames \n\
/* 08031eb0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08031eb2 */ LDR R2, =gSineTable \n\
/* 08031eb4 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08031eb6 */ LDR R5, [R7, 0x24] \n\
/* 08031eb8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08031eba */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08031ebc */ BL __modsi3 \n\
/* 08031ec0 */ LSLS R0, R0, 0xB \n\
/* 08031ec2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08031ec4 */ BL __divsi3 \n\
/* 08031ec8 */ LDR R1, =0x7ff \n\
/* 08031eca */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08031ecc */ LSLS R1, R1, 0x1 \n\
/* 08031ece */ ADD R1, R8 @ Add R8 to R1 \n\
/* 08031ed0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08031ed2 */ LDRSH R4, [R1, R0] \n\
/* 08031ed4 */ LSLS R4, R4, 0x3 \n\
/* 08031ed6 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08031ed8 */ LSLS R1, R1, 0x6 \n\
/* 08031eda */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08031edc */ STR R0, [R7, 0x20] \n\
/* 08031ede */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08031ee0 */ LSLS R2, R2, 0x4 \n\
/* 08031ee2 */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 08031ee4 */ LSLS R0, R5, 0x2 \n\
/* 08031ee6 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08031ee8 */ LSLS R0, R0, 0xE \n\
/* 08031eea */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08031eec */ LDR R2, [R7, 0x28] \n\
/* 08031eee */ LSLS R1, R2, 0x2 \n\
/* 08031ef0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08031ef2 */ BL __divsi3 \n\
/* 08031ef6 */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 08031ef8 */ STR R4, [R7, 0x20] \n\
/* 08031efa */ B branch_08031f5c \n\
\n\
.ltorg \n\
jump_08031f04: \n\
/* 08031f04 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08031f06 */ BL ticks_to_frames \n\
/* 08031f0a */ LDR R1, [R7, 0x24] \n\
/* 08031f0c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031f0e */ BLT branch_08031f2e \n\
/* 08031f10 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 08031f12 */ BL ticks_to_frames \n\
/* 08031f16 */ LDR R1, [R7, 0x24] \n\
/* 08031f18 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031f1a */ BGE branch_08031f2e \n\
/* 08031f1c */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08031f1e */ BL ticks_to_frames \n\
/* 08031f22 */ LDR R1, [R7, 0x24] \n\
/* 08031f24 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031f26 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031f28 */ BL func_08031c68 \n\
/* 08031f2c */ B branch_08031f5a \n\
 \n\
branch_08031f2e: \n\
/* 08031f2e */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 08031f30 */ BL ticks_to_frames \n\
/* 08031f34 */ LDR R1, [R7, 0x24] \n\
/* 08031f36 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031f38 */ BLT branch_08031f58 \n\
/* 08031f3a */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08031f3c */ BL ticks_to_frames \n\
/* 08031f40 */ LDR R1, [R7, 0x24] \n\
/* 08031f42 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031f44 */ BGE branch_08031f58 \n\
/* 08031f46 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08031f48 */ BL ticks_to_frames \n\
/* 08031f4c */ LDR R1, [R7, 0x24] \n\
/* 08031f4e */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08031f50 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08031f52 */ BL func_08031c68 \n\
/* 08031f56 */ B branch_08031f5a \n\
 \n\
branch_08031f58: \n\
/* 08031f58 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08031f5a: \n\
/* 08031f5a */ STR R0, [R7, 0x20] \n\
 \n\
branch_08031f5c: \n\
/* 08031f5c */ LDR R0, [R7, 0x20] \n\
/* 08031f5e */ MOV R4, R9 @ Set R4 to R9 \n\
/* 08031f60 */ SUBS R0, R4, R0 @ Set R0 to R4 - R0 \n\
/* 08031f62 */ STR R0, [R7, 0xC] \n\
/* 08031f64 */ LDR R0, =0xfffffc00 \n\
/* 08031f66 */ ADD R9, R0 @ Add R0 to R9 \n\
/* 08031f68 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08031f6a */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 08031f6c */ LDRB R0, [R0] \n\
/* 08031f6e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08031f70 */ BGT branch_08032012 \n\
/* 08031f72 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08031f74 */ BLT branch_08032012 \n\
/* 08031f76 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08031f78 */ BL ticks_to_frames \n\
/* 08031f7c */ LDR R1, [R7, 0x24] \n\
/* 08031f7e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031f80 */ BLE branch_08031fb8 \n\
/* 08031f82 */ LDR R0, [R7, 0x20] \n\
/* 08031f84 */ ASRS R1, R0, 0x8 \n\
/* 08031f86 */ MOVS R0, 0x38 @ Set R0 to 0x38 \n\
/* 08031f88 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08031f8a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031f8c */ BLT branch_08031ff0 \n\
/* 08031f8e */ MOVS R0, 0x3A @ Set R0 to 0x3A \n\
/* 08031f90 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08031f92 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031f94 */ BLT branch_08031fd8 \n\
/* 08031f96 */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 08031f98 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08031f9a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031f9c */ BLT branch_08031fc0 \n\
/* 08031f9e */ LDR R0, =gSpriteHandler \n\
/* 08031fa0 */ LDR R0, [R0] \n\
/* 08031fa2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08031fa4 */ LDRSH R1, [R7, R4] \n\
/* 08031fa6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031fa8 */ BL sprite_set_anim_cel \n\
/* 08031fac */ B branch_08032012 \n\
\n\
.ltorg \n\
 \n\
branch_08031fb8: \n\
/* 08031fb8 */ LDR R0, [R7, 0x20] \n\
/* 08031fba */ ASRS R0, R0, 0x8 \n\
/* 08031fbc */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08031fbe */ BGT branch_08031fd4 \n\
 \n\
branch_08031fc0: \n\
/* 08031fc0 */ LDR R0, =gSpriteHandler \n\
/* 08031fc2 */ LDR R0, [R0] \n\
/* 08031fc4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031fc6 */ LDRSH R1, [R7, R2] \n\
/* 08031fc8 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08031fca */ BL sprite_set_anim_cel \n\
/* 08031fce */ B branch_08032012 \n\
\n\
.ltorg \n\
 \n\
branch_08031fd4: \n\
/* 08031fd4 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08031fd6 */ BGT branch_08031fec \n\
 \n\
branch_08031fd8: \n\
/* 08031fd8 */ LDR R0, =gSpriteHandler \n\
/* 08031fda */ LDR R0, [R0] \n\
/* 08031fdc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08031fde */ LDRSH R1, [R7, R4] \n\
/* 08031fe0 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08031fe2 */ BL sprite_set_anim_cel \n\
/* 08031fe6 */ B branch_08032012 \n\
\n\
.ltorg \n\
 \n\
branch_08031fec: \n\
/* 08031fec */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08031fee */ BGT branch_08032004 \n\
 \n\
branch_08031ff0: \n\
/* 08031ff0 */ LDR R0, =gSpriteHandler \n\
/* 08031ff2 */ LDR R0, [R0] \n\
/* 08031ff4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031ff6 */ LDRSH R1, [R7, R2] \n\
/* 08031ff8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08031ffa */ BL sprite_set_anim_cel \n\
/* 08031ffe */ B branch_08032012 \n\
\n\
.ltorg \n\
 \n\
branch_08032004: \n\
/* 08032004 */ LDR R0, =gSpriteHandler \n\
/* 08032006 */ LDR R0, [R0] \n\
/* 08032008 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803200a */ LDRSH R1, [R7, R4] \n\
/* 0803200c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803200e */ BL sprite_set_anim_cel \n\
 \n\
branch_08032012: \n\
/* 08032012 */ LDR R4, =gSpriteHandler \n\
/* 08032014 */ LDR R0, [R4] \n\
/* 08032016 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032018 */ LDRSH R1, [R7, R2] \n\
/* 0803201a */ LDR R2, [R7, 0x8] \n\
/* 0803201c */ LSLS R2, R2, 0x8 \n\
/* 0803201e */ ASRS R2, R2, 0x10 \n\
/* 08032020 */ LDR R3, [R7, 0xC] \n\
/* 08032022 */ LSLS R3, R3, 0x8 \n\
/* 08032024 */ ASRS R3, R3, 0x10 \n\
/* 08032026 */ BL sprite_set_x_y \n\
/* 0803202a */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0803202c */ BL ticks_to_frames \n\
/* 08032030 */ LDR R1, [R7, 0x24] \n\
/* 08032032 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08032034 */ BLE branch_0803203c \n\
/* 08032036 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08032038 */ LSLS R0, R0, 0x7 \n\
/* 0803203a */ ADD R9, R0 @ Add R0 to R9 \n\
 \n\
branch_0803203c: \n\
/* 0803203c */ LDR R0, [R4] \n\
/* 0803203e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08032040 */ LDRSH R1, [R7, R2] \n\
/* 08032042 */ LDR R2, [R7, 0x8] \n\
/* 08032044 */ LSLS R2, R2, 0x8 \n\
/* 08032046 */ ASRS R2, R2, 0x10 \n\
/* 08032048 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0803204a */ LSLS R3, R4, 0x8 \n\
/* 0803204c */ ASRS R3, R3, 0x10 \n\
/* 0803204e */ BL sprite_set_x_y \n\
/* 08032052 */ LDR R1, [R7, 0x18] \n\
/* 08032054 */ MOVS R0, 0xD8 @ Set R0 to 0xD8 \n\
/* 08032056 */ LSLS R0, R0, 0x8 \n\
/* 08032058 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0803205a */ BLE branch_08032060 \n\
/* 0803205c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803205e */ STRB R0, [R7, 0x4] \n\
 \n\
branch_08032060: \n\
/* 08032060 */ POP {R3, R4} \n\
/* 08032062 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08032064 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08032066 */ POP {R4-R7} \n\
/* 08032068 */ POP {R0} \n\
/* 0803206a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
