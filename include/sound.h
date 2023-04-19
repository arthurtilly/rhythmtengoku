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

enum SoundPlayersEnum {
    MUSIC_PLAYER_0,
    MUSIC_PLAYER_1,
    MUSIC_PLAYER_2,
    SFX_PLAYER_0,
    SFX_PLAYER_1,
    SFX_PLAYER_2,
    SFX_PLAYER_3,
    SFX_PLAYER_4,
    SFX_PLAYER_5,
    SFX_PLAYER_6,
    SFX_PLAYER_7,
    SFX_PLAYER_8,
    SFX_PLAYER_9,
    DEFAULT_SOUND_PLAYER = 0xFF
};

enum MidiTracksEnum {
    MIDI_TRACK_0,
    MIDI_TRACK_1,
    MIDI_TRACK_2,
    MIDI_TRACK_3,
    MIDI_TRACK_4,
    MIDI_TRACK_5,
    MIDI_TRACK_6,
    MIDI_TRACK_7,
    MIDI_TRACK_8,
    MIDI_TRACK_9,
    MIDI_TRACK_10,
    MIDI_TRACK_11,
    MIDI_TRACK_12,
    MIDI_TRACK_13,
    MIDI_TRACK_14,
    MIDI_TRACK_15
};

enum DirectSoundModesEnum {
    DIRECTSOUND_MODE_STEREO,
    DIRECTSOUND_MODE_MONO1,
    DIRECTSOUND_MODE_MONO2
};

enum InstrumentBanksEnum {
	INST_BANK_UNUSED_0,
	INST_BANK_UNUSED_1,
	INST_BANK_UNUSED_2,
	INST_BANK_UNUSED_3,
	INST_BANK_UNUSED_4,
	INST_BANK_54,
	INST_BANK_UNUSED_5,
	INST_BANK_UNUSED_7,
	INST_BANK_UNUSED_8,
	INST_BANK_UNUSED_9,
	INST_BANK_UNUSED_10,
	INST_BANK_UNUSED_11,
	INST_BANK_UNUSED_12,
	INST_BANK_UNUSED_13,
	INST_BANK_UNUSED_14,
	INST_BANK_UNUSED_15,
	INST_BANK_UNUSED_16,
	INST_BANK_55,
	INST_BANK_1,
	INST_BANK_2,
	INST_BANK_3,
	INST_BANK_4,
	INST_BANK_5,
	INST_BANK_6,
	INST_BANK_7,
	INST_BANK_8,
	INST_BANK_9,
	INST_BANK_10,
	INST_BANK_11,
	INST_BANK_12,
	INST_BANK_13,
	INST_BANK_14,
	INST_BANK_15,
	INST_BANK_16,
	INST_BANK_17,
	INST_BANK_UNUSED_35,
	INST_BANK_UNUSED_36,
	INST_BANK_UNUSED_37,
	INST_BANK_UNUSED_38,
	INST_BANK_UNUSED_39,
	INST_BANK_47,
	INST_BANK_49,
	INST_BANK_50,
	INST_BANK_48,
	INST_BANK_UNUSED_44,
	INST_BANK_51,
	INST_BANK_52,
	INST_BANK_53,
	INST_BANK_UNUSED_48,
	INST_BANK_UNUSED_49,
	INST_BANK_18,
	INST_BANK_19,
	INST_BANK_20,
	INST_BANK_21,
	INST_BANK_22,
	INST_BANK_23,
	INST_BANK_24,
	INST_BANK_25,
	INST_BANK_26,
	INST_BANK_27,
	INST_BANK_28,
	INST_BANK_29,
	INST_BANK_30,
	INST_BANK_31,
	INST_BANK_32,
	INST_BANK_33,
	INST_BANK_34,
	INST_BANK_35,
	INST_BANK_36,
	INST_BANK_37,
	INST_BANK_38,
	INST_BANK_39,
	INST_BANK_40,
	INST_BANK_41,
	INST_BANK_42,
	INST_BANK_43,
	INST_BANK_44,
	INST_BANK_45,
	INST_BANK_46,
	INST_BANK_UNUSED_79,
	INST_BANK_UNUSED_80,
	INST_BANK_UNUSED_81,
	INST_BANK_UNUSED_82,
	INST_BANK_UNUSED_83,
	INST_BANK_UNUSED_84,
	INST_BANK_UNUSED_85,
	INST_BANK_UNUSED_86,
	INST_BANK_UNUSED_87,
	INST_BANK_UNUSED_88,
	INST_BANK_UNUSED_89,
	INST_BANK_UNUSED_90,
	INST_BANK_UNUSED_91,
	INST_BANK_UNUSED_92,
	INST_BANK_UNUSED_93,
	INST_BANK_UNUSED_94,
	INST_BANK_UNUSED_95,
	INST_BANK_UNUSED_96,
	INST_BANK_UNUSED_97,
	INST_BANK_UNUSED_98,
	INST_BANK_UNUSED_99,
	INST_BANK_56,
	INST_BANK_57,
	INST_BANK_58,
	INST_BANK_59,
	INST_BANK_60,
	INST_BANK_61,
	INST_BANK_UNUSED_106,
	INST_BANK_UNUSED_107,
	INST_BANK_UNUSED_108,
	INST_BANK_UNUSED_109,
	INST_BANK_62,
	INST_BANK_63
};

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
	struct SampleInfo *sample;
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

