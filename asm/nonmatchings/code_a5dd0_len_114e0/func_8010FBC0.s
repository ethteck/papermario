.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8010FBC0
/* A62C0 8010FBC0 AC850018 */  sw        $a1, 0x18($a0)
/* A62C4 8010FBC4 00A0182D */  daddu     $v1, $a1, $zero
/* A62C8 8010FBC8 24020001 */  addiu     $v0, $zero, 1
/* A62CC 8010FBCC A0820009 */  sb        $v0, 9($a0)
/* A62D0 8010FBD0 03E00008 */  jr        $ra
/* A62D4 8010FBD4 AC83002C */   sw       $v1, 0x2c($a0)
