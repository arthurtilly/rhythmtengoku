asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080287b4 \n\
/* 080287b4 */ PUSH {R4-R7, LR} \n\
/* 080287b6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080287b8 */ PUSH {R7} \n\
/* 080287ba */ SUB SP, 0xC \n\
/* 080287bc */ LDR R0, =D_030055d0 \n\
/* 080287be */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080287c0 */ LDR R4, [R0] \n\
/* 080287c2 */ MOVS R1, 0xD5 @ Set R1 to 0xD5 \n\
/* 080287c4 */ LSLS R1, R1, 0x2 \n\
/* 080287c6 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 080287c8 */ LDR R5, =D_03005380 \n\
/* 080287ca */ LDR R0, [R5] \n\
/* 080287cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080287ce */ LDRSH R1, [R4, R2] \n\
/* 080287d0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080287d2 */ BL func_0804d770 \n\
/* 080287d6 */ LDR R0, [R5] \n\
/* 080287d8 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080287da */ LDRSH R1, [R4, R2] \n\
/* 080287dc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080287de */ BL func_0804d770 \n\
/* 080287e2 */ LDR R0, [R5] \n\
/* 080287e4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080287e6 */ LDRSH R1, [R4, R2] \n\
/* 080287e8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080287ea */ BL func_0804d770 \n\
/* 080287ee */ LDR R0, [R5] \n\
/* 080287f0 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080287f2 */ LDRSH R1, [R4, R2] \n\
/* 080287f4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080287f6 */ BL func_0804d770 \n\
/* 080287fa */ LDR R0, [R5] \n\
/* 080287fc */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080287fe */ LDRSH R1, [R4, R2] \n\
/* 08028800 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028802 */ BL func_0804d770 \n\
/* 08028806 */ LDR R0, [R5] \n\
/* 08028808 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0802880a */ LDRSH R1, [R4, R2] \n\
/* 0802880c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802880e */ BL func_0804d770 \n\
/* 08028812 */ LDR R0, [R5] \n\
/* 08028814 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08028816 */ LDRSH R1, [R4, R2] \n\
/* 08028818 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802881a */ BL func_0804d770 \n\
/* 0802881e */ LDR R0, [R5] \n\
/* 08028820 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 08028822 */ LDRSH R1, [R4, R2] \n\
/* 08028824 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028826 */ BL func_0804d770 \n\
/* 0802882a */ LDR R0, [R5] \n\
/* 0802882c */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802882e */ LDRSH R1, [R4, R2] \n\
/* 08028830 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08028832 */ STR R6, [SP] \n\
/* 08028834 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028836 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08028838 */ BL func_0804dae0 \n\
/* 0802883c */ LDR R0, [R5] \n\
/* 0802883e */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08028840 */ LDRSH R1, [R4, R2] \n\
/* 08028842 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08028844 */ BL func_0804cebc \n\
/* 08028848 */ LDR R0, [R5] \n\
/* 0802884a */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0802884c */ LDRSH R1, [R4, R2] \n\
/* 0802884e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028850 */ BL func_0804d770 \n\
/* 08028854 */ LDR R0, [R5] \n\
/* 08028856 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08028858 */ LDRSH R1, [R4, R2] \n\
/* 0802885a */ STR R6, [SP] \n\
/* 0802885c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802885e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08028860 */ BL func_0804dae0 \n\
/* 08028864 */ LDR R0, [R5] \n\
/* 08028866 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 08028868 */ LDRSH R1, [R4, R2] \n\
/* 0802886a */ LDR R5, =D_088c6190 \n\
/* 0802886c */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0802886e */ STR R7, [SP] \n\
/* 08028870 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08028872 */ STR R2, [SP, 0x4] \n\
/* 08028874 */ STR R6, [SP, 0x8] \n\
/* 08028876 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08028878 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802887a */ BL func_0804d8f8 \n\
/* 0802887e */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 08028880 */ LDRSH R0, [R4, R1] \n\
/* 08028882 */ BL func_0802af68 \n\
/* 08028886 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08028888 */ LDRSH R0, [R4, R2] \n\
/* 0802888a */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 0802888c */ LDRSH R1, [R4, R2] \n\
/* 0802888e */ LDR R3, =D_088c6520 \n\
/* 08028890 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08028892 */ BL func_0802af7c \n\
/* 08028896 */ LDR R1, =D_089e2988 \n\
/* 08028898 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802889a */ LDR R0, [R2] \n\
/* 0802889c */ MOVS R5, 0xE2 @ Set R5 to 0xE2 \n\
/* 0802889e */ LSLS R5, R5, 0x2 \n\
/* 080288a0 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080288a2 */ LDRB R0, [R0] \n\
/* 080288a4 */ LSLS R0, R0, 0x2 \n\
/* 080288a6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080288a8 */ LDR R0, [R0] \n\
/* 080288aa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080288ac */ BEQ branch_080288b4 \n\
/* 080288ae */ ORRS R0, R7 @ Set R0 to R0 | R7 \n\
/* 080288b0 */ BL func_0804eaec \n\
 \n\
