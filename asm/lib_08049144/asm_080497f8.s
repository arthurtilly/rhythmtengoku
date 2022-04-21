asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080497f8 \n\
/* 080497f8 */ PUSH {R4-R7, LR} \n\
/* 080497fa */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080497fc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080497fe */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08049800 */ PUSH {R5-R7} \n\
/* 08049802 */ SUB SP, 0x20 \n\
/* 08049804 */ LDR R0, =D_030064c4 \n\
/* 08049806 */ LDRH R0, [R0] \n\
/* 08049808 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804980a */ BNE branch_0804980e \n\
/* 0804980c */ B branch_08049aba \n\
 \n\
branch_0804980e: \n\
/* 0804980e */ LDR R0, =func_08048b9c \n\
/* 08049810 */ STR R0, [SP] \n\
/* 08049812 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08049814 */ LDR R1, [SP] \n\
/* 08049816 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08049818 */ STR R1, [SP] \n\
/* 0804981a */ LDR R2, =func_080483b8 \n\
/* 0804981c */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0804981e */ STR R2, [SP, 0x4] \n\
/* 08049820 */ LDR R1, =func_08048d58 \n\
/* 08049822 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08049824 */ STR R1, [SP, 0x8] \n\
/* 08049826 */ LDR R2, =func_08048fc0 \n\
/* 08049828 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 0804982a */ STR R2, [SP, 0xC] \n\
/* 0804982c */ LDR R0, =D_03005b88 \n\
/* 0804982e */ LDR R0, [R0] \n\
/* 08049830 */ STR R0, [SP, 0x14] \n\
/* 08049832 */ LDR R0, =D_030064a8 \n\
/* 08049834 */ LDR R0, [R0] \n\
/* 08049836 */ LDR R1, =0x00000103 \n\
/* 08049838 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804983a */ LSRS R3, R0, 0x2 \n\
/* 0804983c */ LDR R4, =D_03005b24 \n\
/* 0804983e */ LDR R0, [R4] \n\
/* 08049840 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 08049842 */ BLS branch_08049846 \n\
/* 08049844 */ LDR R3, [R4] \n\
 \n\
branch_08049846: \n\
/* 08049846 */ LDR R0, =D_03005b40 \n\
/* 08049848 */ LDR R1, =D_030064a0 \n\
/* 0804984a */ LDR R2, [R0] \n\
/* 0804984c */ LDR R0, [R1] \n\
/* 0804984e */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 08049850 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08049852 */ BGE branch_08049858 \n\
/* 08049854 */ LDR R0, [R4] \n\
/* 08049856 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
 \n\
branch_08049858: \n\
/* 08049858 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804985a */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0804985c */ BLE branch_08049860 \n\
/* 0804985e */ SUBS R4, R3, R2 @ Set R4 to R3 - R2 \n\
 \n\
branch_08049860: \n\
/* 08049860 */ LDR R2, =D_03005620 \n\
/* 08049862 */ LDRB R0, [R2] \n\
/* 08049864 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08049866 */ LDR R0, =D_030064c0 \n\
/* 08049868 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804986a */ LDRSB R1, [R0, R1] \n\
/* 0804986c */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804986e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08049870 */ BLT branch_080498b4 \n\
/* 08049872 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08049874 */ LSLS R0, R1, 0x18 \n\
/* 08049876 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049878 */ BGE branch_080498d6 \n\
/* 0804987a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804987c */ STR R0, [R2, 0x4] \n\
/* 0804987e */ B branch_080498d4 \n\
\n\
.ltorg \n\
 \n\
branch_080498b4: \n\
/* 080498b4 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080498b6 */ LSLS R0, R1, 0x18 \n\
/* 080498b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080498ba */ BLT branch_080498d6 \n\
/* 080498bc */ LDR R0, =D_03005638 \n\
/* 080498be */ LDR R0, [R0] \n\
/* 080498c0 */ LDR R1, =D_030064b0 \n\
/* 080498c2 */ LDR R1, [R1] \n\
/* 080498c4 */ LSLS R0, R0, 0x2 \n\
/* 080498c6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080498c8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080498ca */ SUBS R1, 0x8 @ Subtract 0x8 from R1 \n\
/* 080498cc */ LDR R1, [R1] \n\
/* 080498ce */ STR R1, [R2, 0x4] \n\
/* 080498d0 */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 080498d2 */ LDR R0, [R0] \n\
 \n\
branch_080498d4: \n\
/* 080498d4 */ STR R0, [R2, 0x8] \n\
 \n\
branch_080498d6: \n\
/* 080498d6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080498d8 */ STRB R2, [R3] \n\
/* 080498da */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080498dc */ BNE branch_080498e0 \n\
/* 080498de */ B branch_08049aba \n\
 \n\
