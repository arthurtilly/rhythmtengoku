asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040718 \n\
/* 08040718 */ PUSH {R4-R7, LR} \n\
/* 0804071a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804071c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804071e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08040720 */ PUSH {R5-R7} \n\
/* 08040722 */ SUB SP, 0x18 \n\
/* 08040724 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08040726 */ STR R0, [SP, 0xC] \n\
 \n\
branch_08040728: \n\
/* 08040728 */ LDR R1, =gCurrentEngineData \n\
/* 0804072a */ LDR R3, [R1] \n\
/* 0804072c */ LDR R2, [SP, 0xC] \n\
/* 0804072e */ LSLS R1, R2, 0x2 \n\
/* 08040730 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08040732 */ LSLS R7, R0, 0x2 \n\
/* 08040734 */ ADDS R4, R3, R7 @ Set R4 to R3 + R7 \n\
/* 08040736 */ LDRB R0, [R4, 0x6] \n\
/* 08040738 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804073a */ STR R1, [SP, 0x14] \n\
/* 0804073c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804073e */ BNE branch_080407b8 \n\
/* 08040740 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08040742 */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 08040744 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08040746 */ LDR R0, [R1] \n\
/* 08040748 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804074a */ STR R0, [R1] \n\
/* 0804074c */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804074e */ BL ticks_to_frames \n\
/* 08040752 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08040754 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08040756 */ BL ticks_to_frames \n\
/* 0804075a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804075c */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804075e */ BL ticks_to_frames \n\
/* 08040762 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08040764 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08040766 */ BL ticks_to_frames \n\
/* 0804076a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804076c */ LDR R3, =gCurrentEngineData \n\
/* 0804076e */ LDR R4, [R3] \n\
/* 08040770 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 08040772 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 08040774 */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 08040776 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08040778 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0804077a */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0804077c */ LDR R0, [R0] \n\
/* 0804077e */ SUBS R6, R0, R6 @ Set R6 to R0 - R6 \n\
/* 08040780 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08040782 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 08040784 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 08040786 */ LSLS R0, R0, 0x4 \n\
/* 08040788 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804078a */ MULS R3, R1 @ Multiply R3 by R1 \n\
/* 0804078c */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0804078e */ BL __udivsi3 \n\
/* 08040792 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08040794 */ ADDS R2, 0x88 @ Add 0x88 to R2 \n\
/* 08040796 */ STR R2, [R5] \n\
/* 08040798 */ LDR R5, =gSpriteHandler \n\
/* 0804079a */ LDR R0, [R5] \n\
/* 0804079c */ ADDS R4, R4, R7 @ Set R4 to R4 + R7 \n\
/* 0804079e */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080407a0 */ LDRSH R1, [R4, R3] \n\
/* 080407a2 */ LSLS R2, R2, 0x10 \n\
/* 080407a4 */ ASRS R2, R2, 0x10 \n\
/* 080407a6 */ BL sprite_set_y \n\
/* 080407aa */ LDR R0, [SP, 0xC] \n\
/* 080407ac */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080407ae */ B branch_08040804 \n\
\n\
.ltorg \n\
 \n\
branch_080407b8: \n\
/* 080407b8 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 080407ba */ BNE branch_0804083c \n\
/* 080407bc */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 080407be */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 080407c0 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 080407c2 */ LDR R0, [R1] \n\
/* 080407c4 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080407c6 */ STR R0, [R1] \n\
/* 080407c8 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080407ca */ BL ticks_to_frames \n\
/* 080407ce */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080407d0 */ LDR R0, =gCurrentEngineData \n\
/* 080407d2 */ LDR R4, [R0] \n\
/* 080407d4 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 080407d6 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 080407d8 */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 080407da */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080407dc */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 080407de */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 080407e0 */ LDR R0, [R0] \n\
/* 080407e2 */ LSLS R0, R0, 0x3 \n\
/* 080407e4 */ BL __udivsi3 \n\
/* 080407e8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080407ea */ ADDS R2, 0x90 @ Add 0x90 to R2 \n\
/* 080407ec */ STR R2, [R5] \n\
/* 080407ee */ LDR R5, =gSpriteHandler \n\
/* 080407f0 */ LDR R0, [R5] \n\
/* 080407f2 */ ADDS R4, R4, R7 @ Set R4 to R4 + R7 \n\
/* 080407f4 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080407f6 */ LDRSH R1, [R4, R3] \n\
/* 080407f8 */ LSLS R2, R2, 0x10 \n\
/* 080407fa */ ASRS R2, R2, 0x10 \n\
/* 080407fc */ BL sprite_set_y \n\
/* 08040800 */ LDR R0, [SP, 0xC] \n\
/* 08040802 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_08040804: \n\
/* 08040804 */ BL func_080404c4 \n\
/* 08040808 */ LDR R0, =gCurrentEngineData \n\
/* 0804080a */ LDR R4, [R0] \n\
/* 0804080c */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 0804080e */ ADDS R4, R4, R7 @ Set R4 to R4 + R7 \n\
/* 08040810 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08040812 */ BL ticks_to_frames \n\
/* 08040816 */ LDR R1, [R4] \n\
/* 08040818 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804081a */ BCS branch_0804081e \n\
/* 0804081c */ B branch_08040998 \n\
 \n\
