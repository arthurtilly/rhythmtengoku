#include "global.h"
#include "code_08001360.h"
#include "code_08003980.h"
#include "code_08007468.h"
#include "code_0800b778.h"
#include "src/lib_0804c870.h"

// Could use better split

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_03001310[2]; // unknown type

#include "asm/code_0800b778/asm_0800b778.s"

#include "asm/code_0800b778/asm_0800b834.s"

#include "asm/code_0800b778/asm_0800b974.s"

#include "asm/code_0800b778/asm_0800b9fc.s"

#include "asm/code_0800b778/asm_0800bc14.s"

#include "asm/code_0800b778/asm_0800bc40.s"

#include "asm/code_0800b778/asm_0800bc58.s"

#include "asm/code_0800b778/asm_0800bc68.s"

#include "asm/code_0800b778/asm_0800bcb8.s"

#include "asm/code_0800b778/asm_0800bcc4.s"

#include "asm/code_0800b778/asm_0800bce4.s"

#include "asm/code_0800b778/asm_0800bcf4.s"

#include "asm/code_0800b778/asm_0800bd04.s"

#include "asm/code_0800b778/asm_0800bd1c.s"

#include "asm/code_0800b778/asm_0800bd2c.s"

#include "asm/code_0800b778/asm_0800bdf8.s"

#include "asm/code_0800b778/asm_0800be64.s"

#include "asm/code_0800b778/asm_0800be88.s"

#include "asm/code_0800b778/asm_0800be9c.s"

#include "asm/code_0800b778/asm_0800bea0.s"

#include "asm/code_0800b778/asm_0800bebc.s"

#include "asm/code_0800b778/asm_0800bed0.s"

#include "asm/code_0800b778/asm_0800bf7c.s"

#include "asm/code_0800b778/asm_0800bf8c.s"

#include "asm/code_0800b778/asm_0800bf9c.s"

#include "asm/code_0800b778/asm_0800bfac.s"

#include "asm/code_0800b778/asm_0800bfbc.s"

#include "asm/code_0800b778/asm_0800c01c.s"

#include "asm/code_0800b778/asm_0800c030.s"

#include "asm/code_0800b778/asm_0800c048.s"

#include "asm/code_0800b778/asm_0800c060.s"

#include "asm/code_0800b778/asm_0800c088.s"

#include "asm/code_0800b778/asm_0800c0c4.s"

#include "asm/code_0800b778/asm_0800c0d8.s"

// Set Volume for Selected Music Channels
void func_0800c0f8(u16 selection, u16 volume) {
    D_030053c0.unk192 = volume;
    D_030053c0.unk194 = selection;
    func_08002934(D_030053c0.unk4, selection, volume);
}

#include "asm/code_0800b778/asm_0800c128.s"

#include "asm/code_0800b778/asm_0800c138.s"

#include "asm/code_0800b778/asm_0800c154.s"

#include "asm/code_0800b778/asm_0800c168.s"

#include "asm/code_0800b778/asm_0800c184.s"

void func_0800c1a4_stub(void) {
}

// Return D_030053c0.unkC.
u32 func_0800c1a8(void) {
    return D_030053c0.unkC;
}

#include "asm/code_0800b778/asm_0800c1b4.s"

#include "asm/code_0800b778/asm_0800c1c0.s"

#include "asm/code_0800b778/asm_0800c1d0.s"

#include "asm/code_0800b778/asm_0800c1e8.s"

#include "asm/code_0800b778/asm_0800c228.s"

#include "asm/code_0800b778/asm_0800c280.s"

#include "asm/code_0800b778/asm_0800c2b0.s"

#include "asm/code_0800b778/asm_0800c2d0.s"

#include "asm/code_0800b778/asm_0800c310.s"

#include "asm/code_0800b778/asm_0800c350.s"

#include "asm/code_0800b778/asm_0800c390.s"

#include "asm/code_0800b778/asm_0800c394.s"

#include "asm/code_0800b778/asm_0800c398.s"

// Parse beat values.
s32 func_0800c3a4(u32 arg0) {
    fast_divsi3(arg0 << 8, D_030053c0.unk14);
}

u32 func_0800c3b8() {
    return D_03001310[0];
}

#include "asm/code_0800b778/asm_0800c3c4.s"

#include "asm/code_0800b778/asm_0800c3e4.s"

#include "asm/code_0800b778/asm_0800c3e8.s"

#include "asm/code_0800b778/asm_0800c3ec.s"

#include "asm/code_0800b778/asm_0800c3fc.s"

#include "asm/code_0800b778/asm_0800c400.s"

#include "asm/code_0800b778/asm_0800c404.s"

#include "asm/code_0800b778/asm_0800c408.s"

#include "asm/code_0800b778/asm_0800c40c.s"

