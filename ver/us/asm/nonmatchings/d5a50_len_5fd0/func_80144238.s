.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80144238
/* DA938 80144238 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* DA93C 8014423C 0000282D */  daddu     $a1, $zero, $zero
/* DA940 80144240 AFBF0010 */  sw        $ra, 0x10($sp)
/* DA944 80144244 0C050F12 */  jal       func_80143C48
/* DA948 80144248 24060003 */   addiu    $a2, $zero, 3
/* DA94C 8014424C 8FBF0010 */  lw        $ra, 0x10($sp)
/* DA950 80144250 03E00008 */  jr        $ra
/* DA954 80144254 27BD0018 */   addiu    $sp, $sp, 0x18
