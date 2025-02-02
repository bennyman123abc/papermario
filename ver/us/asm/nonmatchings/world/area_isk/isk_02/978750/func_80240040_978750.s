.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240040_978750
/* 978750 80240040 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 978754 80240044 AFB10014 */  sw        $s1, 0x14($sp)
/* 978758 80240048 0080882D */  daddu     $s1, $a0, $zero
/* 97875C 8024004C AFBF0018 */  sw        $ra, 0x18($sp)
/* 978760 80240050 AFB00010 */  sw        $s0, 0x10($sp)
/* 978764 80240054 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 978768 80240058 8E30000C */  lw        $s0, 0xc($s1)
/* 97876C 8024005C 8E050000 */  lw        $a1, ($s0)
/* 978770 80240060 0C0B1EAF */  jal       evt_get_variable
/* 978774 80240064 26100004 */   addiu    $s0, $s0, 4
/* 978778 80240068 8E050000 */  lw        $a1, ($s0)
/* 97877C 8024006C 4482A000 */  mtc1      $v0, $f20
/* 978780 80240070 00000000 */  nop
/* 978784 80240074 4680A520 */  cvt.s.w   $f20, $f20
/* 978788 80240078 0C0B1EAF */  jal       evt_get_variable
/* 97878C 8024007C 0220202D */   daddu    $a0, $s1, $zero
/* 978790 80240080 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 978794 80240084 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 978798 80240088 8C660028 */  lw        $a2, 0x28($v1)
/* 97879C 8024008C 8C670030 */  lw        $a3, 0x30($v1)
/* 9787A0 80240090 44827000 */  mtc1      $v0, $f14
/* 9787A4 80240094 00000000 */  nop
/* 9787A8 80240098 468073A0 */  cvt.s.w   $f14, $f14
/* 9787AC 8024009C 0C00A7B5 */  jal       dist2D
/* 9787B0 802400A0 4600A306 */   mov.s    $f12, $f20
/* 9787B4 802400A4 3C01437A */  lui       $at, 0x437a
/* 9787B8 802400A8 44811000 */  mtc1      $at, $f2
/* 9787BC 802400AC 00000000 */  nop
/* 9787C0 802400B0 4600103C */  c.lt.s    $f2, $f0
/* 9787C4 802400B4 00000000 */  nop
/* 9787C8 802400B8 45000003 */  bc1f      .L802400C8
/* 9787CC 802400BC 24020001 */   addiu    $v0, $zero, 1
/* 9787D0 802400C0 08090033 */  j         .L802400CC
/* 9787D4 802400C4 AE200084 */   sw       $zero, 0x84($s1)
.L802400C8:
/* 9787D8 802400C8 AE220084 */  sw        $v0, 0x84($s1)
.L802400CC:
/* 9787DC 802400CC 8FBF0018 */  lw        $ra, 0x18($sp)
/* 9787E0 802400D0 8FB10014 */  lw        $s1, 0x14($sp)
/* 9787E4 802400D4 8FB00010 */  lw        $s0, 0x10($sp)
/* 9787E8 802400D8 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 9787EC 802400DC 24020002 */  addiu     $v0, $zero, 2
/* 9787F0 802400E0 03E00008 */  jr        $ra
/* 9787F4 802400E4 27BD0028 */   addiu    $sp, $sp, 0x28
/* 9787F8 802400E8 00000000 */  nop
/* 9787FC 802400EC 00000000 */  nop
