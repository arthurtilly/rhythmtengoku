#include "global.h"
#include "graphics.h"
#include "src/scenes/studio.h"
#include "graphics/studio/studio_graphics.h"


  /* STUDIO MENU - SCENE DATA */


#include "songs.inc.c"
#include "drums.inc.c"


// [D_089d840c] Memory Warnings
    /* -------------------------------- */
        // You can't save any more data.
        // Perform without saving?
    /* -------------------------------- */
        // You can only save 10 recitals.
        // Perform without saving?
    /* -------------------------------- */
        // There's not much memory left.
        // Perform anyway?
    /* -------------------------------- */

const char *studio_mem_warnings_text[] = {
    /* NO WARNING NEEDED ------------------------------ */
        NULL,
    /* NO MEMORY -------------------------------------- */
        "�������������ς��ł��B\n"
        "�f�[�^�͎c��Ȃ����ǉ��t����H",
    /* TOO MANY REPLAYS ------------------------------- */
        "���t�f�[�^��10�R�����c���܂���B\n"
        "�f�[�^�͎c��Ȃ����ǉ��t����H",
    /* LOW MEMORY ------------------------------------- */
        "�����������Ȃ��Ȃ��Ă��Ă܂��B\n"
        "���̂܂܉��t����H"
    /* ------------------------------------------------ */
};


// [D_089d841c] Options (no replay for this song)
const char *studio_options_no_replay[] = {
    /* LISTEN */ "���X�j���O",
    /* DRUM   */ "�h���~���O",
    /* SORT   */ "�Ȃ�т���",
    /* MARK   */ "�`�F�b�N"
};


// [D_089d842c] Options (replay exists for this song)
const char *studio_options_has_replay[] = {
    /* LISTEN */ "���X�j���O",
    /* DELETE */ "�f�[�^����",
    /* SORT   */ "�Ȃ�т���",
    /* MARK   */ "�`�F�b�N"
};


// [D_089d843c] Options Text
const char **studio_options_text[] = {
    studio_options_no_replay,
    studio_options_has_replay
};


// Option Text Start
const char text_studio_option_default[] = "";


// Not even one song has
// a check mark on it.
const char text_studio_warning_no_checks1[] =
    "�`�F�b�N�̂��Ă���Ȃ��A\n"
    "�ЂƂ�����܂���B";


// In listening mode, only the songs
// with a check mark will be played.
const char text_studio_warning_no_checks2[] =
    "���X�j���O�ł̓`�F�b�N�̂���Ȃ����Đ����܂��B�@��낵���ł����`�H";


// You'll erase this performance
// data! Is that really OK?
const char text_studio_warning_delete[] =
    "���̉��t�f�[�^���폜���郈�I\n"
    "�z���g��OK�H";


// [D_089d8444] ?
u8 D_089d8444[] = {
    /* 0x00 */ 4,
    /* 0x01 */ 4,
    /* 0x02 */ 0,
    /* 0x03 */ 0
};


// [D_089d8448] Graphics Table
struct GraphicsTable studio_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cd5d64,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd62ec,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd6434,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cd5288,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ studio_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ studio_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089d849c] Buffered Textures List
struct CompressedGraphics *studio_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089d84a0] ?
u16 D_089d84a0[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 104,
    /* 0x02 */ 240
};


// [D_089d84a6] ?
u8 D_089d84a6[] = {
    /* 0x00 */ 1,
    /* 0x01 */ 2,
    /* 0x02 */ 3
};
