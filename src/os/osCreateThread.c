#include "common.h"

INCLUDE_ASM(void, "os/osCreateThread", osCreateThread, OSThread* thread, OSId id, void (*entrypoint)(void*),
            void* unk1,
            void* unk2, OSPri pri);
