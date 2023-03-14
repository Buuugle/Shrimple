#define SHADOW_TYPE_NONE 0
//#define SHADOW_TYPE_BASIC 1
#define SHADOW_TYPE_DISTORTED 2
#define SHADOW_TYPE_CASCADED 3

#define SHADOW_COLOR_DISABLED 0
#define SHADOW_COLOR_ENABLED 1
#define SHADOW_COLOR_IGNORED 2

#define DYN_LIGHT_NONE 0
#define DYN_LIGHT_VERTEX 1
#define DYN_LIGHT_PIXEL 2
#define DYN_LIGHT_TRACED 3

#define DYN_LIGHT_COLOR_HC 0
#define DYN_LIGHT_COLOR_RP 1

#define DYN_LIGHT_TRACE_DDA 0
#define DYN_LIGHT_TRACE_RAY 1


#define DEBUG_VIEW_NONE 0
#define DEBUG_VIEW_DEFERRED_COLOR 1
#define DEBUG_VIEW_DEFERRED_NORMAL 2
#define DEBUG_VIEW_DEFERRED_LIGHTING 3
#define DEBUG_VIEW_DEFERRED_FOG 4
#define DEBUG_VIEW_DEFERRED_BLOCKLIGHT 5
#define DEBUG_VIEW_DEFERRED_SHADOW 6
#define DEBUG_VIEW_SHADOW_COLOR 7


#define BUFFER_DEFERRED_COLOR colortex1
#define BUFFER_DEFERRED_NORMAL colortex2
#define BUFFER_DEFERRED_LIGHTING colortex3
#define BUFFER_DEFERRED_FOG colortex4
#define BUFFER_BLOCKLIGHT colortex5
#define BUFFER_LIGHT_DEPTH colortex6
#define BUFFER_DEFERRED_SHADOW colortex7
#define TEX_LIGHTMAP colortex8


#define BLOCKTYPE_EMPTY 0u
#define BLOCKTYPE_SOLID 1u
#define BLOCKTYPE_ANVIL_N_S 2u
#define BLOCKTYPE_ANVIL_W_E 3u
#define BLOCKTYPE_CACTUS 4u
#define BLOCKTYPE_CAKE 5u
#define BLOCKTYPE_CANDLE_CAKE 6u
#define BLOCKTYPE_CARPET 7u
#define BLOCKTYPE_DAYLIGHT_DETECTOR 8u
#define BLOCKTYPE_ENCHANTING_TABLE 9u
#define BLOCKTYPE_END_PORTAL_FRAME 10u
#define BLOCKTYPE_FLOWER_POT 11u
#define BLOCKTYPE_GRINDSTONE_FLOOR_N_S 12u
#define BLOCKTYPE_GRINDSTONE_FLOOR_W_E 13u
#define BLOCKTYPE_GRINDSTONE_WALL_N_S 14u
#define BLOCKTYPE_GRINDSTONE_WALL_W_E 15u
#define BLOCKTYPE_HOPPER_DOWN 16u
#define BLOCKTYPE_HOPPER_N 17u
#define BLOCKTYPE_HOPPER_E 18u
#define BLOCKTYPE_HOPPER_S 19u
#define BLOCKTYPE_HOPPER_W 20u
#define BLOCKTYPE_LECTERN 21u
#define BLOCKTYPE_LIGHTNING_ROD_N 22u
#define BLOCKTYPE_LIGHTNING_ROD_E 23u
#define BLOCKTYPE_LIGHTNING_ROD_S 24u
#define BLOCKTYPE_LIGHTNING_ROD_W 25u
#define BLOCKTYPE_LIGHTNING_ROD_UP 26u
#define BLOCKTYPE_LIGHTNING_ROD_DOWN 27u
#define BLOCKTYPE_PATHWAY 28u
#define BLOCKTYPE_PISTON_EXTENDED_N 29u
#define BLOCKTYPE_PISTON_EXTENDED_E 30u
#define BLOCKTYPE_PISTON_EXTENDED_S 31u
#define BLOCKTYPE_PISTON_EXTENDED_W 32u
#define BLOCKTYPE_PISTON_EXTENDED_UP 33u
#define BLOCKTYPE_PISTON_EXTENDED_DOWN 34u
#define BLOCKTYPE_PISTON_HEAD_N 35u
#define BLOCKTYPE_PISTON_HEAD_E 36u
#define BLOCKTYPE_PISTON_HEAD_S 37u
#define BLOCKTYPE_PISTON_HEAD_W 38u
#define BLOCKTYPE_PISTON_HEAD_UP 39u
#define BLOCKTYPE_PISTON_HEAD_DOWN 40u
#define BLOCKTYPE_PRESSURE_PLATE 41u
#define BLOCKTYPE_STONECUTTER 42u

