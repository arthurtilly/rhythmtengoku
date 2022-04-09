#pragma once

#define INSTRUMENT_PCM_PITCHED 0x41
#define INSTRUMENT_PCM_UNPITCHED 0x46
#define INSTRUMENT_PSG 0x50
#define INSTRUMENT_SUBBANK_SINGLE_KEY 0x52
#define INSTRUMENT_SUBBANK_MULTI_KEY 0x53

#define PSG_PULSE_CHANNEL_1 0
#define PSG_PULSE_CHANNEL_2 1
#define PSG_WAVE_CHANNEL 2
#define PSG_NOISE_CHANNEL 3

struct SampleInfo {
	u32 length;
	u32 sampleRate;
	u32 pitch;
	u32 loopStart;
	u32 loopEnd;
	const u32 *romAddress;
};

struct InstrumentHeader {
	u8 type;
	u8 unk1;
	u16 unk2;
};

struct InstrumentPCM {
	struct InstrumentHeader header;
	const struct SampleInfo *sample;
	u32 unk8;
	u32 unkC;
	u32 unk10;
	u32 unk14;
	u32 unk18;
	u32 unk1C;
};

struct InstrumentPSG {
	struct InstrumentHeader header;
	void *waveChannel;
	u32 unk8;
	u32 unkC;
	u32 unk10;
	u32 unk14;
	u32 unk18;
	u32 unk1C;
	u8 channel;
	u8 unk21;
	u8 unk22;
};

struct InstrumentSubbankSingleKey {
	struct InstrumentHeader header;
	void *subbank;
};

struct InstrumentSubbankMultiKey {
	struct InstrumentHeader header;
	void *unk4;
	void *subbank;
};

typedef const struct InstrumentHeader *InstrumentBank[];

struct SequenceData {
    const u32 *romAddress;
    u32 unk4f1:5;
    u32 soundBank:10;
    u32 volume:7;
    u32 unk4f4:8;
    u32 unk4f5:2;
    u32 unk8;
    const char *seqName;
    u32 iramChnlIndex;
};
