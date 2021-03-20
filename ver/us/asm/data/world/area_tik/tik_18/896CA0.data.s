.include "macro.inc"

.section .data

glabel D_802415C0_896CA0
.word 0x400CCCCD, 0x00000000, 0x00000000, 0x428C0000, 0x00000000, 0x00000001, 0x404CCCCD, 0x0000000F, 0x00000001, 0x42B40000, 0x00000000, 0x00000001, 0x00000043, 0x00000002, DoBasicAI, D_802415C0_896CA0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00140017, 0x00000000, 0x00000000, 0x802415F0, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000B0000, 0x400CCCCD, 0x00000000, 0x00000000, 0x428C0000, 0x00000000, 0x00000001, 0x404CCCCD, 0x0000000F, 0x00000001, 0x42B40000, 0x00000000, 0x00000001, 0x00000043, 0x00000002, DoBasicAI, 0x8024163C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00170017, 0x00000000, 0x00000000, 0x8024166C, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000C0000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x0027010A, 0x00000056, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x000003E1, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0xFFFFFFA6, 0x00000000, 0x0000000A, 0x00000000, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, SetNpcRotation, 0xFFFFFFFF, 0xFE363C80, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C8A, 0xFE363C8B, 0xFE363C8C, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000168, 0x0000000F, 0x00000000, 0x00000003, 0x00000001, 0x00000002, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, SetNpcRotation, 0xFFFFFFFF, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000002, 0x00000013, 0x00000000, 0x00000043, 0x00000005, SetNpcRotation, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetNpcJumpscale, 0xFFFFFFFF, 0xF24A7D4D, 0x00000043, 0x00000006, NpcJump0, 0xFFFFFFFF, 0x000000BE, 0xFFFFFFF6, 0xFFFFFFF6, 0x00000019, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x0027010B, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00270101, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x8024166C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000096, 0x0000004C, 0xFFFFFFC1, 0x00000043, 0x00000005, SetNpcRotation, 0xFFFFFFFF, 0xFFFFFFAB, 0x00000000, 0x00000000, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x802416B8, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x80241610, 0xC2700000, 0xC1200000, 0xC1F00000, 0x00002C00, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, 0x8014009A, 0x00050000, 0x008F0005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00020000, 0xFFFFFFC4, 0xFFFFFFF6, 0xFFFFFFE2, 0x0000001E, 0x00000000, 0xFFFF8001, 0x00000000, 0xFFFFFFC4, 0xFFFFFFF6, 0xFFFFFFE2, 0x000000C8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00260401, 0x00260403, 0x00260403, 0x00260403, 0x00260403, 0x00260401, 0x00260405, 0x00260405, 0x00260400, 0x00260400, 0x00260400, 0x00260400, 0x00260400, 0x00260400, 0x00260400, 0x00260400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x8024168C, 0x41F00000, 0xC1200000, 0xC1A00000, 0x00002C00, 0x80241908, 0x00000000, 0x00000000, 0x0000010E, 0x8014009A, 0x00050000, 0x008F0005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00020000, 0x0000001E, 0xFFFFFFF6, 0xFFFFFFEC, 0x0000001E, 0x00000000, 0xFFFF8001, 0x00000000, 0x0000001E, 0xFFFFFFF6, 0xFFFFFFEC, 0x000000C8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00270101, 0x00270103, 0x00270103, 0x00270103, 0x00270103, 0x00270101, 0x00270105, 0x00270105, 0x00270100, 0x00270100, 0x00270100, 0x00270100, 0x00270100, 0x00270100, 0x00270100, 0x00270100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x80241964, 0x1A0A0001, 0x00000001, 0x80241B54, 0x1A0E0001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