#include "asm/code_0800b778/asm_0800c410.s"

#include "asm/code_0800b778/asm_0800c414.s"

#include "asm/code_0800b778/asm_0800c418.s"

#include "asm/code_0800b778/asm_0800c41c.s"

#include "asm/code_0800b778/asm_0800c420.s"

#include "asm/code_0800b778/asm_0800c424.s"

#include "asm/code_0800b778/asm_0800c428.s"

#include "asm/code_0800b778/asm_0800c42c.s"

// Allocate memory for a struct of size [arg0] (bytes). (?)
u32 *func_0800c43c(u32 arg0) {
    return mem_heap_alloc_id(func_0800c3b8(), arg0);
}

#include "asm/code_0800b778/asm_0800c454.s"

#include "asm/code_0800b778/asm_0800c484.s"

#include "asm/code_0800b778/asm_0800c490.s"

#include "asm/code_0800b778/asm_0800c494.s"

#include "asm/code_0800b778/asm_0800c4ac.s"

#include "asm/code_0800b778/asm_0800c4b0.s"

#include "asm/code_0800b778/asm_0800c508.s"

#include "asm/code_0800b778/asm_0800c560.s"

#include "asm/code_0800b778/asm_0800c5b8.s"

#include "asm/code_0800b778/asm_0800c604.s"

#include "asm/code_0800b778/asm_0800c654.s"

#include "asm/code_0800b778/asm_0800c658.s"

#include "asm/code_0800b778/asm_0800c65c.s"

#include "asm/code_0800b778/asm_0800c660.s"

#include "asm/code_0800b778/asm_0800c694.s"

#include "asm/code_0800b778/asm_0800c6a4.s"

#include "asm/code_0800b778/asm_0800c6c8.s"

#include "asm/code_0800b778/asm_0800c6d4.s"

#include "asm/code_0800b778/asm_0800c6d8.s"

#include "asm/code_0800b778/asm_0800c6dc.s"

#include "asm/code_0800b778/asm_0800c6e0.s"

#include "asm/code_0800b778/asm_0800c6e4.s"

#include "asm/code_0800b778/asm_0800c824.s"

#include "asm/code_0800b778/asm_0800c95c.s"

#include "asm/code_0800b778/asm_0800c9a4.s"

#include "asm/code_0800b778/asm_0800c9c8.s"

#include "asm/code_0800b778/asm_0800ca1c.s"

#include "asm/code_0800b778/asm_0800ca70.s"

#include "asm/code_0800b778/asm_0800cb28.s"

#include "asm/code_0800b778/asm_0800dfbc.s"

#include "asm/code_0800b778/asm_0800dfc0.s"

#include "asm/code_0800b778/asm_0800dfc4.s"

#include "asm/code_0800b778/asm_0800dfe0.s"

#include "asm/code_0800b778/asm_0800dfe4.s"

#include "asm/code_0800b778/asm_0800dfe8.s"

#include "asm/code_0800b778/asm_0800dfec.s"

#include "asm/code_0800b778/asm_0800dff0.s"

#include "asm/code_0800b778/asm_0800dff4.s"

#include "asm/code_0800b778/asm_0800dff8.s"

#include "asm/code_0800b778/asm_0800dffc.s"

#include "asm/code_0800b778/asm_0800e000.s"

#include "asm/code_0800b778/asm_0800e004.s"

#include "asm/code_0800b778/asm_0800e008.s"

#include "asm/code_0800b778/asm_0800e00c.s"

#include "asm/code_0800b778/asm_0800e010.s"

#include "asm/code_0800b778/asm_0800e014.s"

#include "asm/code_0800b778/asm_0800e018.s"

#include "asm/code_0800b778/asm_0800e030.s"

#include "asm/code_0800b778/asm_0800e044.s"

#include "asm/code_0800b778/asm_0800e058.s"

#include "asm/code_0800b778/asm_0800e068.s"

#include "asm/code_0800b778/asm_0800e084.s"

#include "asm/code_0800b778/asm_0800e0a0.s"

#include "asm/code_0800b778/asm_0800e0ec.s"

#include "asm/code_0800b778/asm_0800e100.s"

#include "asm/code_0800b778/asm_0800e114.s"

#include "asm/code_0800b778/asm_0800e128.s"

#include "asm/code_0800b778/asm_0800e13c.s"

#include "asm/code_0800b778/asm_0800e184.s"

#include "asm/code_0800b778/asm_0800e1cc.s"

#include "asm/code_0800b778/asm_0800e208.s"

#include "asm/code_0800b778/asm_0800e25c.s"

#include "asm/code_0800b778/asm_0800e2a8.s"

#include "asm/code_0800b778/asm_0800e30c.s"

