extern struct SampleData sample_357_data;
struct InstrumentPCM instrument_pcm_0650 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_357_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00A814,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_358_data;
struct InstrumentPCM instrument_pcm_0651 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_358_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00A814,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_359_data;
struct InstrumentPCM instrument_pcm_0652 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_359_data,
    /* ADSR Init */ 0x000000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x3A2E8B,
    /* ADSR Dec  */ 0x00FC1F,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_060_data;
struct InstrumentPCM instrument_pcm_0653 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_060_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x01A433,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_061_data;
struct InstrumentPCM instrument_pcm_0654 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_061_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x01A433,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_360_data;
struct InstrumentPCM instrument_pcm_0655 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_360_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00A814,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_361_data;
struct InstrumentPCM instrument_pcm_0656 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_361_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x01A433,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_196_data;
struct InstrumentPCM instrument_pcm_0657 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_196_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00A814,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_362_data;
struct InstrumentPCM instrument_pcm_0658 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_362_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x04EC9B,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_017_data;
struct InstrumentPCM instrument_pcm_0659 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_017_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x01F83E,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x082378,
};

extern union Instrument inst_bank_32[];
struct InstrumentSubSplit instrument_spl_0660 = {
    /* Type      */ INSTRUMENT_SUB_SPLIT,
    /* Base Key  */ 12,
    /* Key Split */ keysplit_table_4,
    /* Sub-Bank  */ inst_bank_32
};

extern union Instrument inst_bank_32[];
struct InstrumentSubSplit instrument_spl_0661 = {
    /* Type      */ INSTRUMENT_SUB_SPLIT,
    /* Base Key  */ 12,
    /* Key Split */ keysplit_table_5,
    /* Sub-Bank  */ inst_bank_32
};

extern union Instrument inst_bank_47[];
struct InstrumentSubRhythm instrument_rhy_0662 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_47
};