branch_080498e0: \n\
/* 080498e0 */ LDR R0, =D_03005638 \n\
/* 080498e2 */ LDR R0, [R0] \n\
/* 080498e4 */ LSRS R5, R0, 0x2 \n\
/* 080498e6 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 080498e8 */ BLS branch_080498ec \n\
/* 080498ea */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
 \n\
branch_080498ec: \n\
/* 080498ec */ LDR R1, =func_08048758 \n\
/* 080498ee */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080498f0 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 080498f2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080498f4 */ BL _call_via_r1 \n\
/* 080498f8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080498fa */ STR R1, [SP, 0x10] \n\
/* 080498fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080498fe */ STR R2, [SP, 0x18] \n\
/* 08049900 */ LDR R0, =D_03005620 \n\
/* 08049902 */ LDRB R0, [R0] \n\
/* 08049904 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08049906 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08049908 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0804990a */ SUBS R4, R4, R5 @ Set R4 to R4 - R5 \n\
/* 0804990c */ STR R4, [SP, 0x1C] \n\
/* 0804990e */ LDR R0, =D_03005610 \n\
/* 08049910 */ LDRH R0, [R0] \n\
/* 08049912 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 08049914 */ BCS branch_080499c8 \n\
/* 08049916 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08049918 */ LSLS R0, R0, 0x1 \n\
/* 0804991a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804991c */ SUBS R1, R0, R1 @ Set R1 to R0 - R1 \n\
/* 0804991e */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08049920 */ LDR R6, [SP, 0x14] \n\
/* 08049922 */ ADDS R4, R6, 0x0 @ Set R4 to R6 + 0x0 \n\
 \n\
branch_08049924: \n\
/* 08049924 */ LDRB R1, [R6] \n\
/* 08049926 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08049928 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804992a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804992c */ BEQ branch_080499ba \n\
/* 0804992e */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08049930 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08049932 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049934 */ BNE branch_0804993e \n\
/* 08049936 */ LDR R0, =D_03005b44 \n\
/* 08049938 */ LDRB R0, [R0] \n\
/* 0804993a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804993c */ BEQ branch_080499ba \n\
 \n\
branch_0804993e: \n\
/* 0804993e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08049940 */ STR R2, [SP, 0x10] \n\
/* 08049942 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08049944 */ STR R0, [SP, 0x18] \n\
/* 08049946 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08049948 */ LSLS R0, R1, 0x18 \n\
/* 0804994a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804994c */ BGE branch_08049960 \n\
/* 0804994e */ LDRB R0, [R6, 0x1] \n\
/* 08049950 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08049952 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08049954 */ LDR R0, =D_03005b28 \n\
/* 08049956 */ LDRB R0, [R0] \n\
/* 08049958 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0804995a */ LSLS R0, R0, 0x9 \n\
/* 0804995c */ LSRS R0, R0, 0x10 \n\
/* 0804995e */ MOV R9, R0 @ Set R9 to R0 \n\
 \n\
branch_08049960: \n\
/* 08049960 */ LDR R0, =D_030064ac \n\
/* 08049962 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08049964 */ STRH R2, [R0] \n\
/* 08049966 */ LDRB R1, [R6] \n\
/* 08049968 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804996a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804996c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804996e */ BNE branch_0804999c \n\
/* 08049970 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08049972 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08049974 */ LDR R2, [SP] \n\
/* 08049976 */ BL _call_via_r2 \n\
/* 0804997a */ B branch_080499ba \n\
\n\
.ltorg \n\
 \n\
branch_0804999c: \n\
/* 0804999c */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0804999e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080499a0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080499a2 */ BEQ branch_080499b0 \n\
/* 080499a4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080499a6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080499a8 */ LDR R2, [SP, 0x8] \n\
/* 080499aa */ BL _call_via_r2 \n\
/* 080499ae */ B branch_080499ba \n\
 \n\
branch_080499b0: \n\
/* 080499b0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080499b2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080499b4 */ LDR R2, [SP, 0x4] \n\
/* 080499b6 */ BL _call_via_r2 \n\
 \n\
branch_080499ba: \n\
/* 080499ba */ ADDS R6, 0x20 @ Add 0x20 to R6 \n\
/* 080499bc */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 080499be */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 080499c0 */ LDR R0, =D_03005610 \n\
/* 080499c2 */ LDRH R0, [R0] \n\
/* 080499c4 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 080499c6 */ BCC branch_08049924 \n\
 \n\
branch_080499c8: \n\
/* 080499c8 */ LDR R1, [SP, 0x18] \n\
/* 080499ca */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080499cc */ BEQ branch_080499d8 \n\
/* 080499ce */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080499d0 */ LDR R1, =D_03005620 \n\
/* 080499d2 */ LDR R2, [SP, 0xC] \n\
/* 080499d4 */ BL _call_via_r2 \n\
 \n\
