#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/scenes/results.h"
#include "graphics/results/results_graphics.h"


  /* EPILOGUES - SCENE DATA */


// [D_089d7b50] Scene Objects
union SceneObject epilogue_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};

// [D_089d7b54] Buffered Textures List
struct CompressedData *epilogue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

asm(".include \"data/scenes/epilogue/ending_script.inc\"");

// [D_089d7b64] Epilogue Jingles
struct SongHeader *epilogue_jingles[] = {
    /* Try Again */ &s_epilogue_fan2_seqData,
    /* OK        */ &s_epilogue_fan2_seqData,
    /* Superb    */ &s_epilogue_fan1_seqData
};