#include "asm/code_0800b778/asm_0800e364.s"

#include "asm/code_0800b778/asm_0800e3e4.s"

#include "asm/code_0800b778/asm_0800e430.s"

#include "asm/code_0800b778/asm_0800e490.s"

#include "asm/code_0800b778/asm_0800e4f8.s"

#include "asm/code_0800b778/asm_0800e57c.s"

#include "asm/code_0800b778/asm_0800e62c.s"

#include "asm/code_0800b778/asm_0800e694.s"

#include "asm/code_0800b778/asm_0800e6ec.s"

#include "asm/code_0800b778/asm_0800e75c.s"

#include "asm/code_0800b778/asm_0800e768.s"

#include "asm/code_0800b778/asm_0800e7e8.s"

#include "asm/code_0800b778/asm_0800e830.s"

#include "asm/code_0800b778/asm_0800e850.s"

#include "asm/code_0800b778/asm_0800e86c.s"

#include "asm/code_0800b778/asm_0800e888.s"

#include "asm/code_0800b778/asm_0800e8b0.s"

#include "asm/code_0800b778/asm_0800e8d8.s"

#include "asm/code_0800b778/asm_0800e8f4.s"

#include "asm/code_0800b778/asm_0800e940.s"

#include "asm/code_0800b778/asm_0800e944.s"

#include "asm/code_0800b778/asm_0800e948.s"

#include "asm/code_0800b778/asm_0800e970.s"

#include "asm/code_0800b778/asm_0800e9d8.s"

#include "asm/code_0800b778/asm_0800e9f8.s"

#include "asm/code_0800b778/asm_0800ea1c.s"

#include "asm/code_0800b778/asm_0800ea2c.s"

#include "asm/code_0800b778/asm_0800ea3c.s"

#include "asm/code_0800b778/asm_0800ea70.s"

#include "asm/code_0800b778/asm_0800eaa0.s"

#include "asm/code_0800b778/asm_0800eb0c.s"

#include "asm/code_0800b778/asm_0800eb1c.s"

#include "asm/code_0800b778/asm_0800ebac.s"

#include "asm/code_0800b778/asm_0800ebf8.s"

#include "asm/code_0800b778/asm_0800ec20.s"

#include "asm/code_0800b778/asm_0800ec34.s"

#include "asm/code_0800b778/asm_0800ecac.s"

#include "asm/code_0800b778/asm_0800ecec.s"

#include "asm/code_0800b778/asm_0800ed08.s"

#include "asm/code_0800b778/asm_0800ed24.s"

#include "asm/code_0800b778/asm_0800ed3c.s"

#include "asm/code_0800b778/asm_0800ed54.s"

#include "asm/code_0800b778/asm_0800ed58.s"

#include "asm/code_0800b778/asm_0800ed5c.s"

#include "asm/code_0800b778/asm_0800ed60.s"

#include "asm/code_0800b778/asm_0800ed64.s"

#include "asm/code_0800b778/asm_0800edb8.s"

#include "asm/code_0800b778/asm_0800edc8.s"

#include "asm/code_0800b778/asm_0800edfc.s"

#include "asm/code_0800b778/asm_0800ee1c.s"

#include "asm/code_0800b778/asm_0800ee3c.s"

#include "asm/code_0800b778/asm_0800ee5c.s"

#include "asm/code_0800b778/asm_0800ee7c.s"

#include "asm/code_0800b778/asm_0800ee9c.s"

#include "asm/code_0800b778/asm_0800eebc.s"

#include "asm/code_0800b778/asm_0800f070.s"

#include "asm/code_0800b778/asm_0800f084.s"

#include "asm/code_0800b778/asm_0800f09c.s"

#include "asm/code_0800b778/asm_0800f0b4.s"

#include "asm/code_0800b778/asm_0800f180.s"

#include "asm/code_0800b778/asm_0800f1ec.s"

#include "asm/code_0800b778/asm_0800f218.s"

#include "asm/code_0800b778/asm_0800f22c.s"

#include "asm/code_0800b778/asm_0800f4a0.s"

#include "asm/code_0800b778/asm_0800f524.s"

#include "asm/code_0800b778/asm_0800f570.s"

#include "asm/code_0800b778/asm_0800f578.s"

#include "asm/code_0800b778/asm_0800f580.s"

#include "asm/code_0800b778/asm_0800f588.s"

#include "asm/code_0800b778/asm_0800f614.s"

#include "asm/code_0800b778/asm_0800f7c0.s"

#include "asm/code_0800b778/asm_0800f89c.s"

#include "asm/code_0800b778/asm_0800f8d8.s"

#include "asm/code_0800b778/asm_0800f8ec.s"

#include "asm/code_0800b778/asm_0800f8f8.s"
