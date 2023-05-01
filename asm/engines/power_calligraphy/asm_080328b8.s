asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080328b8 \n\
/* 080328b8 */ PUSH {R4-R6, LR} \n\
/* 080328ba */ SUB SP, 0xC \n\
/* 080328bc */ LDR R4, =gCurrentEngineData \n\
/* 080328be */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080328c0 */ BL func_0800c398 \n\
/* 080328c4 */ LDR R2, [R4] \n\
/* 080328c6 */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 080328c8 */ LSLS R1, R1, 0x2 \n\
/* 080328ca */ ADDS R3, R2, R1 @ Set R3 to R2 + R1 \n\
/* 080328cc */ LDRH R1, [R3] \n\
/* 080328ce */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 080328d0 */ STRH R1, [R3] \n\
/* 080328d2 */ LSLS R0, R1, 0x10 \n\
/* 080328d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080328d6 */ BGE branch_080328ee \n\
/* 080328d8 */ MOVS R5, 0xC0 @ Set R5 to 0xC0 \n\
/* 080328da */ LSLS R5, R5, 0x5 \n\
/* 080328dc */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 080328de */ STRH R0, [R3] \n\
/* 080328e0 */ LDR R0, =0x212 \n\
/* 080328e2 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 080328e4 */ LDRB R0, [R2] \n\
/* 080328e6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080328e8 */ EORS R0, R1 @ Set R0 to R0 ^ R1 \n\
/* 080328ea */ STRB R0, [R2] \n\
/* 080328ec */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
 \n\
branch_080328ee: \n\
/* 080328ee */ LDR R1, [R4] \n\
/* 080328f0 */ LDR R2, =0x213 \n\
/* 080328f2 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080328f4 */ LDRB R0, [R0] \n\
/* 080328f6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080328f8 */ BEQ branch_0803290c \n\
/* 080328fa */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080328fc */ BEQ branch_080329d8 \n\
/* 080328fe */ B branch_080329f6 \n\
\n\
.ltorg \n\
 \n\
branch_0803290c: \n\
/* 0803290c */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 0803290e */ LSLS R3, R3, 0x1 \n\
/* 08032910 */ ADDS R4, R1, R3 @ Set R4 to R1 + R3 \n\
/* 08032912 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08032914: \n\
/* 08032914 */ LDR R2, [R4, 0x4] \n\
/* 08032916 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08032918 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0803291a */ STR R1, [R4, 0x4] \n\
/* 0803291c */ LDR R0, =0xb7ff \n\
/* 0803291e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08032920 */ BLE branch_08032928 \n\
/* 08032922 */ LDR R1, =0xffff4020 \n\
/* 08032924 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08032926 */ STR R0, [R4, 0x4] \n\
 \n\
branch_08032928: \n\
/* 08032928 */ LDR R0, =D_03005380 \n\
/* 0803292a */ LDR R0, [R0] \n\
/* 0803292c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803292e */ LDRSH R1, [R4, R2] \n\
/* 08032930 */ LDR R2, [R4, 0x4] \n\
/* 08032932 */ LSLS R2, R2, 0x8 \n\
/* 08032934 */ ASRS R2, R2, 0x10 \n\
/* 08032936 */ BL func_0804d648 \n\
/* 0803293a */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0803293c */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0803293e */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08032940 */ BLS branch_08032914 \n\
/* 08032942 */ CMP R5, 0xB @ Compare R5 and 0xB \n\
/* 08032944 */ BHI branch_08032972 \n\
 \n\
branch_08032946: \n\
/* 08032946 */ LDR R1, [R4, 0x4] \n\
/* 08032948 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803294a */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 0803294c */ STR R0, [R4, 0x4] \n\
/* 0803294e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08032950 */ BGE branch_08032958 \n\
/* 08032952 */ LDR R3, =0xbfe0 \n\
/* 08032954 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08032956 */ STR R0, [R4, 0x4] \n\
 \n\
branch_08032958: \n\
/* 08032958 */ LDR R0, =D_03005380 \n\
/* 0803295a */ LDR R0, [R0] \n\
/* 0803295c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803295e */ LDRSH R1, [R4, R2] \n\
/* 08032960 */ LDR R2, [R4, 0x4] \n\
/* 08032962 */ LSLS R2, R2, 0x8 \n\
/* 08032964 */ ASRS R2, R2, 0x10 \n\
/* 08032966 */ BL func_0804d648 \n\
/* 0803296a */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0803296c */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0803296e */ CMP R5, 0xB @ Compare R5 and 0xB \n\
/* 08032970 */ BLS branch_08032946 \n\
 \n\
branch_08032972: \n\
/* 08032972 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08032974 */ BEQ branch_080329f6 \n\
/* 08032976 */ LDR R0, =gCurrentEngineData \n\
/* 08032978 */ LDR R0, [R0] \n\
/* 0803297a */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 0803297c */ LSLS R3, R3, 0x1 \n\
/* 0803297e */ ADDS R4, R0, R3 @ Set R4 to R0 + R3 \n\
/* 08032980 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08032982 */ LDR R6, =power_calligraphy_people_dance_anim \n\
 \n\
branch_08032984: \n\
/* 08032984 */ LDR R0, =D_03005380 \n\
/* 08032986 */ LDR R0, [R0] \n\
/* 08032988 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803298a */ LDRSH R1, [R4, R2] \n\
/* 0803298c */ LDR R2, =gCurrentEngineData \n\
/* 0803298e */ LDR R2, [R2] \n\
/* 08032990 */ LDR R3, =0x212 \n\
/* 08032992 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08032994 */ LDRB R3, [R2] \n\
/* 08032996 */ LSLS R3, R3, 0x2 \n\
/* 08032998 */ LDRB R2, [R4, 0x2] \n\
/* 0803299a */ LSLS R2, R2, 0x3 \n\
/* 0803299c */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 0803299e */ ADDS R3, R3, R6 @ Set R3 to R3 + R6 \n\
/* 080329a0 */ LDR R2, [R3] \n\
/* 080329a2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080329a4 */ STR R3, [SP] \n\
/* 080329a6 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080329a8 */ STR R3, [SP, 0x4] \n\
/* 080329aa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080329ac */ STR R3, [SP, 0x8] \n\
/* 080329ae */ BL func_0804d8f8 \n\
/* 080329b2 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 080329b4 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080329b6 */ CMP R5, 0xB @ Compare R5 and 0xB \n\
/* 080329b8 */ BLS branch_08032984 \n\
/* 080329ba */ B branch_080329f6 \n\
\n\
.ltorg \n\
 \n\
branch_080329d8: \n\
/* 080329d8 */ LDR R5, =0x215 \n\
/* 080329da */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080329dc */ LDRB R0, [R1] \n\
/* 080329de */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080329e0 */ STRB R0, [R1] \n\
/* 080329e2 */ LSLS R0, R0, 0x18 \n\
/* 080329e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080329e6 */ BNE branch_080329f6 \n\
/* 080329e8 */ LDR R0, [R4] \n\
/* 080329ea */ MOVS R1, 0x85 @ Set R1 to 0x85 \n\
/* 080329ec */ LSLS R1, R1, 0x2 \n\
/* 080329ee */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080329f0 */ LDRB R0, [R0] \n\
/* 080329f2 */ BL func_08032a64 \n\
 \n\
branch_080329f6: \n\
/* 080329f6 */ ADD SP, 0xC \n\
/* 080329f8 */ POP {R4-R6} \n\
/* 080329fa */ POP {R0} \n\
/* 080329fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