typedef struct InstrumentHeader *InstrumentBank[];

union Instrument;

struct SequenceData {
    const u32 *romAddress;
    u32 unk4f1:5;
    u32 soundBank:10;
    u32 volume:7;
    u32 unk4f4:8;
    u32 unk4f5:2;
    u32 unk8;
    char *seqName;
    u32 iramChnlIndex;
};

/* MIDI PLAYER DEVICES */

struct MidiChannel {
    u32 unk0_b0:1;      // ??? [default = 0]
    u32 unk0_b1:1;      // ??? [default = 0]
    u32 instPatch:7;    // Instrument Patch Number [mEvnt_C; default = 0]
    u32 bankSelect:14;  // Bank Select? [mCtrl_00; mCtrl_20; default = 0]
    u32 volume:7;       // Channel Volume [mCtrl_07; default = 0x64]
    u32 filterEQ:1;     // Compression? Dampen? [mCtrl_48; default = 0]
    u32 stereo:1;       // Offset/Split Stereo Effect [mCtrl_4B; default = 0]
    u32 panning:7;      // Channel Panning [mCtrl_0A; default = 0x40]
    u32 expression:7;   // Expression [mCtrl_0B; default = 0x7f]
    u32 modDepth:7;     // Modulation Depth [mCtrl_01; default = 0]
    u32 unk4_b21:7;     // ??? [default = 0]
    u32 modType:2;      // Modulation Type [default = 0] { 0 = Pitch; 1 = Volume (Tremolo); 2 = Panning }
    u32 unk4_b30:2;     // ??? (might be unused) [no default]
    u32 pitchWheel:14;  // Pitch Wheel [mEvnt_E; default = 0x2000]
    u32 volumeWheel:8;  // Volume Wheel? [no default]
    u32 priority:10;    // Priority [mCtrl_20; default = 0]
    u8  unkC;           // ??? [default = 1]
    s8  modResult;      // Modulation Result [mCtrl_01; default = 0]
    u8  unkE;
    u8  modRange;       // Pitch Wheel Range [mCtrl_14; default = 2]
    u16 modSpeed;       // Modulation Counter Increment [mCtrl_15; default = 0x3C00]
    u16 modCount;       // Modulation Counter (ticks Up) [mCtrl_15; default = 0]
    u8  modDelay;       // Modulation Delay Time [mCtrl_1A; default = 0]
    u8  modDelayCount;  // Modulation Delay Counter (ticks down) [mCtrl_1A; default = 0]
    u16 rndmPitchFloor; // Random Pitch Minimum [mCtrl_52; default = 0x100]
    u16 rndmPitchRange; // Random Pitch Range [mCtrl_52; default = 0]
    u16 rndmPitch;      // Random Pitch Result [mCtrl_52; default = 0x100]
    u8  unk1C;          // [default = 0]
    u8  unk1D;          // [default = 0]
    u8  unk1E;          // [default = 0]
};

struct MidiBus {
    u8  busVolume;
    u8  trackVolume;
    u16 trackSelect;
    s8  key;
    s8  panning;
    s16 pitch;
    u16 unk8;
    const u16 *tuningTable;
    const union Instrument *soundBank;
    u32 totalChannels:5;
    u32 priority:27;
    struct MidiChannel *midiChannel;
    s8  unk1C[12];
};