branch_080288b4: \n\
/* 080288b4 */ LDR R1, =D_089e29c8 \n\
/* 080288b6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080288b8 */ LDR R4, [R0] \n\
/* 080288ba */ ADDS R0, R4, R5 @ Set R0 to R4 + R5 \n\
/* 080288bc */ LDRB R0, [R0] \n\
/* 080288be */ LSLS R0, R0, 0x2 \n\
/* 080288c0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080288c2 */ LDR R3, [R0] \n\
/* 080288c4 */ LDR R1, [R3] \n\
/* 080288c6 */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 080288c8 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080288ca */ LSRS R2, R0, 0x1F \n\
/* 080288cc */ LDR R0, [R3, 0x4] \n\
/* 080288ce */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080288d0 */ BEQ branch_080288d6 \n\
/* 080288d2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080288d4 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
 \n\
branch_080288d6: \n\
/* 080288d6 */ LDR R0, [R3, 0x8] \n\
/* 080288d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080288da */ BEQ branch_080288e0 \n\
/* 080288dc */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 080288de */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
 \n\
branch_080288e0: \n\
/* 080288e0 */ LDR R0, [R3, 0xC] \n\
/* 080288e2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080288e4 */ BEQ branch_080288ea \n\
/* 080288e6 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080288e8 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
 \n\
branch_080288ea: \n\
/* 080288ea */ LDR R0, [R3, 0x10] \n\
/* 080288ec */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080288ee */ BEQ branch_080288f4 \n\
/* 080288f0 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 080288f2 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
 \n\
branch_080288f4: \n\
/* 080288f4 */ LDR R0, [R3, 0x14] \n\
/* 080288f6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080288f8 */ BEQ branch_080288fe \n\
/* 080288fa */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080288fc */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
 \n\
branch_080288fe: \n\
/* 080288fe */ LDR R0, [R3, 0x18] \n\
/* 08028900 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08028902 */ BEQ branch_0802890a \n\
/* 08028904 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08028906 */ LSLS R0, R0, 0x2 \n\
/* 08028908 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
 \n\
branch_0802890a: \n\
/* 0802890a */ LDR R0, [R3, 0x1C] \n\
/* 0802890c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802890e */ BEQ branch_08028916 \n\
/* 08028910 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08028912 */ LSLS R0, R0, 0x1 \n\
/* 08028914 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
 \n\
branch_08028916: \n\
/* 08028916 */ LDR R1, =0x000003c2 \n\
/* 08028918 */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 0802891a */ STRH R2, [R0] \n\
/* 0802891c */ LSLS R0, R2, 0x10 \n\
/* 0802891e */ LSRS R0, R0, 0x10 \n\
/* 08028920 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08028922 */ BL func_08017338 \n\
/* 08028926 */ ADD SP, 0xC \n\
/* 08028928 */ POP {R3} \n\
/* 0802892a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802892c */ POP {R4-R7} \n\
/* 0802892e */ POP {R0} \n\
/* 08028930 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
