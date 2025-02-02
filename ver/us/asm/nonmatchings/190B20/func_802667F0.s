.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel jtbl_8029D640
.word .L80266844_195124, .L80266854_195134, .L80266860_195140, .L8026686C_19514C, .L80266878_195158, .L802668F8_1951D8

dlabel jtbl_8029D658
.word .L802668B0_195190, .L802668D8_1951B8, .L802668E0_1951C0, .L802668E8_1951C8, .L802668F0_1951D0, .L802668F8_1951D8

.section .text

glabel func_802667F0
/* 1950D0 802667F0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1950D4 802667F4 44860000 */  mtc1      $a2, $f0
/* 1950D8 802667F8 44871000 */  mtc1      $a3, $f2
/* 1950DC 802667FC AFB00018 */  sw        $s0, 0x18($sp)
/* 1950E0 80266800 00A0802D */  daddu     $s0, $a1, $zero
/* 1950E4 80266804 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1950E8 80266808 8E020200 */  lw        $v0, 0x200($s0)
/* 1950EC 8026680C C7A40030 */  lwc1      $f4, 0x30($sp)
/* 1950F0 80266810 3C05800E */  lui       $a1, %hi(gBattleStatus+0xD8)
/* 1950F4 80266814 8CA5C148 */  lw        $a1, %lo(gBattleStatus+0xD8)($a1)
/* 1950F8 80266818 1440001A */  bnez      $v0, .L80266884
/* 1950FC 8026681C 0080182D */   daddu    $v1, $a0, $zero
/* 195100 80266820 2C620006 */  sltiu     $v0, $v1, 6
/* 195104 80266824 1040003E */  beqz      $v0, .L80266920
/* 195108 80266828 0000202D */   daddu    $a0, $zero, $zero
/* 19510C 8026682C 00031080 */  sll       $v0, $v1, 2
/* 195110 80266830 3C01802A */  lui       $at, %hi(jtbl_8029D640)
/* 195114 80266834 00220821 */  addu      $at, $at, $v0
/* 195118 80266838 8C22D640 */  lw        $v0, %lo(jtbl_8029D640)($at)
/* 19511C 8026683C 00400008 */  jr        $v0
/* 195120 80266840 00000000 */   nop
.L80266844_195124:
/* 195124 80266844 0000202D */  daddu     $a0, $zero, $zero
/* 195128 80266848 24020001 */  addiu     $v0, $zero, 1
/* 19512C 8026684C 08099A48 */  j         .L80266920
/* 195130 80266850 A2020204 */   sb       $v0, 0x204($s0)
.L80266854_195134:
/* 195134 80266854 24040004 */  addiu     $a0, $zero, 4
/* 195138 80266858 08099A48 */  j         .L80266920
/* 19513C 8026685C A2000204 */   sb       $zero, 0x204($s0)
.L80266860_195140:
/* 195140 80266860 24040003 */  addiu     $a0, $zero, 3
/* 195144 80266864 08099A48 */  j         .L80266920
/* 195148 80266868 A2000204 */   sb       $zero, 0x204($s0)
.L8026686C_19514C:
/* 19514C 8026686C 24040002 */  addiu     $a0, $zero, 2
/* 195150 80266870 08099A48 */  j         .L80266920
/* 195154 80266874 A2040204 */   sb       $a0, 0x204($s0)
.L80266878_195158:
/* 195158 80266878 0000202D */  daddu     $a0, $zero, $zero
/* 19515C 8026687C 08099A48 */  j         .L80266920
/* 195160 80266880 A2000204 */   sb       $zero, 0x204($s0)
.L80266884:
/* 195164 80266884 8C42000C */  lw        $v0, 0xc($v0)
/* 195168 80266888 AC400018 */  sw        $zero, 0x18($v0)
/* 19516C 8026688C 2C620006 */  sltiu     $v0, $v1, 6
/* 195170 80266890 82040204 */  lb        $a0, 0x204($s0)
/* 195174 80266894 10400022 */  beqz      $v0, .L80266920
/* 195178 80266898 00031080 */   sll      $v0, $v1, 2
/* 19517C 8026689C 3C01802A */  lui       $at, %hi(jtbl_8029D658)
/* 195180 802668A0 00220821 */  addu      $at, $at, $v0
/* 195184 802668A4 8C22D658 */  lw        $v0, %lo(jtbl_8029D658)($at)
/* 195188 802668A8 00400008 */  jr        $v0
/* 19518C 802668AC 00000000 */   nop
.L802668B0_195190:
/* 195190 802668B0 92020204 */  lbu       $v0, 0x204($s0)
/* 195194 802668B4 24420001 */  addiu     $v0, $v0, 1
/* 195198 802668B8 A2020204 */  sb        $v0, 0x204($s0)
/* 19519C 802668BC 00021600 */  sll       $v0, $v0, 0x18
/* 1951A0 802668C0 00021603 */  sra       $v0, $v0, 0x18
/* 1951A4 802668C4 28420003 */  slti      $v0, $v0, 3
/* 1951A8 802668C8 14400015 */  bnez      $v0, .L80266920
/* 1951AC 802668CC 24020002 */   addiu    $v0, $zero, 2
/* 1951B0 802668D0 08099A48 */  j         .L80266920
/* 1951B4 802668D4 A2020204 */   sb       $v0, 0x204($s0)
.L802668D8_1951B8:
/* 1951B8 802668D8 08099A48 */  j         .L80266920
/* 1951BC 802668DC 24040004 */   addiu    $a0, $zero, 4
.L802668E0_1951C0:
/* 1951C0 802668E0 08099A48 */  j         .L80266920
/* 1951C4 802668E4 24040003 */   addiu    $a0, $zero, 3
.L802668E8_1951C8:
/* 1951C8 802668E8 08099A48 */  j         .L80266920
/* 1951CC 802668EC 24040002 */   addiu    $a0, $zero, 2
.L802668F0_1951D0:
/* 1951D0 802668F0 08099A48 */  j         .L80266920
/* 1951D4 802668F4 0000202D */   daddu    $a0, $zero, $zero
.L802668F8_1951D8:
/* 1951D8 802668F8 90A20204 */  lbu       $v0, 0x204($a1)
/* 1951DC 802668FC 80A40204 */  lb        $a0, 0x204($a1)
/* 1951E0 80266900 24420001 */  addiu     $v0, $v0, 1
/* 1951E4 80266904 A0A20204 */  sb        $v0, 0x204($a1)
/* 1951E8 80266908 00021600 */  sll       $v0, $v0, 0x18
/* 1951EC 8026690C 00021603 */  sra       $v0, $v0, 0x18
/* 1951F0 80266910 28420003 */  slti      $v0, $v0, 3
/* 1951F4 80266914 14400002 */  bnez      $v0, .L80266920
/* 1951F8 80266918 24020002 */   addiu    $v0, $zero, 2
/* 1951FC 8026691C A0A20204 */  sb        $v0, 0x204($a1)
.L80266920:
/* 195200 80266920 44050000 */  mfc1      $a1, $f0
/* 195204 80266924 3C014120 */  lui       $at, 0x4120
/* 195208 80266928 44810000 */  mtc1      $at, $f0
/* 19520C 8026692C 00000000 */  nop
/* 195210 80266930 46002101 */  sub.s     $f4, $f4, $f0
/* 195214 80266934 44061000 */  mfc1      $a2, $f2
/* 195218 80266938 3C014140 */  lui       $at, 0x4140
/* 19521C 8026693C 44810000 */  mtc1      $at, $f0
/* 195220 80266940 44072000 */  mfc1      $a3, $f4
/* 195224 80266944 2402005A */  addiu     $v0, $zero, 0x5a
/* 195228 80266948 AFA20014 */  sw        $v0, 0x14($sp)
/* 19522C 8026694C 0C01C4E4 */  jal       fx_attack_result_text
/* 195230 80266950 E7A00010 */   swc1     $f0, 0x10($sp)
/* 195234 80266954 AE020200 */  sw        $v0, 0x200($s0)
/* 195238 80266958 24020050 */  addiu     $v0, $zero, 0x50
/* 19523C 8026695C A2020205 */  sb        $v0, 0x205($s0)
/* 195240 80266960 8FBF001C */  lw        $ra, 0x1c($sp)
/* 195244 80266964 8FB00018 */  lw        $s0, 0x18($sp)
/* 195248 80266968 03E00008 */  jr        $ra
/* 19524C 8026696C 27BD0020 */   addiu    $sp, $sp, 0x20
