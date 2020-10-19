.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_BA4780
/* BA4780 80240000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* BA4784 80240004 AFBF0010 */  sw        $ra, 0x10($sp)
/* BA4788 80240008 0C046ED4 */  jal       enable_world_fog
/* BA478C 8024000C 00000000 */   nop      
/* BA4790 80240010 240403DE */  addiu     $a0, $zero, 0x3de
/* BA4794 80240014 0C046EDD */  jal       set_world_fog_dist
/* BA4798 80240018 240503E8 */   addiu    $a1, $zero, 0x3e8
/* BA479C 8024001C 0000202D */  daddu     $a0, $zero, $zero
/* BA47A0 80240020 0080282D */  daddu     $a1, $a0, $zero
/* BA47A4 80240024 0080302D */  daddu     $a2, $a0, $zero
/* BA47A8 80240028 0C046EE2 */  jal       set_world_fog_color
/* BA47AC 8024002C 240700FF */   addiu    $a3, $zero, 0xff
/* BA47B0 80240030 0C048BFB */  jal       enable_entity_fog
/* BA47B4 80240034 00000000 */   nop      
/* BA47B8 80240038 240403DE */  addiu     $a0, $zero, 0x3de
/* BA47BC 8024003C 0C048C04 */  jal       set_entity_fog_dist
/* BA47C0 80240040 240503E8 */   addiu    $a1, $zero, 0x3e8
/* BA47C4 80240044 0000202D */  daddu     $a0, $zero, $zero
/* BA47C8 80240048 0080282D */  daddu     $a1, $a0, $zero
/* BA47CC 8024004C 0080302D */  daddu     $a2, $a0, $zero
/* BA47D0 80240050 0C048C0A */  jal       set_entity_fog_color
/* BA47D4 80240054 240700FF */   addiu    $a3, $zero, 0xff
/* BA47D8 80240058 8FBF0010 */  lw        $ra, 0x10($sp)
/* BA47DC 8024005C 24020002 */  addiu     $v0, $zero, 2
/* BA47E0 80240060 03E00008 */  jr        $ra
/* BA47E4 80240064 27BD0018 */   addiu    $sp, $sp, 0x18
/* BA47E8 80240068 00000000 */  nop       
/* BA47EC 8024006C 00000000 */  nop       