branch_080499d8: \n\
/* 080499d8 */ LDR R1, =D_030064ac \n\
/* 080499da */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080499dc */ STRH R0, [R1] \n\
/* 080499de */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 080499e0 */ LDR R0, =D_03005610 \n\
/* 080499e2 */ LDRH R0, [R0] \n\
/* 080499e4 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 080499e6 */ BCS branch_08049a56 \n\
/* 080499e8 */ LDR R4, [SP, 0x14] \n\
 \n\
branch_080499ea: \n\
/* 080499ea */ LDRB R1, [R4] \n\
/* 080499ec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080499ee */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080499f0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080499f2 */ BEQ branch_08049a4a \n\
/* 080499f4 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080499f6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080499f8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080499fa */ BNE branch_08049a4a \n\
/* 080499fc */ LDR R0, =D_03005b44 \n\
/* 080499fe */ LDRB R0, [R0] \n\
/* 08049a00 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049a02 */ BNE branch_08049a4a \n\
/* 08049a04 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08049a06 */ STR R2, [SP, 0x10] \n\
/* 08049a08 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08049a0a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08049a0c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049a0e */ BNE branch_08049a2c \n\
/* 08049a10 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08049a12 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08049a14 */ LDR R2, [SP] \n\
/* 08049a16 */ BL _call_via_r2 \n\
/* 08049a1a */ B branch_08049a4a \n\
\n\
.ltorg \n\
 \n\
branch_08049a2c: \n\
/* 08049a2c */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08049a2e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08049a30 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049a32 */ BEQ branch_08049a40 \n\
/* 08049a34 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08049a36 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08049a38 */ LDR R2, [SP, 0x8] \n\
/* 08049a3a */ BL _call_via_r2 \n\
/* 08049a3e */ B branch_08049a4a \n\
 \n\
branch_08049a40: \n\
/* 08049a40 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08049a42 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08049a44 */ LDR R2, [SP, 0x4] \n\
/* 08049a46 */ BL _call_via_r2 \n\
 \n\
branch_08049a4a: \n\
/* 08049a4a */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08049a4c */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08049a4e */ LDR R0, =D_03005610 \n\
/* 08049a50 */ LDRH R0, [R0] \n\
/* 08049a52 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 08049a54 */ BCC branch_080499ea \n\
 \n\
branch_08049a56: \n\
/* 08049a56 */ LDR R0, =D_03005720 \n\
/* 08049a58 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08049a5a */ LDR R2, [SP, 0x10] \n\
/* 08049a5c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08049a5e */ BNE branch_08049a66 \n\
/* 08049a60 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08049a62 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08049a64 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
 \n\
branch_08049a66: \n\
/* 08049a66 */ LDR R2, =0x000003ff \n\
/* 08049a68 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08049a6a */ STRB R1, [R0] \n\
/* 08049a6c */ LDR R1, =func_08048a00 \n\
/* 08049a6e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08049a70 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08049a72 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08049a74 */ BL _call_via_r1 \n\
/* 08049a78 */ LDR R0, =D_03005b40 \n\
/* 08049a7a */ LDR R0, [R0] \n\
/* 08049a7c */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 08049a7e */ LDR R2, =D_03005b24 \n\
/* 08049a80 */ B branch_08049aa0 \n\
\n\
.ltorg \n\
 \n\
branch_08049a9c: \n\
/* 08049a9c */ LDR R0, [R2] \n\
/* 08049a9e */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
 \n\
branch_08049aa0: \n\
/* 08049aa0 */ LDR R0, [R2] \n\
/* 08049aa2 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08049aa4 */ BCS branch_08049a9c \n\
/* 08049aa6 */ LDR R0, =D_03005b40 \n\
/* 08049aa8 */ STR R1, [R0] \n\
/* 08049aaa */ LDR R4, [SP, 0x1C] \n\
/* 08049aac */ LDR R1, =D_03005b84 \n\
/* 08049aae */ LDR R0, =0x04000006 @ !Hardware REG_VCOUNT \n\
/* 08049ab0 */ LDRH R0, [R0] \n\
/* 08049ab2 */ STRH R0, [R1] \n\
/* 08049ab4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08049ab6 */ BEQ branch_08049aba \n\
/* 08049ab8 */ B branch_080498e0 \n\
 \n\
branch_08049aba: \n\
/* 08049aba */ ADD SP, 0x20 \n\
/* 08049abc */ POP {R3-R5} \n\
/* 08049abe */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08049ac0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08049ac2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08049ac4 */ POP {R4-R7} \n\
/* 08049ac6 */ POP {R0} \n\
/* 08049ac8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
