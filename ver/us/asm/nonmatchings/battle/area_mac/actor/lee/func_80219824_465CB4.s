.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel jtbl_80232B40_47EFD0
.word L80219878_465D08, L80219884_465D14, L80219890_465D20, L8021989C_465D2C, L802198D4_465D64, L802198B4_465D44, L802198C0_465D50, L802198CC_465D5C, L802198A8_465D38, 0, 0, 0

.section .text

glabel func_80219824_465CB4
/* 465CB4 80219824 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 465CB8 80219828 AFB00010 */  sw        $s0, 0x10($sp)
/* 465CBC 8021982C 0080802D */  daddu     $s0, $a0, $zero
/* 465CC0 80219830 AFBF0014 */  sw        $ra, 0x14($sp)
/* 465CC4 80219834 8E02000C */  lw        $v0, 0xc($s0)
/* 465CC8 80219838 0C0B1EAF */  jal       evt_get_variable
/* 465CCC 8021983C 8C450000 */   lw       $a1, ($v0)
/* 465CD0 80219840 8E040148 */  lw        $a0, 0x148($s0)
/* 465CD4 80219844 0C09A75B */  jal       get_actor
/* 465CD8 80219848 0040802D */   daddu    $s0, $v0, $zero
/* 465CDC 8021984C 0040182D */  daddu     $v1, $v0, $zero
/* 465CE0 80219850 2610FFFF */  addiu     $s0, $s0, -1
/* 465CE4 80219854 2E020009 */  sltiu     $v0, $s0, 9
/* 465CE8 80219858 1040001E */  beqz      $v0, L802198D4_465D64
/* 465CEC 8021985C 0000202D */   daddu    $a0, $zero, $zero
/* 465CF0 80219860 00101080 */  sll       $v0, $s0, 2
/* 465CF4 80219864 3C018023 */  lui       $at, %hi(jtbl_80232B40_47EFD0)
/* 465CF8 80219868 00220821 */  addu      $at, $at, $v0
/* 465CFC 8021986C 8C222B40 */  lw        $v0, %lo(jtbl_80232B40_47EFD0)($at)
/* 465D00 80219870 00400008 */  jr        $v0
/* 465D04 80219874 00000000 */   nop
dlabel L80219878_465D08
/* 465D08 80219878 3C048022 */  lui       $a0, %hi(b_area_mac_lee_formation_goombario)
/* 465D0C 8021987C 08086635 */  j         L802198D4_465D64
/* 465D10 80219880 24840524 */   addiu    $a0, $a0, %lo(b_area_mac_lee_formation_goombario)
dlabel L80219884_465D14
/* 465D14 80219884 3C048022 */  lui       $a0, %hi(b_area_mac_lee_formation_kooper)
/* 465D18 80219888 08086635 */  j         L802198D4_465D64
/* 465D1C 8021988C 24842274 */   addiu    $a0, $a0, %lo(b_area_mac_lee_formation_kooper)
dlabel L80219890_465D20
/* 465D20 80219890 3C048022 */  lui       $a0, %hi(b_area_mac_lee_formation_bombette)
/* 465D24 80219894 08086635 */  j         L802198D4_465D64
/* 465D28 80219898 2484336C */   addiu    $a0, $a0, %lo(b_area_mac_lee_formation_bombette)
dlabel L8021989C_465D2C
/* 465D2C 8021989C 3C048022 */  lui       $a0, %hi(b_area_mac_lee_formation_parakerry)
/* 465D30 802198A0 08086635 */  j         L802198D4_465D64
/* 465D34 802198A4 248443F4 */   addiu    $a0, $a0, %lo(b_area_mac_lee_formation_parakerry)
dlabel L802198A8_465D38
/* 465D38 802198A8 3C048022 */  lui       $a0, %hi(b_area_mac_lee_formation_bow)
/* 465D3C 802198AC 08086635 */  j         L802198D4_465D64
/* 465D40 802198B0 24845958 */   addiu    $a0, $a0, %lo(b_area_mac_lee_formation_bow)
dlabel L802198B4_465D44
/* 465D44 802198B4 3C048022 */  lui       $a0, %hi(b_area_mac_lee_formation_watt)
/* 465D48 802198B8 08086635 */  j         L802198D4_465D64
/* 465D4C 802198BC 24846960 */   addiu    $a0, $a0, %lo(b_area_mac_lee_formation_watt)
dlabel L802198C0_465D50
/* 465D50 802198C0 3C048023 */  lui       $a0, %hi(b_area_mac_lee_formation_sushie)
/* 465D54 802198C4 08086635 */  j         L802198D4_465D64
/* 465D58 802198C8 248483F0 */   addiu    $a0, $a0, %lo(b_area_mac_lee_formation_sushie)
dlabel L802198CC_465D5C
/* 465D5C 802198CC 3C048023 */  lui       $a0, %hi(b_area_mac_lee_formation_lakilester)
/* 465D60 802198D0 2484972C */  addiu     $a0, $a0, %lo(b_area_mac_lee_formation_lakilester)
dlabel L802198D4_465D64
/* 465D64 802198D4 806301F1 */  lb        $v1, 0x1f1($v1)
/* 465D68 802198D8 2463000A */  addiu     $v1, $v1, 0xa
/* 465D6C 802198DC AC830008 */  sw        $v1, 8($a0)
/* 465D70 802198E0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 465D74 802198E4 8FB00010 */  lw        $s0, 0x10($sp)
/* 465D78 802198E8 24020002 */  addiu     $v0, $zero, 2
/* 465D7C 802198EC 03E00008 */  jr        $ra
/* 465D80 802198F0 27BD0018 */   addiu    $sp, $sp, 0x18
/* 465D84 802198F4 00000000 */  nop
/* 465D88 802198F8 00000000 */  nop
/* 465D8C 802198FC 00000000 */  nop