struct MidiTrackStream {
    u32 active_curr:1;  // Active State (Current)
    u32 active_loop:1;  // Active State (At Loop Start)
    u32 command_curr:8; // Command (Current)
    u32 command_loop:8; // Command (At Loop Start)
    u32 inLoop:1;       // Reader is within MIDI loop region (note: label may not be accurate). [default = 0]
    u8 *stream_start;   // Stream Position: Track Start
    u8 *stream_curr;    // Stream Position: Current
    u32 unkC;           // ?? ( = initial deltaTime << 8)
    u8 *stream_loop;    // Stream Position: Loop Start
    u32 unk14;          // ?? (may be unused?)
    u32 runningTime;    // Time until next instruction? (already parsed from variable-length quantity)
};

struct SoundPlayer {
    u32 nTracksMax:5;   // Maximum number of MIDI Tracks this SoundPlayer is able to process.
    u32 nTracksUsed:5;  // Total number of MIDI Tracks used by the given MIDI.
    u32 inLoop:1;       // Channel is currently within MIDI loop region. [default = 0]
    u32 isPaused:1;     // Paused State { 0 = Unpaused; 1 = Paused }
    u32 midiTempo:9;    // Current MIDI Tempo, in Beats Per Minute (BPM).
    u32 playerType:1;   // ??? (set on startup. can prevent loading tracks if set to 1) { 0 = Music/Ambience Channel; 1 = Sound Effect Channel }
    u32 unk0_b22:5;     // (indeterminate split; may be unused entirely)
    u32 volumeFadeType:3; // Type of currently-active Volume Fade { 0 = None; 1 = Fade-In; 2 = Fade-Out & Close; 3 = Fade-Out & Pause }
    struct MidiBus *midiBus;             // MIDI: Bus with effects for all MIDI Channels.
    struct MidiTrackStream *midiReader;  // MIDI: Multiple structures which each keep track of a MIDI Track being processed.
    struct SequenceData *songInfo; // SequenceData: Currently-loaded Sound Sequence.
    u32 deltaTime;              // MIDI: Ticks Per Frame, using internal assumption of 60fps [default = 1]
    const char *loopStartSym;   // MIDI: Label char denoting "Loop Start". [always D_08A865D4, '[']
    const char *loopEndSym;     // MIDI: Label char denoting "Loop End". [always D_08A865D8, ']']
    u8  loopStartSymSize;   // MIDI: Value of soundplayer_get_loop_sym_size(D_08a865a4). [1]
    u8  loopEndSymSize;     // MIDI: Value of soundplayer_get_loop_sym_size(D_08a865a8). [1]
    u16 midiQuarterNote;    // MIDI: Value denoting 1 beat. [effectively always 0x18]
    u16 channelGain;    // Channel Gain (Volume) Envelope. [Q8.8]
    u16 trackGain;      // Gain Envelope for a selection of MIDI Tracks. [Q8.8]
    u16 trackSelect;    // Selection of MIDI Tracks to apply Gain Envelope.
    u16 speedMulti;     // Speed Multiplier Envelope. [Q8.8]
    u16 volumeFadeEnv;  // Volume Multiplier Envelope used for fade-out and mute effects. [Q1.15]
    u16 volumeFadeSpd;  // Higher values for faster fade-out. Is set to 1 when track is muted instantly. [default = 0]
    u8  playerVolume;   // SequenceData: Volume
    s8  midiController4E;   // ??: [default = 64]
    s8  midiController4F;   // ??: [default = 64]
    s8  midiController50;   // ??: [default = 64]
    s8  midiController51;   // ??: [default = 64]
    u32 unk34;      // ??: (is set to midiReader->deltaTime upon hitting a loop start marker) [default = 0]
};

enum LfoModesEnum {
    LFO_MODE_DISABLED,
    LFO_MODE_KEYPRESS,
    LFO_MODE_CONSTANT
};

// Low-Frequency Oscillator (used for an Auto-Wah)
struct LFO {
    u8  preDelay;   // Pre-Delay Time
    u8  attack;     // Attack Time
    u16 rate;       // Rate
    u8  offset;     // Offset
    u8  duration;   // Range
    u8  stage;      // Current Envelope Stage { 0..3 }
    s8  output;     // Output
    u32 ticks;      // Running Time
};

// [D_03005b30] LFO - Low-Frequency Oscillator
extern struct LFO D_03005b30;

// [D_03005b3c] LFO - Mode { 0 = Disabled; 1 = Note Triggered; 2 = Constant }
extern u8 D_03005b3c;

// [D_08aa4460] SoundPlayer Table
extern struct SoundPlayerTable {
    struct SoundPlayer *soundPlayer;
    u32 null4; // unused
    u16 trackCount;
    u16 playerType;
} const D_08aa4460[];