branch_0804081e: \n\
/* 0804081e */ LDR R0, [R5] \n\
/* 08040820 */ LDR R2, =gCurrentEngineData \n\
/* 08040822 */ LDR R1, [R2] \n\
/* 08040824 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08040826 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08040828 */ LDRSH R1, [R1, R3] \n\
/* 0804082a */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 0804082c */ BL sprite_set_y \n\
/* 08040830 */ B branch_08040998 \n\
\n\
.ltorg \n\
 \n\
branch_0804083c: \n\
/* 0804083c */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
/* 0804083e */ LSLS R0, R0, 0x18 \n\
/* 08040840 */ LSRS R0, R0, 0x18 \n\
/* 08040842 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08040844 */ BLS branch_08040848 \n\
/* 08040846 */ B branch_08040998 \n\
 \n\
branch_08040848: \n\
/* 08040848 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0804084a */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 0804084c */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0804084e */ LDR R0, [R1] \n\
/* 08040850 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08040852 */ STR R0, [R1] \n\
/* 08040854 */ LDR R0, =D_0805a914 \n\
/* 08040856 */ LDRB R1, [R4, 0x14] \n\
/* 08040858 */ LSLS R1, R1, 0x2 \n\
/* 0804085a */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0804085c */ LDR R0, [R0] \n\
/* 0804085e */ STR R0, [SP, 0x10] \n\
/* 08040860 */ LDR R0, =D_0805a91c \n\
/* 08040862 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08040864 */ LDR R4, [R1] \n\
/* 08040866 */ LDR R0, [SP, 0x10] \n\
/* 08040868 */ BL ticks_to_frames \n\
/* 0804086c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804086e */ LDR R0, [SP, 0x10] \n\
/* 08040870 */ BL ticks_to_frames \n\
/* 08040874 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08040876 */ LDR R0, [SP, 0x10] \n\
/* 08040878 */ BL ticks_to_frames \n\
/* 0804087c */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0804087e */ LDR R0, [SP, 0x10] \n\
/* 08040880 */ BL ticks_to_frames \n\
/* 08040884 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08040886 */ LDR R0, =gCurrentEngineData \n\
/* 08040888 */ LDR R5, [R0] \n\
/* 0804088a */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 0804088c */ ADDS R6, 0xC @ Add 0xC to R6 \n\
/* 0804088e */ ADDS R6, R6, R7 @ Set R6 to R6 + R7 \n\
/* 08040890 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08040892 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08040894 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08040896 */ LDR R0, [R0] \n\
/* 08040898 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804089a */ SUBS R1, R0, R1 @ Set R1 to R0 - R1 \n\
/* 0804089c */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804089e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080408a0 */ SUBS R0, R0, R3 @ Set R0 to R0 - R3 \n\
/* 080408a2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080408a4 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 080408a6 */ MOVS R0, 0x98 @ Set R0 to 0x98 \n\
/* 080408a8 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 080408aa */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 080408ac */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080408ae */ MULS R1, R2 @ Multiply R1 by R2 \n\
/* 080408b0 */ BL __udivsi3 \n\
/* 080408b4 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080408b6 */ STR R4, [R6] \n\
/* 080408b8 */ LDR R6, =gSpriteHandler \n\
/* 080408ba */ LDR R0, [R6] \n\
/* 080408bc */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 080408be */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080408c0 */ LDRSH R1, [R5, R2] \n\
/* 080408c2 */ LSLS R4, R4, 0x10 \n\
/* 080408c4 */ ASRS R4, R4, 0x10 \n\
/* 080408c6 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080408c8 */ BL sprite_set_y \n\
/* 080408cc */ LDR R0, [SP, 0xC] \n\
/* 080408ce */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080408d0 */ BL func_080404c4 \n\
/* 080408d4 */ LDR R3, =gCurrentEngineData \n\
/* 080408d6 */ LDR R4, [R3] \n\
/* 080408d8 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080408da */ ADDS R4, R4, R7 @ Set R4 to R4 + R7 \n\
/* 080408dc */ LDR R0, [SP, 0x10] \n\
/* 080408de */ ADDS R0, 0x6 @ Add 0x6 to R0 \n\
/* 080408e0 */ BL ticks_to_frames \n\
/* 080408e4 */ LDR R1, [R4] \n\
/* 080408e6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080408e8 */ BLS branch_0804092c \n\
/* 080408ea */ LDR R1, =gCurrentEngineData \n\
/* 080408ec */ LDR R0, [R1] \n\
/* 080408ee */ ADDS R1, R0, R7 @ Set R1 to R0 + R7 \n\
/* 080408f0 */ LDRB R0, [R1, 0x6] \n\
/* 080408f2 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 080408f4 */ BNE branch_0804092c \n\
/* 080408f6 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080408f8 */ STRB R0, [R1, 0x6] \n\
/* 080408fa */ LDR R0, [R6] \n\
/* 080408fc */ LDR R2, =gCurrentEngineData \n\
/* 080408fe */ LDR R4, [R2] \n\
/* 08040900 */ ADDS R2, R4, R7 @ Set R2 to R4 + R7 \n\
/* 08040902 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08040904 */ LDRSH R1, [R2, R3] \n\
/* 08040906 */ LDRB R3, [R2, 0x15] \n\
/* 08040908 */ LDRB R4, [R4] \n\
/* 0804090a */ LSLS R2, R4, 0x1 \n\
/* 0804090c */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0804090e */ LSLS R2, R2, 0x3 \n\
/* 08040910 */ ADDS R2, 0x6 @ Add 0x6 to R2 \n\
/* 08040912 */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 08040914 */ LSLS R3, R3, 0x2 \n\
/* 08040916 */ LDR R2, =tram_pauline_anim_table \n\
/* 08040918 */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 0804091a */ LDR R2, [R3] \n\
/* 0804091c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0804091e */ STR R3, [SP] \n\
/* 08040920 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08040922 */ STR R3, [SP, 0x4] \n\
/* 08040924 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040926 */ STR R3, [SP, 0x8] \n\
/* 08040928 */ BL sprite_set_anim \n\
 \n\
