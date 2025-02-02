.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_80242D60_918AD0
.double 32767.0

.section .text

glabel func_80240984_9166F4
/* 9166F4 80240984 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 9166F8 80240988 AFB20018 */  sw        $s2, 0x18($sp)
/* 9166FC 8024098C 0080902D */  daddu     $s2, $a0, $zero
/* 916700 80240990 AFBF001C */  sw        $ra, 0x1c($sp)
/* 916704 80240994 AFB10014 */  sw        $s1, 0x14($sp)
/* 916708 80240998 AFB00010 */  sw        $s0, 0x10($sp)
/* 91670C 8024099C 8E500148 */  lw        $s0, 0x148($s2)
/* 916710 802409A0 86040008 */  lh        $a0, 8($s0)
/* 916714 802409A4 0C00EABB */  jal       get_npc_unsafe
/* 916718 802409A8 00A0882D */   daddu    $s1, $a1, $zero
/* 91671C 802409AC 0040182D */  daddu     $v1, $v0, $zero
/* 916720 802409B0 9462008E */  lhu       $v0, 0x8e($v1)
/* 916724 802409B4 2442FFFF */  addiu     $v0, $v0, -1
/* 916728 802409B8 A462008E */  sh        $v0, 0x8e($v1)
/* 91672C 802409BC 00021400 */  sll       $v0, $v0, 0x10
/* 916730 802409C0 1C400015 */  bgtz      $v0, .L80240A18
/* 916734 802409C4 00000000 */   nop
/* 916738 802409C8 8E0200CC */  lw        $v0, 0xcc($s0)
/* 91673C 802409CC 8C420004 */  lw        $v0, 4($v0)
/* 916740 802409D0 AC620028 */  sw        $v0, 0x28($v1)
/* 916744 802409D4 8E0200D0 */  lw        $v0, 0xd0($s0)
/* 916748 802409D8 8C420014 */  lw        $v0, 0x14($v0)
/* 91674C 802409DC 04410004 */  bgez      $v0, .L802409F0
/* 916750 802409E0 00000000 */   nop
/* 916754 802409E4 C6200000 */  lwc1      $f0, ($s1)
/* 916758 802409E8 08090284 */  j         .L80240A10
/* 91675C 802409EC E4600018 */   swc1     $f0, 0x18($v1)
.L802409F0:
/* 916760 802409F0 3C018024 */  lui       $at, %hi(D_80242D60_918AD0)
/* 916764 802409F4 D4222D60 */  ldc1      $f2, %lo(D_80242D60_918AD0)($at)
/* 916768 802409F8 44820000 */  mtc1      $v0, $f0
/* 91676C 802409FC 00000000 */  nop
/* 916770 80240A00 46800021 */  cvt.d.w   $f0, $f0
/* 916774 80240A04 46220003 */  div.d     $f0, $f0, $f2
/* 916778 80240A08 46200020 */  cvt.s.d   $f0, $f0
/* 91677C 80240A0C E4600018 */  swc1      $f0, 0x18($v1)
.L80240A10:
/* 916780 80240A10 24020029 */  addiu     $v0, $zero, 0x29
/* 916784 80240A14 AE420070 */  sw        $v0, 0x70($s2)
.L80240A18:
/* 916788 80240A18 8FBF001C */  lw        $ra, 0x1c($sp)
/* 91678C 80240A1C 8FB20018 */  lw        $s2, 0x18($sp)
/* 916790 80240A20 8FB10014 */  lw        $s1, 0x14($sp)
/* 916794 80240A24 8FB00010 */  lw        $s0, 0x10($sp)
/* 916798 80240A28 03E00008 */  jr        $ra
/* 91679C 80240A2C 27BD0020 */   addiu    $sp, $sp, 0x20
