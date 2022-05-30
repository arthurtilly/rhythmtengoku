#include "code_08011ec0.h"

// Might need more splitting

asm(".include \"include/gba.inc\"");//Temporary

static s8 D_03001318; // unknown type
static s8 D_03001319; // unknown type
static s32 D_0300131c; // unknown type
static s32 D_03001320; // unknown type
static s32 D_03001324; // unknown type

// Rhythm Data Room

#include "asm/code_08011ec0/asm_08011ec0.s"

#include "asm/code_08011ec0/asm_08011ed0.s"

#include "asm/code_08011ec0/asm_08011efc.s"

#include "asm/code_08011ec0/asm_08011f2c.s"

#include "asm/code_08011ec0/asm_08011f68.s"

#include "asm/code_08011ec0/asm_08011fa8.s"

#include "asm/code_08011ec0/asm_08012084.s"

#include "asm/code_08011ec0/asm_08012090.s"

#include "asm/code_08011ec0/asm_080120e4.s"

#include "asm/code_08011ec0/asm_08012200.s"

#include "asm/code_08011ec0/asm_08012214.s"

#include "asm/code_08011ec0/asm_08012218.s"

#include "asm/code_08011ec0/asm_080122a8.s"

#include "asm/code_08011ec0/asm_080123e0.s"

#include "asm/code_08011ec0/asm_080123fc.s"

// Main Menu

#include "asm/code_08011ec0/asm_0801242c.s"

#include "asm/code_08011ec0/asm_08012438.s"

#include "asm/code_08011ec0/asm_08012464.s"

#include "asm/code_08011ec0/asm_08012494.s"

#include "asm/code_08011ec0/asm_080124d0.s"

#include "asm/code_08011ec0/asm_080125f8.s"

#include "asm/code_08011ec0/asm_080125fc.s"

#include "asm/code_08011ec0/asm_080127d0.s"

// Minigames Menu

#include "asm/code_08011ec0/asm_080127ec.s"

#include "asm/code_08011ec0/asm_080127fc.s"

#include "asm/code_08011ec0/asm_08012808.s"

#include "asm/code_08011ec0/asm_08012814.s"

#include "asm/code_08011ec0/asm_08012850.s"

#include "asm/code_08011ec0/asm_08012860.s"

#include "asm/code_08011ec0/asm_0801286c.s"

#include "asm/code_08011ec0/asm_0801287c.s"

#include "asm/code_08011ec0/asm_080128b8.s"

#include "asm/code_08011ec0/asm_08012928.s"

#include "asm/code_08011ec0/asm_080129e8.s"

#include "asm/code_08011ec0/asm_08012a58.s"

#include "asm/code_08011ec0/asm_08012c24.s"

#include "asm/code_08011ec0/asm_08012cb4.s"

#include "asm/code_08011ec0/asm_08012de0.s"

#include "asm/code_08011ec0/asm_08012e24.s"

#include "asm/code_08011ec0/asm_08012fcc.s"

#include "asm/code_08011ec0/asm_08013068.s"

#include "asm/code_08011ec0/asm_08013090.s"

#include "asm/code_08011ec0/asm_080130b0.s"

#include "asm/code_08011ec0/asm_080130e4.s"

#include "asm/code_08011ec0/asm_08013100.s"

#include "asm/code_08011ec0/asm_08013130.s"

#include "asm/code_08011ec0/asm_0801314c.s"

#include "asm/code_08011ec0/asm_0801316c.s"

#include "asm/code_08011ec0/asm_0801317c.s"

#include "asm/code_08011ec0/asm_0801318c.s"

#include "asm/code_08011ec0/asm_080131e8.s"

#include "asm/code_08011ec0/asm_0801332c.s"

#include "asm/code_08011ec0/asm_08013348.s"

#include "asm/code_08011ec0/asm_0801338c.s"

#include "asm/code_08011ec0/asm_080133cc.s"

#include "asm/code_08011ec0/asm_080134ec.s"

#include "asm/code_08011ec0/asm_0801350c.s"

#include "asm/code_08011ec0/asm_08013530.s"

#include "asm/code_08011ec0/asm_08013570.s"

#include "asm/code_08011ec0/asm_0801359c.s"

#include "asm/code_08011ec0/asm_080135cc.s"

#include "asm/code_08011ec0/asm_08013644.s"

#include "asm/code_08011ec0/asm_08013994.s"

#include "asm/code_08011ec0/asm_080139a0.s"

#include "asm/code_08011ec0/asm_080139ac.s"

#include "asm/code_08011ec0/asm_080139b0.s"

#include "asm/code_08011ec0/asm_080139f4.s"

#include "asm/code_08011ec0/asm_08013a38.s"

#include "asm/code_08011ec0/asm_08013b48.s"

void func_08013b98(s32 arg1, s32 arg2) {
    s16 temp;
    s16 temp2;

    D_030046a4->unk10.asU8[0] = arg1;
    D_030046a4->unk10.asU8[1] = arg2;

    func_0801332c(arg1,arg2,&temp,&temp2);

    temp += 47; // x coordinate of top left of menu
    temp2 += 68; // y coordinate of top left of menu

    func_0804d5d4(D_03005380, D_030046a4->unkC,temp,temp2);
    func_0804d5d4(D_03005380, D_030046a4->unkE,temp,temp2);
    func_08013b48();
}

