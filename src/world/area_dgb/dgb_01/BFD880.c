#include "dgb_01.h"
#include "ld_addrs.h"

ApiStatus N(func_80240000_BFD880)(void) {
    dma_copy(&code_code_C20F40_ROM_START, &code_code_C20F40_ROM_END, &gBackgroundImage);
    return ApiStatus_DONE2;
}
