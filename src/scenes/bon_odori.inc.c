#include "asm/scenes/bon_odori/asm_080206a0.s"

#include "asm/scenes/bon_odori/asm_080206c0.s"

#include "asm/scenes/bon_odori/asm_0802075c.s"

#include "asm/scenes/bon_odori/asm_08020778.s"

#include "asm/scenes/bon_odori/asm_080207d0.s"

#include "asm/scenes/bon_odori/asm_080207ec.s"

void func_080207f8(u32 arg0) {
    func_080207d0();
    func_080207ec(arg0);
}

#include "asm/scenes/bon_odori/asm_0802080c.s"

void func_08020834() {
    u32 i;
    for (i = 0; i < 4; i++) {
        if (D_030055d0->gameInfo.bonOdori.unk4C[i]) {
            D_030055d0->gameInfo.bonOdori.unk4C[i] -= 1;
        }

    }
}

void func_0802085c() {
    func_0800c604(0);
    func_08017578();
    D_03004b10.unk1D8 = 0x7C00;
}

void func_08020880() {
    u16 temp0;
    u32 temp1;

    func_0800c604(0);
    temp0 = func_0800c3b8();
    temp1 = func_08002ee0(temp0, D_089deec4[D_030055d0->unk0], 0x2000);
    func_08005d38(temp1, func_0802085c + 1, 0);
}


#include "asm/scenes/bon_odori/asm_080208c0.s"

#include "asm/scenes/bon_odori/asm_080208ec.s"

void func_08020a48() {
    
}

#include "asm/scenes/bon_odori/asm_08020a4c.s"

void func_08020be4(u8 arg0) {
    D_030055d0->gameInfo.bonOdori.unk38 = arg0;
}

void func_08020bf4(s32 arg0) { //type of arg0 inferred from func_08020a4c
    func_08020a4c(arg0, D_030055d0->gameInfo.bonOdori.unk38, 0);
}

#include "asm/scenes/bon_odori/asm_08020c0c.s"

#include "asm/scenes/bon_odori/asm_08020c24.s"

#include "asm/scenes/bon_odori/asm_08020c3c.s"

#include "asm/scenes/bon_odori/asm_08020c4c.s"

#include "asm/scenes/bon_odori/asm_08020c8c.s"

#include "asm/scenes/bon_odori/asm_08020d20.s"

#include "asm/scenes/bon_odori/asm_08020da0.s"

#include "asm/scenes/bon_odori/asm_08020e1c.s"

#include "asm/scenes/bon_odori/asm_08020e50.s"

#include "asm/scenes/bon_odori/asm_08020e90.s"

#include "asm/scenes/bon_odori/asm_08020ed4.s"

void func_08020ee8(void) {
    u8 temp0;
    u32 temp1 = D_030055d0->gameInfo.bonOdori.unk860;
    struct struct_030055d0 *temp2;
    
    if (D_030055d0->gameInfo.bonOdori.unk860 != 0) {
        D_030055d0->gameInfo.bonOdori.unk54 = 3;
        D_030055d0->gameInfo.bonOdori.unk55 = 4;
        func_0800bc40();
    } else {
        D_030055d0->gameInfo.bonOdori.unk54 = 3;
        
        temp2 = D_030055d0;
        if ((u16)func_08001980(2) != 0)
            temp0 = 5;
        else
            temp0 = 6;
        temp2->gameInfo.bonOdori.unk55 = temp0;
        
        D_030055d0->gameInfo.bonOdori.unk40 = temp1;
        D_030055d0->gameInfo.bonOdori.unk42 = 0;
    }
}

void func_08020f48() {
    if (D_030055d0->gameInfo.bonOdori.unk864 != 0) {
        D_030055d0->gameInfo.bonOdori.unk864 -= 1;
        if (D_030055d0->gameInfo.bonOdori.unk864 == 0) {
            func_08017338(1, 0);
        }
    }
    func_08020834();
    if (D_030055d0->gameInfo.bonOdori.unk40 != 0)
        D_030055d0->gameInfo.bonOdori.unk40 -= 1;
}

void func_08020f8c() {
    func_0800e128();
}

#include "asm/scenes/bon_odori/asm_08020f98.s"

#include "asm/scenes/bon_odori/asm_08020fb0.s"

void func_08020fcc() {

}

#include "asm/scenes/bon_odori/asm_08020fd0.s"

#include "asm/scenes/bon_odori/asm_08020fe8.s"

#include "asm/scenes/bon_odori/asm_0802100c.s"

#include "asm/scenes/bon_odori/asm_08021034.s"

#include "asm/scenes/bon_odori/asm_08021084.s"

void func_08021188() {

}

void func_0802118c() {

}