#include "asm/code_08011ec0/asm_08013c04.s"

#include "asm/code_08011ec0/asm_08013c64.s"

#include "asm/code_08011ec0/asm_08013d18.s"

#include "asm/code_08011ec0/asm_08013d1c.s"

#include "asm/code_08011ec0/asm_08013d20.s"

#include "asm/code_08011ec0/asm_08013f9c.s"

#include "asm/code_08011ec0/asm_0801401c.s"

#include "asm/code_08011ec0/asm_080140a4.s"

#include "asm/code_08011ec0/asm_080140ec.s"

#include "asm/code_08011ec0/asm_080140f8.s"

#include "asm/code_08011ec0/asm_08014118.s"

#include "asm/code_08011ec0/asm_080141a4.s"

#include "asm/code_08011ec0/asm_080141c0.s"

#include "asm/code_08011ec0/asm_080141d4.s"

#include "asm/code_08011ec0/asm_080141d8.s"

#include "asm/code_08011ec0/asm_080141f8.s"

#include "asm/code_08011ec0/asm_08014268.s"

#include "asm/code_08011ec0/asm_080142e8.s"

#include "asm/code_08011ec0/asm_080143c0.s"

#include "asm/code_08011ec0/asm_0801446c.s"

#include "asm/code_08011ec0/asm_08014488.s"

#include "asm/code_08011ec0/asm_08014504.s"

#include "asm/code_08011ec0/asm_08014624.s"

#include "asm/code_08011ec0/asm_0801490c.s"

#include "asm/code_08011ec0/asm_08014938.s"

#include "asm/code_08011ec0/asm_08014978.s"

#include "asm/code_08011ec0/asm_08014b68.s"

#include "asm/code_08011ec0/asm_08014c10.s"

#include "asm/code_08011ec0/asm_08014d40.s"

#include "asm/code_08011ec0/asm_08014db0.s"

#include "asm/code_08011ec0/asm_08014dbc.s"

#include "asm/code_08011ec0/asm_08014df0.s"

#include "asm/code_08011ec0/asm_08014ef8.s"

#include "asm/code_08011ec0/asm_08014f30.s"

#include "asm/code_08011ec0/asm_08014f98.s"

#include "asm/code_08011ec0/asm_08015020.s"

#include "asm/code_08011ec0/asm_08015044.s"

#include "asm/code_08011ec0/asm_08015108.s"

#include "asm/code_08011ec0/asm_08015244.s"

#include "asm/code_08011ec0/asm_08015298.s"

#include "asm/code_08011ec0/asm_080152b0.s"

#include "asm/code_08011ec0/asm_08015338.s"

#include "asm/code_08011ec0/asm_080153a8.s"

#include "asm/code_08011ec0/asm_080154f0.s"

#include "asm/code_08011ec0/asm_08015660.s"

#include "asm/code_08011ec0/asm_080158d4.s"

#include "asm/code_08011ec0/asm_080158f0.s"

#include "asm/code_08011ec0/asm_080158f4.s"

#include "asm/code_08011ec0/asm_0801593c.s"

#include "asm/code_08011ec0/asm_08015940.s"

#include "asm/code_08011ec0/asm_08015988.s"

#include "asm/code_08011ec0/asm_080159f4.s"

#include "asm/code_08011ec0/asm_08015a24.s"

#include "asm/code_08011ec0/asm_08015a5c.s"

#include "asm/code_08011ec0/asm_08015afc.s"

#include "asm/code_08011ec0/asm_08015ccc.s"

#include "asm/code_08011ec0/asm_08015cf4.s"

#include "asm/code_08011ec0/asm_08015ea4.s"

#include "asm/code_08011ec0/asm_0801616c.s"

#include "asm/code_08011ec0/asm_0801626c.s"

#include "asm/code_08011ec0/asm_08016290.s"

#include "asm/code_08011ec0/asm_080162bc.s"

#include "asm/code_08011ec0/asm_080162c8.s"

// Option menu

#include "asm/code_08011ec0/asm_080162cc.s"

#include "asm/code_08011ec0/asm_080162f8.s"

#include "asm/code_08011ec0/asm_08016328.s"

#include "asm/code_08011ec0/asm_08016364.s"

#include "asm/code_08011ec0/asm_080165f0.s"

#include "asm/code_08011ec0/asm_080165f4.s"

#include "asm/code_08011ec0/asm_08016620.s"

#include "asm/code_08011ec0/asm_0801685c.s"

#include "asm/code_08011ec0/asm_080169b8.s"

#include "asm/code_08011ec0/asm_080169fc.s"

#include "asm/code_08011ec0/asm_08016a18.s"

#include "asm/code_08011ec0/asm_08016a54.s"

// Perfect Screen

#include "asm/code_08011ec0/asm_08016a58.s"

#include "asm/code_08011ec0/asm_08016a84.s"

#include "asm/code_08011ec0/asm_08016ab4.s"

#include "asm/code_08011ec0/asm_08016af0.s"

#include "asm/code_08011ec0/asm_08016d5c.s"

#include "asm/code_08011ec0/asm_08016d90.s"

#include "asm/code_08011ec0/asm_08016d94.s"

#include "asm/code_08011ec0/asm_08016dd8.s"

#include "asm/code_08011ec0/asm_08016df4.s"

#include "asm/code_08011ec0/asm_08016e04.s"
