.include "macro.inc"

.section .data

glabel D_80246280_C609C0
.word 0x00000043, 0x00000003, DemoJoystickXY, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000002, DemoSetButtons, 0x00008000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, DemoSetButtons, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, DemoSetButtons, 0x00008000, 0x00000008, 0x00000001, 0x00000007, 0x00000043, 0x00000002, DemoSetButtons, 0x00000000, 0x00000008, 0x00000001, 0x0000001A, 0x00000043, 0x00000002, DemoSetButtons, 0x00008000, 0x00000008, 0x00000001, 0x00000006, 0x00000043, 0x00000002, DemoSetButtons, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, DemoSetButtons, 0x00008000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, DemoSetButtons, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x0000000A, 0x00000002, 0xF8405B89, 0x00000001, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xF8405B89, 0x00000001, 0x00000043, 0x00000004, GotoMapSpecial, 0x802465C0, 0x00000002, 0x00000002, 0x00000008, 0x00000001, 0x0000006E, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802463E4_C60B24
.word 0x00000008, 0x00000001, 0x0000000A, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetDemoState, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000002, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x0000000A, 0x00000002, 0xF8405B89, 0x00000001, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xF8405B89, 0x00000001, 0x00000043, 0x00000004, GotoMapSpecial, 0x802465C0, 0x00000002, 0x00000003, 0x00000008, 0x00000001, 0x0000000A, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802464A4_C60BE4
.word 0x00000000, 0x00000043, 0x00000001, func_80242730_C5CE70, 0x00000024, 0x00000002, 0xF8405B89, 0x00000000, 0x00000044, 0x00000001, D_802463E4_C60B24, 0x00000044, 0x00000001, D_80246280_C609C0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