#define BLOCKTYPE_BUTTON_FLOOR_N_S 50u
#define BLOCKTYPE_BUTTON_FLOOR_W_E 51u
#define BLOCKTYPE_BUTTON_CEILING_N_S 52u
#define BLOCKTYPE_BUTTON_CEILING_W_E 53u
#define BLOCKTYPE_BUTTON_WALL_N 54u
#define BLOCKTYPE_BUTTON_WALL_E 55u
#define BLOCKTYPE_BUTTON_WALL_S 56u
#define BLOCKTYPE_BUTTON_WALL_W 57u

#define BLOCKTYPE_DOOR_N 58u
#define BLOCKTYPE_DOOR_E 59u
#define BLOCKTYPE_DOOR_S 60u
#define BLOCKTYPE_DOOR_W 61u

#define BLOCKTYPE_LEVER_FLOOR_N_S 62u
#define BLOCKTYPE_LEVER_FLOOR_W_E 63u
#define BLOCKTYPE_LEVER_CEILING_N_S 64u
#define BLOCKTYPE_LEVER_CEILING_W_E 65u
#define BLOCKTYPE_LEVER_WALL_N 66u
#define BLOCKTYPE_LEVER_WALL_E 67u
#define BLOCKTYPE_LEVER_WALL_S 68u
#define BLOCKTYPE_LEVER_WALL_W 69u

#define BLOCKTYPE_TRAPDOOR_BOTTOM 70u
#define BLOCKTYPE_TRAPDOOR_TOP 71u
#define BLOCKTYPE_TRAPDOOR_N 72u
#define BLOCKTYPE_TRAPDOOR_E 73u
#define BLOCKTYPE_TRAPDOOR_S 74u
#define BLOCKTYPE_TRAPDOOR_W 75u

#define BLOCKTYPE_TRIPWIRE_HOOK_N 76u
#define BLOCKTYPE_TRIPWIRE_HOOK_E 77u
#define BLOCKTYPE_TRIPWIRE_HOOK_S 78u
#define BLOCKTYPE_TRIPWIRE_HOOK_W 79u

#define BLOCKTYPE_SLAB_TOP 80u
#define BLOCKTYPE_SLAB_BOTTOM 81u

#define BLOCKTYPE_STAIRS_BOTTOM_N 82u
#define BLOCKTYPE_STAIRS_BOTTOM_E 83u
#define BLOCKTYPE_STAIRS_BOTTOM_S 84u
#define BLOCKTYPE_STAIRS_BOTTOM_W 85u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_N_W 86u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_N_E 87u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_S_W 88u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_S_E 89u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_N_W 90u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_N_E 91u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_S_W 92u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_S_E 93u
#define BLOCKTYPE_STAIRS_TOP_N 94u
#define BLOCKTYPE_STAIRS_TOP_E 95u
#define BLOCKTYPE_STAIRS_TOP_S 96u
#define BLOCKTYPE_STAIRS_TOP_W 97u
#define BLOCKTYPE_STAIRS_TOP_INNER_N_W 98u
#define BLOCKTYPE_STAIRS_TOP_INNER_N_E 99u
#define BLOCKTYPE_STAIRS_TOP_INNER_S_W 100u
#define BLOCKTYPE_STAIRS_TOP_INNER_S_E 101u
#define BLOCKTYPE_STAIRS_TOP_OUTER_N_W 102u
#define BLOCKTYPE_STAIRS_TOP_OUTER_N_E 103u
#define BLOCKTYPE_STAIRS_TOP_OUTER_S_W 104u
#define BLOCKTYPE_STAIRS_TOP_OUTER_S_E 105u

#define BLOCKTYPE_FENCE_POST 106u
#define BLOCKTYPE_FENCE_N 107u
#define BLOCKTYPE_FENCE_E 108u
#define BLOCKTYPE_FENCE_S 109u
#define BLOCKTYPE_FENCE_W 110u
#define BLOCKTYPE_FENCE_N_S 111u
#define BLOCKTYPE_FENCE_W_E 112u
#define BLOCKTYPE_FENCE_N_W 113u
#define BLOCKTYPE_FENCE_N_E 114u
#define BLOCKTYPE_FENCE_S_W 115u
#define BLOCKTYPE_FENCE_S_E 116u
#define BLOCKTYPE_FENCE_W_N_E 117u
#define BLOCKTYPE_FENCE_W_S_E 118u
#define BLOCKTYPE_FENCE_N_W_S 119u
#define BLOCKTYPE_FENCE_N_E_S 120u
#define BLOCKTYPE_FENCE_ALL 121u