branch_0804092c: \n\
/* 0804092c */ LDR R6, =gCurrentEngineData \n\
/* 0804092e */ LDR R4, [R6] \n\
/* 08040930 */ LDR R1, [SP, 0x14] \n\
/* 08040932 */ LDR R2, [SP, 0xC] \n\
/* 08040934 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08040936 */ LSLS R5, R0, 0x2 \n\
/* 08040938 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 0804093a */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 0804093c */ LDR R3, [SP, 0x10] \n\
/* 0804093e */ LSLS R0, R3, 0x1 \n\
/* 08040940 */ BL ticks_to_frames \n\
/* 08040944 */ LDR R1, [R4] \n\
/* 08040946 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08040948 */ BCC branch_08040998 \n\
/* 0804094a */ LDR R0, [R6] \n\
/* 0804094c */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804094e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08040950 */ STRB R1, [R0, 0x6] \n\
/* 08040952 */ LDR R1, [R6] \n\
/* 08040954 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08040956 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08040958 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804095a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804095c */ STR R2, [R0] \n\
/* 0804095e */ LDR R4, =gSpriteHandler \n\
/* 08040960 */ LDR R0, [R4] \n\
/* 08040962 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08040964 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08040966 */ LDRSH R1, [R1, R3] \n\
/* 08040968 */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 0804096a */ BL sprite_set_y \n\
/* 0804096e */ LDR R0, [R4] \n\
/* 08040970 */ LDR R2, [R6] \n\
/* 08040972 */ ADDS R4, R2, R5 @ Set R4 to R2 + R5 \n\
/* 08040974 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08040976 */ LDRSH R1, [R4, R3] \n\
/* 08040978 */ LDRB R3, [R2] \n\
/* 0804097a */ LSLS R2, R3, 0x1 \n\
/* 0804097c */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0804097e */ LSLS R2, R2, 0x3 \n\
/* 08040980 */ LDRB R4, [R4, 0x15] \n\
/* 08040982 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08040984 */ LSLS R2, R2, 0x2 \n\
/* 08040986 */ LDR R3, =tram_pauline_anim_table \n\
/* 08040988 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0804098a */ LDR R2, [R2] \n\
/* 0804098c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804098e */ STR R3, [SP] \n\
/* 08040990 */ STR R3, [SP, 0x4] \n\
/* 08040992 */ STR R3, [SP, 0x8] \n\
/* 08040994 */ BL sprite_set_anim \n\
 \n\
branch_08040998: \n\
/* 08040998 */ LDR R0, [SP, 0xC] \n\
/* 0804099a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804099c */ LSLS R0, R0, 0x18 \n\
/* 0804099e */ LSRS R0, R0, 0x18 \n\
/* 080409a0 */ STR R0, [SP, 0xC] \n\
/* 080409a2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080409a4 */ BHI branch_080409a8 \n\
/* 080409a6 */ B branch_08040728 \n\
 \n\
branch_080409a8: \n\
/* 080409a8 */ ADD SP, 0x18 \n\
/* 080409aa */ POP {R3-R5} \n\
/* 080409ac */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080409ae */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080409b0 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080409b2 */ POP {R4-R7} \n\
/* 080409b4 */ POP {R0} \n\
/* 080409b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
