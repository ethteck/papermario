.include "macro.inc"

.section .data

glabel D_E0078900
.word 0x09001400, 0x090014B8, 0x09001570, 0x09001618, 0x090016C0, 0x09001570

glabel D_E0078918
.word 0x00000080, 0x00000080, 0x3F000000, 0x3F000000, 0x00000040, 0x00000004, 0x00000040, 0x00000040, 0x40000000, 0x40000000, 0x00000020, 0x00000010, 0x00000040, 0x00000040, 0x3F800000, 0x3F800000, 0x00000040, 0x00000008, 0x00000040, 0x00000040, 0x40000000, 0x40000000, 0x00000010, 0x00000010, 0x00000040, 0x00000040, 0x3F800000, 0x3F800000, 0x00000020, 0x00000010, 0x00000040, 0x00000040, 0x3F800000, 0x3F800000, 0x00000040, 0x00000008

glabel D_E00789A8
.word 0x00000000

glabel D_E00789AC
.word 0xFFFFFFFF, 0xFF80FF80, 0xFF80FFFF, 0xFF808080, 0xFF808080, 0xFF000000, 0x00000000, 0x00000000, 0x00000000

glabel D_E00789D0
.double 0.6, 0.0