#define BLOCKTYPE_FENCE_GATE_CLOSED_N_S 122u
#define BLOCKTYPE_FENCE_GATE_CLOSED_W_E 123u

#define BLOCKTYPE_WALL_POST 124u
#define BLOCKTYPE_WALL_POST_LOW_N 125u
#define BLOCKTYPE_WALL_POST_LOW_E 126u
#define BLOCKTYPE_WALL_POST_LOW_S 127u
#define BLOCKTYPE_WALL_POST_LOW_W 128u
#define BLOCKTYPE_WALL_POST_LOW_N_S 129u
#define BLOCKTYPE_WALL_POST_LOW_W_E 130u
#define BLOCKTYPE_WALL_POST_LOW_N_W 131u
#define BLOCKTYPE_WALL_POST_LOW_N_E 132u
#define BLOCKTYPE_WALL_POST_LOW_S_W 133u
#define BLOCKTYPE_WALL_POST_LOW_S_E 134u
#define BLOCKTYPE_WALL_POST_LOW_N_W_S 135u
#define BLOCKTYPE_WALL_POST_LOW_N_E_S 136u
#define BLOCKTYPE_WALL_POST_LOW_W_N_E 137u
#define BLOCKTYPE_WALL_POST_LOW_W_S_E 138u
#define BLOCKTYPE_WALL_POST_LOW_ALL 139u
#define BLOCKTYPE_WALL_POST_TALL_N 140u
#define BLOCKTYPE_WALL_POST_TALL_E 141u
#define BLOCKTYPE_WALL_POST_TALL_S 142u
#define BLOCKTYPE_WALL_POST_TALL_W 143u
#define BLOCKTYPE_WALL_POST_TALL_N_S 144u
#define BLOCKTYPE_WALL_POST_TALL_W_E 145u
#define BLOCKTYPE_WALL_POST_TALL_N_W 146u
#define BLOCKTYPE_WALL_POST_TALL_N_E 147u
#define BLOCKTYPE_WALL_POST_TALL_S_W 148u
#define BLOCKTYPE_WALL_POST_TALL_S_E 149u
#define BLOCKTYPE_WALL_POST_TALL_N_W_S 150u
#define BLOCKTYPE_WALL_POST_TALL_N_E_S 151u
#define BLOCKTYPE_WALL_POST_TALL_W_N_E 152u
#define BLOCKTYPE_WALL_POST_TALL_W_S_E 153u
#define BLOCKTYPE_WALL_POST_TALL_ALL 154u
#define BLOCKTYPE_WALL_LOW_N_S 155u
#define BLOCKTYPE_WALL_LOW_W_E 156u
#define BLOCKTYPE_WALL_TALL_N_S 157u
#define BLOCKTYPE_WALL_TALL_W_E 158u

#define BLOCKTYPE_CHORUS_DOWN 159u
#define BLOCKTYPE_CHORUS_UP_DOWN 160u
#define BLOCKTYPE_CHORUS_OTHER 161u

#define BLOCKTYPE_HONEY 162u
#define BLOCKTYPE_SLIME 163u
#define BLOCKTYPE_STAINED_GLASS_BLACK 164u
#define BLOCKTYPE_STAINED_GLASS_BLUE 165u
#define BLOCKTYPE_STAINED_GLASS_BROWN 166u
#define BLOCKTYPE_STAINED_GLASS_CYAN 167u
#define BLOCKTYPE_STAINED_GLASS_GRAY 168u
#define BLOCKTYPE_STAINED_GLASS_GREEN 169u
#define BLOCKTYPE_STAINED_GLASS_LIGHT_BLUE 170u
#define BLOCKTYPE_STAINED_GLASS_LIGHT_GRAY 171u
#define BLOCKTYPE_STAINED_GLASS_LIME 172u
#define BLOCKTYPE_STAINED_GLASS_MAGENTA 173u
#define BLOCKTYPE_STAINED_GLASS_ORANGE 174u
#define BLOCKTYPE_STAINED_GLASS_PINK 175u
#define BLOCKTYPE_STAINED_GLASS_PURPLE 176u
#define BLOCKTYPE_STAINED_GLASS_RED 177u
#define BLOCKTYPE_STAINED_GLASS_WHITE 178u
#define BLOCKTYPE_STAINED_GLASS_YELLOW 179u

#define BLOCKTYPE_LIGHT 255u

#define TEX_LIGHT_NOISE noisetex
