#ifndef GUARD_TYPES_H
#define GUARD_TYPES_H

typedef s32 (*struct_030046a4_func)(s32);

struct struct_030046a4_sub { // might be a list
    u8 pad00[0x18];
    struct_030046a4_func *unk18;
};

typedef union {
        u8 asU8[4];
        struct struct_030046a4_sub *asPoint;
    } struct_030046a4_union;
	
struct struct_030046a4_sub3 {
	void *unk0; // ???
    void *unk4; // ???
    void *unk8; // ???
    void *unkC; // ???
};

struct struct_080179f4_sub {
    u32 unk0;
    s16 unk4;
    s16 unk6;
    s8 unk8;
    s8 unk9;
    u8 pad0A[2];
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    u8 pad28[4];
    u8 unk2C;
    u8 unk2D;
};

struct struct_080179f4 {
	struct struct_080179f4 *unk0;
	struct struct_080179f4 *unk4;
	s32 unk8; // ???
	u8 pad0C[0x3C];
	s8 unk48;
	u8 pad49[3];
	u16 unk4C;
	u16 unk4E;
	u8 pad50[4];
	struct struct_030046a4_sub3 unk54;
	struct struct_080179f4_sub *unk64;
	u8 unk68;
};

typedef void (*struct_030046a4_sub_func)(struct struct_080179f4 *,s32 *,s32);

struct struct_030046a4_sub2 {
    u8 pad00[0x4];
    u16 unk4;
    u8 pad06[0x6];
    u32 unkC;
    struct_030046a4_sub_func unk10;
    s32 unk14;
    u8 pad18[0x14];
    struct struct_030046a4_sub3 unk2C;
};

struct struct_030046a4 {
	u8 pad00[0xC];
	s16 unkC;
	s16 unkE;
	struct_030046a4_union unk10;
	u8 pad14[4];
	struct struct_080179f4 *unk18;
	struct struct_030046a4_sub2 *unk1C[12]; // ???
	struct_030046a4_func *unk4C;
	u8 pad50[8];
	struct struct_080179f4 *unk58;
	u8 unk5C;
	u8 unk5D;
	s32 unk60;
    u8 pad64[4];
    struct struct_030046a4_sub3 unk68;
	u8 pad78[2];
	u8 unk7A;
	u8 pad7B[0xB];
    u16 unk86;
};

struct struct_030055d0_sub {
    u8 unk0:4;
    u8 pad01[3];
    s16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u8 pad0E[8];
    u32 unk18;
    u32 unk1C;
    u8 pad20[4];
    u32 unk24;
    u8 pad28[5];
    u8 unk2D;
};



struct KarateManInfo {
    u8 unk4:4;
    u8 pad05[3];
    s16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    s16 unk14;
    u8 unk16;
    u8 unk17;
    u8 unk18;
    u32 *unk1C;
    s16 unk20;
    u32 unk24;
    s16 unk28;
    u8 unk2A;
    u8 pad2B[3];
    s16 unk2E;
    u16 unk30;
    u16 unk32;
    u8 unk34;
    u8 unk35;
    u8 unk36;
};

struct RapMenInfo {
    u32 *unk4;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u8 unk14;
};

struct WizardsWaltzSparkle {
    u32 entity; // Entity: unk0
    u8  unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 null1C;
};

struct WizardsWaltzInfo {
    u32 wizardEntity;   // Entity: unk4
    u8  wizardState;    // Value: unk8 {0,1}
    u32 unkC;           // Value: posUnk0C
    u32 unk10;          // Value: posUnk10
    s32 unk14;          // Value: posUnk14
    u32 unk18;          // Value: posUnk18
    u32 null1C;
    u32 null20;
    u32 shadowEntity;   // Entity: unk24
    u32 null28;
    u32 null2C;
    u32 null30;
    u32 null34;
    u32 null38;
    u32 null3C;
    u32 null40;
    struct WizardsWaltzSparkle sparkle[10]; // Struct: unk44
    u32 girlEntity;     // Entity: unk184
    u8  girlState;      // Value: unk188 {0,1,2}
    u32 null18C;
    u32 null190;
    u32 null194;
    u32 null198;
    u32 null19C;
    u32 null1A0;
    s32 cyclePosition;  // Counter: unk1A4
    s32 cycleInterval;  // Value: unk1A8
    s32 globalScale;    // Value: unk1AC
    u8  unk1B0;         // Counter: cycleUnk1B0
    u8  flowerCount;    // Counter: unk1B1
    u8  isTutorial;     // Flag: unk1B2
};



struct struct_030055d0 {
    u8 unk0;
    u8 pad01[3];
    union {
        struct KarateManInfo karateMan;
        struct RapMenInfo rapMen;
        struct WizardsWaltzInfo wizardsWaltz;
    } gameInfo;
};

extern struct struct_030046a4 *D_030046a4;
extern s32 D_03005380;
extern struct struct_030055d0 *D_030055d0;

#endif
