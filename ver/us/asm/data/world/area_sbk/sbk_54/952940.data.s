.include "macro.inc"

.section .data

glabel D_802403C0_952940
.word 0xFFFFFFBF, 0x00000000, 0x000000D9, 0xFFFFFEFA, 0x00000000, 0xFFFFFFC0, 0x00000039, 0x00000000, 0xFFFFFEE2, 0x00000147, 0x00000000, 0x00000008, 0x80000001

glabel D_802403F4_952974
.word D_802403C0_952940, 0xFFFFFFFF

glabel D_802403FC_95297C
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000003, GotoMap, 0x802404C0, 0x00000004, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000008, MakeEntity, 0x802BCA74, 0x00000147, 0x00000000, 0x00000008, 0x00000000, D_802403F4_952974, D_80000000, 0x00000043, 0x00000002, AssignScript, D_802403FC_95297C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
